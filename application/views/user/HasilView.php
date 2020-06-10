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

				<?php $this->load->view("user/_partials/breadcrumb.php") ?>

				<!-- DataTables -->
				<div class="card mb-3">
					<div class="card-header">
					<!-- Euclidean Distance -->
					<!-- <form action="/qas_asma/user/query/propagasi" method="post">
					<input class="btn btn-success" type="submit" name="btn" value="Hasil Propagasi" />
					</form> -->

					<!-- SVD -->
					<form action="/qas_asma/user/query/propagasi2" method="post"> 
					<input class="btn btn-success" type="submit" name="btn" value="Hasil Propagasi" />
					</form>

					</div>
					<div class="card-body">
						<div class="table-responsive">
						<?php 
						// $this->load->view("user/hasil/hasil.php"); //ED
						$this->load->view("user/hasil/hasil2.php"); //SVD
						?>							
						</div>
					</div>
				</div>

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
