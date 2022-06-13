<?php
include("includes/header.php");
include("includes/navbar.php");
include("USER_PERMISSIONS.php");
?>

<?php
include("includes/conn.php");

if (is_authenticated()) {
    $user_id = $_SESSION['id'];
} else {
    $user_id = null;
}

if (isset($_POST['book_id'])) {

    $book_id = $_POST['book_id'];
    
    if ($user_id) {

        $issue_date = date('Y-m-d', strtotime('+14 days'));
        
        $sql = "INSERT INTO issued_books (book_id, user_id, issue_date)
        VALUES ('$book_id', '$user_id', '$issue_date');";

        $query_run = mysqli_query($conn, $sql);

        if ($query_run) {
            echo '<script> alert("Book Issued Successfully"); </script>';
        } else {
            echo '<script> alert("Book Issued Failed"); </script>';
        }
        
        echo "<script> window.location.href = 'book.php?id=$book_id'; </script>";

    } else {
        $next_url = "book.php?id=$book_id";
        echo "<script> alert($next_url); </script>";
        echo '<script>alert("Please login to issue a book");</script>';
        echo "<script>window.location.href = 'login.php?next=$next_url'; </script>";
    }
}

$book_id = $_GET['id'];

$sql = "SELECT
books.id AS book_id,
books.image AS book_image,
books.name AS book_name,
category.name AS category_name,
books.year AS book_year,
authors.name AS author_name,
books.description AS book_description
FROM books
JOIN category ON books.cat_id = category.id
JOIN authors ON books.author_id = authors.id
WHERE books.id = '$book_id';";

$res = mysqli_query($conn, $sql);

$row = mysqli_fetch_assoc($res);
?>

<div class="container mt-5">

<div class="row">

    <div class="col-6 border-bottom py-2">
        <img src="<?php echo $row['book_image']; ?>" class="img-fluid">
    </div>

    <div class="col-6 border-bottom py-2">
        <p>
            <?php echo $row['book_description']; ?>
        </p>
    </div>

    <div class="col-6 border-top py-2">
        <h1>
            <?php echo $row['book_name']; ?>
        </h1>
        
        <p>
            <div class="lead">
                Author: <?php echo $row['author_name']; ?>
            </div>
            <div class="lead">
                Year: <?php echo $row['book_year']; ?>
            </div>
            <div class="lead">
                Genre: <?php echo $row['category_name']; ?>
            </div> 
        </p>
    </div>
    <div class="col-6 border-top py-2">
        <?php

        if (!is_admin()) {

        if ($user_id) {

            $sql = "SELECT * FROM issued_books WHERE book_id = '$book_id' AND user_id = '$user_id';";
            $res = mysqli_query($conn, $sql);

            if (mysqli_num_rows($res) > 0) {

                echo '<div><a class="btn custom-bg" href="dashboard.php">Book Added to Library! View Library</a></div>';

            } else {
            ?>

            <form action="" method="POST">
                <input type="number" name="book_id" value="<?php echo $row['book_id']; ?>" hidden>
                <button class="btn custom-bg">Add to Library</button>
            </form>

            <?php
            }

        } else {

            ?>

            <form action="" method="POST">
                <input type="number" name="book_id" value="<?php echo $row['book_id']; ?>" hidden>
                <button class="btn custom-bg">Add to Library</button>
            </form>

            <?php

        }
    } else {

        ?>
        <div class="alert alert-info mt-2">You already is an admin.</div>
        <?php

    }

        ?>

    </div>
</div>

</div>

<?php
include("includes/footer.php");
?>