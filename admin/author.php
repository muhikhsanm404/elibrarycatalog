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
        $author_id = $_POST['author_id'];

        $sql = "DELETE FROM authors WHERE id = '$author_id';";

        $result = mysqli_query($conn, $sql);

        if ($result) {
            echo '<script> alert("Author Deleted Successfully"); </script>';
            echo '<script> window.location.href = "authors.php"; </script>';
        } else {
            echo '<script> alert("Author Deleted Failed"); </script>';
        }
    }

    if (isset($_POST['update'])) {
        $author_id = $_POST['author_id'];
        $name = $_POST['name'];

        $sql = "UPDATE authors SET name = '$name' WHERE id = '$author_id';";
        
        $result = mysqli_query($conn, $sql);

        if ($result) {
            echo '<script> alert("Author Updated Successfully"); </script>';
            echo '<script> window.location.href = "authors.php"; </script>';
        } else {
            echo '<script> alert("Author Updated Failed"); </script>';
        }
    }

    if (isset($_POST['add'])) {
        $name = $_POST['name'];

        $sql = "INSERT INTO authors (name) VALUES ('$name');";

        $result = mysqli_query($conn, $sql);

        if ($result) {
            echo '<script> alert("Author Added Successfully"); </script>';
            echo '<script> window.location.href = "authors.php"; </script>';
        } else {
            echo '<script> alert("Author Added Failed"); </script>';
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

    $author_id = $_GET['id'];

    $sql = "SELECT * FROM authors WHERE id = '$author_id';";

    $result = mysqli_query($conn, $sql);
    
    $row = mysqli_fetch_assoc($result);

?>

<form action="" method="post">
	<div class="form-group">
		<label>ID:</label>
		<input type="number" class="form-control" value="<?php echo $row['id']; ?>" name="author_id" readonly>
	</div>
	<div class="form-group">
		<label>Name:</label>
		<input type="text" class="form-control" value="<?php echo $row['name']; ?>" name="name">
	</div>
	<input type="submit" name="update" class="btn custom-bg" value="Update Author">
	<input type="submit" name="delete" class="btn btn-danger" value="Delete Author">
</form>

<?php
} else {
?>

<form action="" method="post">
	<div class="form-group">
		<label>Name:</label>
		<input type="text" class="form-control" name="name">
	</div>
	<input name="add" type="submit" class="btn custom-bg" value="Create Author">
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