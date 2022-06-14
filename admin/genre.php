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
        $cat_id = $_POST['cat_id'];

        $sql = "DELETE FROM category WHERE id = '$cat_id';";

        $result = mysqli_query($conn, $sql);

        if ($result) {
            echo '<script> alert("Genre Deleted Successfully"); </script>';
            echo '<script> window.location.href = "genres.php"; </script>';
        } else {
            echo '<script> alert("Genre Deleted Failed"); </script>';
        }
    }

    if (isset($_POST['update'])) {
        $cat_id = $_POST['cat_id'];
        $name = $_POST['name'];

        $sql = "UPDATE category SET name = '$name' WHERE id = '$cat_id';";
        
        $result = mysqli_query($conn, $sql);

        if ($result) {
            echo '<script> alert("Genre Updated Successfully"); </script>';
            echo '<script> window.location.href = "genres.php"; </script>';
        } else {
            echo '<script> alert("Genre Updated Failed"); </script>';
        }
    }

    if (isset($_POST['add'])) {
        $name = $_POST['name'];

        $sql = "INSERT INTO category (name) VALUES ('$name');";

        $result = mysqli_query($conn, $sql);

        if ($result) {
            echo '<script> alert("Genre Added Successfully"); </script>';
            echo '<script> window.location.href = "genres.php"; </script>';
        } else {
            echo '<script> alert("Genre Added Failed"); </script>';
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

    $cat_id = $_GET['id'];

    $sql = "SELECT * FROM category WHERE id = '$cat_id';";

    $result = mysqli_query($conn, $sql);
    
    $row = mysqli_fetch_assoc($result);

?>

<form action="" method="post">
	<div class="form-group mb-2">
		<label>ID:</label>
		<input type="number" class="form-control" value="<?php echo $row['id']; ?>" name="cat_id" readonly>
	</div>
	<div class="form-group mb-2">
		<label>Name:</label>
		<input type="text" class="form-control" value="<?php echo $row['name']; ?>" name="name">
	</div>
	<input type="submit" name="update" class="btn custom-bg" value="Update Genre">
	<input type="submit" name="delete" class="btn btn-danger" value="Delete Genre">
</form>

<?php
} else {
?>

<form action="" method="post">
	<div class="form-group mb-2">
		<label>Name:</label>
		<input type="text" class="form-control" name="name">
	</div>
	<input name="add" type="submit" class="btn custom-bg" value="Create Genre">
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