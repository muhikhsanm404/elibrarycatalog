<?php
include("includes/header.php");
include("../USER_PERMISSIONS.php");

if (!is_admin()) {
	header("Location: ../dashboard.php");
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

	<!-- Books count bar chart start -->
	<?php

	$sql = "SELECT
	books.name AS book_name,
	COUNT(issued_books.book_id) AS book_count
	FROM issued_books
	JOIN books ON issued_books.book_id = books.id
	GROUP BY issued_books.book_id
	ORDER BY book_count DESC
	LIMIT 5;";

	$res = mysqli_query($conn, $sql);

	echo "<script>var label_php = [];</script>";
	echo "<script>var data_php = [];</script>";

	while($row = mysqli_fetch_assoc($res)){

		$label = $row['book_name'];
		$data = $row['book_count'];

	echo "<script>

	label_php.push('$label');
	data_php.push('$data');

	</script>";

	}
	?>

	<canvas id="books_count_bar_chart" width="50" height="30"></canvas>

</div>

</div>

</div>

<?php
include("includes/footer.php");
?>