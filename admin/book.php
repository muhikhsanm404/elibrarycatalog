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
        $book_id = $_POST['book_id'];

        $sql = "DELETE FROM books WHERE id = '$book_id';";

        $result = mysqli_query($conn, $sql);

        if ($result) {
            echo '<script> alert("Book Deleted Successfully"); </script>';
            echo '<script> window.location.href = "books.php"; </script>';
        } else {
            echo '<script> alert("Book Deleted Failed"); </script>';
        }
    }

    if (isset($_POST['update'])) {

        $book_id = $_POST['book_id'];
        $name = $_POST['name'];
        $author_id = $_POST['author_id'];
        $cat_id = $_POST['cat_id'];
        $year = $_POST['year'];
        $description = $_POST['description'];

        $sql = "UPDATE books SET name = ?, author_id = ?, cat_id = ?, year = ?, description = ? WHERE id = '$book_id';";

        $updateBookStatement = mysqli_prepare($conn, $sql);

        mysqli_stmt_bind_param($updateBookStatement, "siiss", $name, $author_id, $cat_id, $year, $description);

        $result = mysqli_stmt_execute($updateBookStatement);

        if ($result) {
            echo '<script> alert("Book Updated Successfully"); </script>';
            echo '<script> window.location.href = "books.php"; </script>';
        } else {
            echo '<script> alert("Book Updated Failed"); </script>';
        }
    }

    if (isset($_POST['add'])) {

        $name = $_POST['name'];
        $author_id = $_POST['author_id'];
        $cat_id = $_POST['cat_id'];
        $year = $_POST['year'];
        $description = $_POST['description'];

        $image_target_dir = "../book_images/";
        $pdf_target_dir = "../pdfs/";

        $image_name = uniqid() . '_' . basename($_FILES["image"]["name"]);
        $pdf_name = uniqid() . '_' . basename($_FILES["pdf"]["name"]);

        $image_target_file = $image_target_dir . $image_name;
        $pdf_target_file = $pdf_target_dir . $pdf_name;

        move_uploaded_file($_FILES["image"]["tmp_name"], $image_target_file);
        move_uploaded_file($_FILES["pdf"]["tmp_name"], $pdf_target_file);

        $image = "book_images/" . $image_name;
        $pdf = "pdfs/" . $pdf_name;

        $sql = "INSERT INTO books (name, author_id, cat_id, year, description, image, pdf) VALUES (?, ?, ?, ?, ?, ?, ?);";

        $addBookStatement = mysqli_prepare($conn, $sql);

        mysqli_stmt_bind_param($addBookStatement, "siissss", $name, $author_id, $cat_id, $year, $description, $image, $pdf);

        $result = mysqli_stmt_execute($addBookStatement);

        if ($result) {
            echo '<script> alert("Book Added Successfully"); </script>';
            echo '<script> window.location.href = "books.php"; </script>';
        } else {
            echo '<script> alert("Book Added Failed"); </script>';
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

                $book_id = $_GET['id'];

                $sql = "SELECT * FROM books WHERE id = '$book_id';";

                $result = mysqli_query($conn, $sql);

                $row = mysqli_fetch_assoc($result);

            ?>

                <form action="" method="post">
                    <div class="form-group mb-2">
                        <label>ID:</label>
                        <input type="number" class="form-control" value="<?php echo $row['id']; ?>" name="book_id" readonly>
                    </div>
                    <div class="form-group mb-2">
                        <label>Nama:</label>
                        <input type="text" class="form-control" value="<?php echo $row['name']; ?>" name="name">
                    </div>
                    <div class="form-group mb-2">
                        <label>Penulis:</label>

                        <select name="author_id" class="form-control">
                            <?php
                            $sql = "SELECT * FROM authors;";
                            $result = mysqli_query($conn, $sql);
                            while ($author_row = mysqli_fetch_assoc($result)) {

                                $author_id = $author_row['id'];
                                $selected_author_id = $row['author_id'];
                                $author_name = $author_row['name'];

                                $selected = ($author_id == $selected_author_id) ? 'selected' : '';
                                echo "<option value='$author_id' $selected>$author_name</option>";
                            }
                            ?>
                        </select>

                    </div>
                    <div class="form-group mb-2">
                        <label>Genre:</label>

                        <select name="cat_id" class="form-control">
                            <?php
                            $sql = "SELECT * FROM category;";
                            $result = mysqli_query($conn, $sql);
                            while ($cat_row = mysqli_fetch_assoc($result)) {

                                $cat_id = $cat_row['id'];
                                $selected_cat_id = $row['cat_id'];
                                $cat_name = $cat_row['name'];

                                $selected = ($cat_id == $selected_cat_id) ? 'selected' : '';
                                echo "<option value='$cat_id' $selected>$cat_name</option>";
                            }
                            ?>
                        </select>

                    </div>
                    <div class="form-group mb-2">
                        <label>Tahun:</label>
                        <input type="text" class="form-control" value="<?php echo $row['year']; ?>" name="year">
                    </div>
                    <div class="form-group mb-2">
                        <label>Deskripsi:</label>
                        <textarea rows="3" cols="40" name="description" class="form-control"><?php echo $row['description']; ?></textarea>
                    </div>
                    <input type="submit" name="update" class="btn btn-success" value="Update Buku">
                    <input type="submit" name="delete" class="btn btn-danger" value="Delete Buku">
                </form>

            <?php
            } else {
            ?>

                <form action="" method="post" enctype="multipart/form-data">
                    <div class="form-group mb-2">
                        <label>Name:</label>
                        <input type="text" class="form-control" name="name">
                    </div>
                    <div class="form-group mb-2">
                        <label>Penulis:</label>

                        <select name="author_id" class="form-control">
                            <?php
                            $sql = "SELECT * FROM authors;";
                            $result = mysqli_query($conn, $sql);
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo '<option value="' . $row['id'] . '">' . $row['name'] . '</option>';
                            }
                            ?>
                        </select>

                    </div>
                    <div class="form-group mb-2">
                        <label>Genre:</label>

                        <select name="cat_id" class="form-control">
                            <?php
                            $sql = "SELECT * FROM category;";
                            $result = mysqli_query($conn, $sql);
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo '<option value="' . $row['id'] . '">' . $row['name'] . '</option>';
                            }
                            ?>
                        </select>

                    </div>
                    <div class="form-group mb-2">
                        <label>Tahun:</label>
                        <input type="text" class="form-control" name="year">
                    </div>
                    <div class="form-group mb-2">
                        <label>Deskripsi:</label>
                        <textarea rows="3" cols="40" name="description" class="form-control"></textarea>
                    </div>
                    <div class="form-group mb-2">
                        <label>Gambar:</label>
                        <input type="file" class="form-control" name="image">
                    </div>
                    <div class="form-group mb-2">
                        <label>PDF:</label>
                        <input type="file" class="form-control" name="pdf">
                    </div>
                    <input name="add" type="submit" class="btn custom-bg" value="Add Book">
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