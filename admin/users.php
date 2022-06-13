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
		All Users
	</div>

    <div class="my-2">
        <a href="user.php" class="btn custom-bg">Add User</a>
    </div>

	<table class="table table-bordered">
		<tr>
			<th>S.N.</th>
			<th>Name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Role</th>
		</tr>
		<?php
			$current_user = $_SESSION['id'];
			$query = "SELECT * FROM users WHERE id != $current_user";

			$query_run = mysqli_query($conn,$query);

			$count = 1;
			while($row = mysqli_fetch_assoc($query_run)){
		?>
			<tr>
				<td><?php echo $count; ?></td>
				<td>
					<a href="user.php?id=<?php echo $row['id']; ?>">
					<?php echo $row['name']; ?>
					</a>
				</td>
				<td><?php echo $row['email']; ?></td>
				<td><?php echo $row['mobile']; ?></td>
				<td><?php 
				if ($row['is_admin'] == 1) {
					echo '<span class="text-success">Admin</span>';
				} else {
					echo 'User';
				}
				?></td>
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