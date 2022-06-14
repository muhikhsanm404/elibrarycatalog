<?php
include("includes/header.php");
include("../USER_PERMISSIONS.php");

if (!is_admin()) {
	header("Location: ../index.php");
}

include("includes/navbar.php");
include("includes/conn.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    if (isset($_POST['delete'])) {
        $user_id = $_POST['user_id'];

        $sql = "DELETE FROM users WHERE id = '$user_id';";

        $result = mysqli_query($conn, $sql);

        if ($result) {
            echo '<script> alert("User Deleted Successfully"); </script>';
            echo '<script> window.location.href = "users.php"; </script>';
        } else {
            echo '<script> alert("User Deleted Failed"); </script>';
        }
    }

    if (isset($_POST['update'])) {
        $user_id = $_POST['user_id'];
        $name = $_POST['name'];
        $email = $_POST['email'];
        $mobile = $_POST['mobile'];
        $address = $_POST['address'];
        $is_admin = $_POST['is_admin'];

        $sql = "UPDATE users SET name = '$name', email = '$email', mobile = '$mobile', address = '$address', is_admin = '$is_admin' WHERE id = '$user_id';";
        
        $result = mysqli_query($conn, $sql);

        if ($result) {
            echo '<script> alert("User Updated Successfully"); </script>';
            echo '<script> window.location.href = "users.php"; </script>';
        } else {
            echo '<script> alert("User Updated Failed"); </script>';
        }
    }

    if (isset($_POST['add'])) {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $password = md5($_POST['password']);
        $mobile = $_POST['mobile'];
        $address = $_POST['address'];
        $is_admin = $_POST['is_admin'];

        $sql = "INSERT INTO users (name, email, password, mobile, address, is_admin) VALUES ('$name', '$email', '$password', '$mobile', '$address', '$is_admin');";

        $result = mysqli_query($conn, $sql);

        if ($result) {
            echo '<script> alert("User Added Successfully"); </script>';
            echo '<script> window.location.href = "users.php"; </script>';
        } else {
            echo '<script> alert("User Added Failed"); </script>';
        }
    }
}
?>

<div class="container">

<div class="row">

<div class="col-3">
<?php include("includes/sidebar.php"); ?>
</div>

<div class="col-9">

<?php

if (isset($_GET['id'])) {

    $user_id = $_GET['id'];

    $sql = "SELECT * FROM users WHERE id = '$user_id';";

    $result = mysqli_query($conn, $sql);
    
    $row = mysqli_fetch_assoc($result);

?>

<form action="" method="post">
	<div class="form-group mb-2">
		<label>ID:</label>
		<input type="number" class="form-control" value="<?php echo $row['id']; ?>" name="user_id" readonly>
	</div>
	<div class="form-group mb-2">
		<label>Name:</label>
		<input type="text" class="form-control" value="<?php echo $row['name']; ?>" name="name">
	</div>
	<div class="form-group mb-2">
		<label>Email:</label>
		<input type="text" class="form-control" value="<?php echo $row['email']; ?>" name="email">
	</div>
	<div class="form-group mb-2">
		<label>Mobile:</label>
		<input type="text" class="form-control" value="<?php echo $row['mobile']; ?>" name="mobile">
	</div>
	<div class="form-group mb-2">
		<label>Address:</label>
		<textarea rows="3" cols="40" name="address" class="form-control"><?php echo $row['address']; ?></textarea>
	</div>
	<div class="form-group mb-2">
		<label>Admin Role:</label>
		<input type="checkbox" name="is_admin" id="is_admin" value="1" <?php if ($row['is_admin'] == 1) { echo 'checked'; } ?>>
	</div>
	<input type="submit" name="update" class="btn custom-bg" value="Update User">
	<input type="submit" name="delete" class="btn btn-danger" value="Delete User">
</form>

<?php
} else {
?>

<form action="" method="post">
	<div class="form-group mb-2">
		<label>Name:</label>
		<input type="text" class="form-control" name="name">
	</div>
	<div class="form-group mb-2">
		<label>Email:</label>
		<input type="text" class="form-control" name="email">
	</div>
	<div class="form-group mb-2">
		<label>Password:</label>
		<input type="text" class="form-control" name="password">
	</div>
	<div class="form-group mb-2">
		<label>Mobile:</label>
		<input type="text" class="form-control" name="mobile">
	</div>
	<div class="form-group mb-2">
		<label>Address:</label>
		<textarea rows="3" cols="40" name="address" class="form-control"></textarea>
	</div>
	<div class="form-group mb-2">
		<label>Admin Role:</label>
		<input type="checkbox" name="is_admin" value="1">
	</div>
	<input name="add" type="submit" class="btn custom-bg" value="Create Profile">
</form>

<?php
}
?>

</div>

</div>
</div>

<?php
include("includes/footer.php");
?>