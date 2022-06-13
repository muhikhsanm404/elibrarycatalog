<?php
include("includes/header.php");
include("USER_PERMISSIONS.php");

if (is_admin()) {
	header('Location: admin/index.php');
}

if (!is_authenticated()) {
	header('Location: login.php');
}

include("includes/navbar.php");


include("includes/conn.php");

$user_id = $_SESSION['id'];

if (isset($_GET['id'])) {
	$issue_id = $_GET['id'];

	$sql = "DELETE FROM issued_books WHERE id = $issue_id AND user_id = $user_id;";

	$result = mysqli_query($conn, $sql);

	if ($result) {
		echo '<script> alert("Issue Book Returned Successfully"); </script>';
	} else {
		echo '<script> alert("Issue Book Returned Failed"); </script>';
	}
}

?>
<div class="container mt-3">

	<div class="my-2 h2">
		My Books
	</div>

<table class="table table-bordered">
	<tr>
		<th>S.N.</th>
		<th>Book</th>
		<th>Author</th>
		<th>Genre</th>
		<th>Due Date</th>
		<th>Action</th>
	</tr>
	<?php
		$query = "SELECT
		issued_books.id AS issue_id,
		books.image AS book_image,
		books.pdf AS book_pdf,
		books.name AS book_name,
		authors.name AS author_name,
		category.name AS category_name,
		issued_books.issue_date AS due_date
		FROM issued_books
		JOIN books ON issued_books.book_id = books.id
		JOIN category ON books.cat_id = category.id
		JOIN authors ON books.author_id = authors.id
		WHERE user_id = '$user_id';
		";

		$query_run = mysqli_query($conn,$query);

		$count = 1;
		while($row = mysqli_fetch_assoc($query_run)){
	?>
		<tr>
			<td><?php echo $count; ?></td>
			<td><?php

			$book_thumb = $row['book_image'];
			$book_name = $row['book_name'];
			$pdf_file = $row['book_pdf'];
			$list_display = "<img class='rounded border' style='height:40px; width=auto;' src='$book_thumb'> $book_name";

			if (date('Y-m-d') > $row['due_date']) {
				echo $list_display;
			} else {
				echo "<a href='read.php?file=$pdf_file'>$list_display</a>";
			}

			?></td>
			
			<td><?php echo $row['author_name']; ?></td>
			<td><?php echo $row['category_name']; ?></td>
			<td><?php 
			if (date('Y-m-d') > $row['due_date']) {
				echo '<span class="text-danger">Expired!</span>';
			} else {
				echo $row['due_date'];
			}
			?></td>
			<td>
				<a href="?id=<?php echo $row['issue_id']; ?>">
					Return
				</a>
			</td>
		</tr>
	<?php
	$count += 1;
	}
	?>
</table>

</div>

<?php
include("includes/footer.php");
?>