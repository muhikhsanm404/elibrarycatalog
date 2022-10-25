// This is the main entry point
// From here the code starts
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
JOIN authors ON books.author_id = authors.id";

if(isset($_GET['search'])) {
	$sql = $sql . " WHERE LOWER(books.name) LIKE LOWER('%" . $_GET['search'] . "%');";
} else {
	$sql = $sql . ";";
}

$query_run = mysqli_query($conn, $sql);
?>

<div class="container mt-4">

<div class="my-3">
	
	<form class="d-lg-none" action="index.php" method="get">
		<div class="input-group">
			<input type="search" name="search" placeholder="Search books here..." class="form-control"
			<?php if(isset($_GET['search'])) { echo "value='" . $_GET['search'] . "'"; } ?>>
			<button class="btn btn-primary">Search</button>
		</div>
	</form>

	<?php
	if(isset($_GET['search'])) {
		echo "<div class='mt-2'>Showing results for: <b>" . $_GET['search'] . "</b></div>";
	}
	?>

</div>

<div class="row row-cols-1 row-cols-md-3 row-cols-lg-5 g-4">

	<?php
	while($row = mysqli_fetch_assoc($query_run)){
	?>

	<div class="col">
		<div class="card h-100">
			
			<img src="<?php echo $row['book_image']; ?>" class="card-img-top" style="max-height: 300px; width:auto;">
			<div class="card-body">
				<h5 class="card-title">
					<a href="book.php?id=<?php echo $row["book_id"]; ?>">
						<?php echo $row["book_name"]; ?></h5>
					</a>
				</h5>
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
	</div>

	<?php
	}
	?>
	
</div>
</div>

<?php
include("includes/footer.php");
?>
