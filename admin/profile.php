<?php
include("includes/header.php");
include("../USER_PERMISSIONS.php");

if (!is_admin()) {
	header("Location: ../profile.php");
}

include("includes/navbar.php");

include("includes/conn.php");

$user_id = $_SESSION['id'];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

	$name = $_POST['name'];
	$email = $_POST['email'];
	$mobile = $_POST['mobile'];
	$address = $_POST['address'];

	$sql = "UPDATE users SET name = '$name', email = '$email', mobile = '$mobile', address = '$address' WHERE id = '$user_id';";

	$result = mysqli_query($conn, $sql);

	if ($result) {
		echo '<script> alert("Profile Updated Successfully"); </script>';
		echo '<script> window.location.href = "dashboard.php"; </script>';
	} else {
		echo '<script> alert("Profile Updated Failed"); </script>';
	}

}

$sql = "SELECT * FROM users WHERE id = '$user_id';";

$result = mysqli_query($conn, $sql);

$row = mysqli_fetch_assoc($result);
?>
	
<div class="container my-4 rounded border shadow p-3" style="width:400px;">
	<form action="" method="post">
		<div class="form-group">
			<label>Name:</label>
			<input type="text" class="form-control" value="<?php echo $row['name']; ?>" name="name">
		</div>
		<div class="form-group">
			<label>Email:</label>
			<input type="text" class="form-control" value="<?php echo $row['email']; ?>" name="email">
		</div>
		<div class="form-group">
			<label>Mobile:</label>
			<input type="text" class="form-control" value="<?php echo $row['mobile']; ?>" name="mobile">
		</div>
		<div class="form-group">
			<label>Address:</label>
			<textarea rows="3" cols="40" name="address" class="form-control"><?php echo $row['address']; ?></textarea>
		</div>
		<button  type="submit" name="update" class="btn custom-bg">Update Profile</button>
	</form>
</div>

<?php
include("includes/footer.php");
?>