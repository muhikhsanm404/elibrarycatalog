<?php
#login file
#code starts here
include("includes/header.php");
include("USER_PERMISSIONS.php");

if (is_admin()) {
	header('Location: admin/index.php');
}

if (is_authenticated()) {
	header('Location: dashboard.php');
}
?>

<?php
	if(isset($_POST['login'])){

		include("includes/conn.php");

		$query = "select * from users where email = '$_POST[email]'";

		$query_run = mysqli_query($conn, $query);

		$row = mysqli_fetch_assoc($query_run);

		$err = null;

		if ($row) {

			if($row['password'] == md5($_POST['password'])) {
				$_SESSION['id'] = $row['id'];

				if ($row['is_admin']) {
					$_SESSION['is_admin'] = 1;
				} else {
					$_SESSION['is_admin'] = 0;
				}

				if (isset($_GET['next'])) {
					header('Location: '.$_GET['next']);
				} else {
					echo '<script> alert("Login Successful"); </script>';
					echo '<script> window.location.href = "dashboard.php"; </script>';
				}

			} else {
				$err = "Wrong Password.";
			}

		} else {
			$err = "Wrong Email.";
		}

	}
?>

<?php
include("includes/navbar.php");
?>

<div class="container my-5 rounded border shadow p-3" style="width:400px;">
<h3 class=text-center>Login Form</h3>

<?php

if (isset($err)) {
	?>

	<div class="alert alert-danger text-center"><?php echo $err; ?></div>

	<?php
}

?>

<form action="" method="post">
	<div class="form-group mb-2">
		<label for="name">Email ID:</label>
		<input type="text" name="email" class="form-control" required>
	</div>
	<div class="form-group mb-2">
		<label for="name">Password:</label>
		<input type="password" name="password" class="form-control" required>
	</div>

	<?php
	if (isset($_GET['next'])) {
		$next = $_GET['next'];
		echo "<input type='hidden' name='next' value='$next'>";
	}
	?>

	<div class="form-group mb-2 text-center">
		<button type="submit" name="login" class="btn btn-primary" style="background-color:#27445C; color:#FF8B3D; border:none;">Login</button>
	</div>
</form>

</div>
			
<?php
include("includes/footer.php");
?>
