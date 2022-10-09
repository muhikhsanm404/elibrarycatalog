<?php
include("includes/header.php");
include("../USER_PERMISSIONS.php");

if (!is_admin()) {
	header("Location: ../index.php");
}

include("includes/navbar.php");


include("includes/conn.php");

?>
<div class="container mt-3">

<div class="row">

<div class="col-3">
<?php include("includes/sidebar.php"); ?>
</div>

<div class="col-9">

	<div class="my-2 h2">
		All Books
	</div>

    <div class="my-2">
        <a href="book.php" class="btn custom-bg">Add Book</a>
    </div>

	<table class="table table-bordered">
	<tr>
		<th>S.N.</th>
		<th>Book</th>
		<th>Author</th>
		<th>Genre</th>
        <th>Year</th>
	</tr>
	<?php
		$query = "SELECT
        books.id AS book_id,
		books.image AS book_image,
		books.name AS book_name,
		authors.name AS author_name,
		category.name AS category_name,
        books.year AS book_year
		FROM books
		JOIN category ON books.cat_id = category.id
		JOIN authors ON books.author_id = authors.id;
		";

		$query_run = mysqli_query($conn,$query);

		$count = 1;
		while($row = mysqli_fetch_assoc($query_run)){
	?>
		<tr>
			<td><?php echo $count; ?></td>
			<td><?php

			$book_thumb = "../" . $row['book_image'];
			$book_name = $row['book_name'];
			$list_display = "<img class='rounded border' style='height:40px; width=auto;' src='$book_thumb'> $book_name";

             $book_id = $row['book_id'];
             echo "<a href='book.php?id=$book_id'>" . $list_display . "</a>";

			?></td>
			
			<td><?php echo $row['author_name']; ?></td>
			<td><?php echo $row['category_name']; ?></td>
			<td><?php echo $row['book_year']; ?></td>
		</tr>
	<?php
	$count += 1;
	}
	?>
</table>

</div>

</div>

</div>

<?php
include("includes/footer.php");
?>
