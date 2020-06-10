<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view("user/_partials/head.php") ?>
</head>
<body id="page-top">

<?php $this->load->view("user/_partials/navbar.php") ?>

<div id="wrapper">

	<?php $this->load->view("user/_partials/sidebar.php") ?>

	<div id="content-wrapper">

		<div class="container-fluid">
		<?php $this->load->view("admin/Home.php") ?>

		</div>
		<!-- /.container-fluid -->

		<!-- Sticky Footer -->
		<?php $this->load->view("user/_partials/footer.php") ?>

	</div>
	<!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->


<?php $this->load->view("user/_partials/scrolltop.php") ?>
<?php $this->load->view("user/_partials/modal.php") ?>
<?php $this->load->view("user/_partials/js.php") ?>

</body>
</html>
