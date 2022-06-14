<?php
include("includes/header.php");
include("USER_PERMISSIONS.php");

if (is_admin()) {
	header('Location: admin/change_password.php');
}

if (!is_authenticated()) {
	header('Location: login.php');
}

include("includes/navbar.php");
?>

<?php
include("includes/conn.php");

$user_id = $_SESSION['id'];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

	$old = md5($_POST['old_password']);
	$new = md5($_POST['new_password']);

	$sql = "SELECT * FROM users WHERE id = '$user_id';";

	$result = mysqli_query($conn, $sql);

	$row = mysqli_fetch_assoc($result);

	if($row['password'] == $old) {

		$sql = "UPDATE users SET password = '$new' WHERE id = '$user_id';";

		$result = mysqli_query($conn, $sql);

		if ($result) {
			echo '<script> alert("Password Updated Successfully"); </script>';
			echo '<script> window.location.href = "dashboard.php"; </script>';
		} else {
			echo '<script> alert("Password Updated Failed"); </script>';
		}

	} else {
		echo '<script> alert("Old Password is Wrong"); </script>';
	}

}
?>
	
<div class="container my-4 rounded border shadow p-3" style="width:400px;">
	<form action="" method="post">
		<div class="form-group mb-2">
			<label>Enter Current Password:</label>
			<input type="password" name="old_password" class="form-control">
		</div>
		<div class="form-group mb-2">
			<label>Enter New Password:</label>
			<input type="password" name="new_password" class="form-control">
		</div>
		<button  type="submit" name="update" class="btn custom-bg">Update Profile</button>
	</form>
</div>

<?php
include("includes/footer.php");
?>