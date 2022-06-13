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


chart js

</div>

</div>

</div>

<?php
include("includes/footer.php");
?>