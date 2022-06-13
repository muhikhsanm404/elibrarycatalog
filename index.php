<?php
include("includes/header.php");
include("includes/navbar.php");
?>

<?php
include("includes/conn.php");

$sql = "SELECT
books.id AS book_id,
books.image AS book_image,
books.name AS book_name,
category.name AS category_name,
books.year AS book_year,
authors.name AS author_name
FROM books
JOIN category ON books.cat_id = category.id
JOIN authors ON books.author_id = authors.id;";

$query_run = mysqli_query($conn, $sql);
?>

<div class="container mt-5">
<div class="card-deck">

	<?php
	while($row = mysqli_fetch_assoc($query_run)){
	?>

		<div class="card">
			<img src="<?php echo $row['book_image']; ?>" class="card-img-top">
			<div class="card-body">
				<h5 class="card-title">
					<a href="book.php?id=<?php echo $row["book_id"]; ?>">
						<?php echo $row["book_name"]; ?></h5>
					</a>
				<p class="card-text">
					<div>
						Author: <?php echo $row["author_name"]; ?>
					</div>
					<div>
						Year: <?php echo $row['book_year']; ?>
					</div>
					<div>
						Genre: <?php echo $row['category_name']; ?>
					</div>
				</p>
			</div>
		</div>

	<?php
	}
	?>
</div>
</div>

<?php
include("includes/footer.php");
?>