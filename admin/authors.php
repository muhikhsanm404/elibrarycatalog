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
				All Authors
			</div>

			<div class="my-2">
				<a href="author.php" class="btn custom-bg">Tambah Penulis</a>
			</div>

			<table class="table table-bordered">
				<tr>
					<th>S.N.</th>
					<th>Nama</th>
				</tr>
				<?php
				$query = "SELECT
        authors.id AS author_id,
		authors.name AS author_name
		FROM authors;
		";

				$query_run = mysqli_query($conn, $query);

				$count = 1;
				while ($row = mysqli_fetch_assoc($query_run)) {
				?>
					<tr>
						<td><?php echo $count; ?></td>
						<td>
							<a href="author.php?id=<?php echo $row['author_id']; ?>">
								<?php echo $row['author_name']; ?>
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