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
		All Genres
	</div>

    <div class="my-2">
        <a href="genre.php" class="btn custom-bg">Add Genre</a>
    </div>

	<table class="table table-bordered">
	<tr>
		<th>S.N.</th>
		<th>Name</th>
	</tr>
	<?php
		$query = "SELECT
        category.id AS cat_id,
		category.name AS cat_name
		FROM category;
		";

		$query_run = mysqli_query($conn, $query);

		$count = 1;
		while($row = mysqli_fetch_assoc($query_run)){
	?>
		<tr>
			<td><?php echo $count; ?></td>
			<td>
                <a href="genre.php?id=<?php echo $row['cat_id']; ?>">
                    <?php echo $row['cat_name']; ?>
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