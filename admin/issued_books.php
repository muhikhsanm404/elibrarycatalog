<?php
include("includes/header.php");
include("../USER_PERMISSIONS.php");

if (!is_admin()) {
	header("Location: ../index.php");
}

include("includes/navbar.php");


include("includes/conn.php");

if (isset($_GET['id'])) {
	$issue_id = $_GET['id'];

	$sql = "DELETE FROM issued_books WHERE id = $issue_id;";

	$result = mysqli_query($conn, $sql);

	if ($result) {
		echo '<script> alert("Issue Book Deleted Successfully"); </script>';
	} else {
		echo '<script> alert("Issue Book Deleted Failed"); </script>';
	}
}

?>
<div class="container mt-3">

<div class="row">

<div class="col-3">
<?php include("includes/sidebar.php"); ?>
</div>

<div class="col-9">

	<div class="my-2 h2">
		All Issued Books
	</div>

	<table class="table table-bordered">
	<tr>
		<th>S.N.</th>
		<th>Book</th>
        <th>User</th>
        <th>Due Date</th>
        <th>Action</th>
	</tr>
	<?php
		$query = "SELECT
        books.name AS book_name,
        users.name AS user_name,
        issued_books.issue_date AS due_date,
        issued_books.id AS issue_id
        FROM issued_books
        JOIN books ON issued_books.book_id = books.id
        JOIN users ON issued_books.user_id = users.id;
		";

		$query_run = mysqli_query($conn, $query);

		$count = 1;
		while($row = mysqli_fetch_assoc($query_run)){
	?>
		<tr>
			<td><?php echo $count; ?></td>
            <td><?php echo $row['book_name']; ?></td>
            <td><?php echo $row['user_name']; ?></td>
            <td><?php

                if (date('Y-m-d') > $row['due_date']) {
					echo '<span class="text-danger">Expired!</span>';
				} else {
                    echo $row['due_date'];
                }

            ?></td>
			<td>
                <a href="?id=<?php echo $row['issue_id']; ?>">
                    Delete
                </a>
            </td>
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