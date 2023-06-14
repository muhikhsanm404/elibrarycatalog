<?php

include("includes/header.php");
include("USER_PERMISSIONS.php");

if (is_admin()) {
	header('Location: admin/index.php');
}

if (is_authenticated()) {
	header('Location: dashboard.php');
}

include("includes/conn.php");

if ($_SERVER['REQUEST_METHOD'] == "POST") {

	$name = $_POST['name'];
	$email = $_POST['email'];
	$password = md5($_POST['password']);
	$mobile = $_POST['mobile'];
	$address = $_POST['address'];

	$sql = "INSERT INTO users (name, email, password, mobile, address, is_admin)
	VALUES ('$name', '$email', '$password', '$mobile', '$address', 0);";

	$result = mysqli_query($conn, $sql);

	if ($result) {
		echo '<script> alert("User Added Successfully"); </script>';
		echo '<script> window.location.href = "login.php"; </script>';
	} else {
		echo '<script> alert("User Added Failed"); </script>';
	}
}

include("includes/navbar.php");
?>

<div class="container mt-3 rounded border shadow p-3" style="width:300px;">
	<h3 class=text-center>Pendaftaran Akun Formulir</h3>

	<form action="" method="post">
		<div class="form-group mb-2">
			<label for="name">Nama Lengkap :</label>
			<input type="text" name="name" class="form-control" required>
		</div>
		<div class="form-group mb-2">
			<label for="name">Email:</label>
			<input type="text" name="email" class="form-control" required>
		</div>
		<div class="form-group mb-2">
			<label for="name">Password:</label>
			<input type="password" name="password" class="form-control" required>
		</div>
		<div class="form-group mb-2">
			<label for="name">No HP:</label>
			<input type="text" name="mobile" class="form-control" required>
		</div>
		<div class="form-group mb-2">
			<label for="name">Alamat:</label>
			<textarea rows="3" cols="40" class="form-control" name="address"></textarea>
		</div>
		<div class="form-group mb-2 text-center">
			<button type="submit" class="btn btn-primary" style="background-color:#710a0a; color:#fff; border:none;">Register</button>
		</div>
	</form>

</div>

<?php
include("includes/footer.php");
?>