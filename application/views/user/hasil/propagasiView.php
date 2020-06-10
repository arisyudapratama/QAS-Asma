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
					<div class="card-body">

						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
								<tr align="center">
										<th>Rank</th>
										<th>Propagasi</th>										
										<th>Kasus</th>										
									</tr>
								</thead>
								<tbody>	
								<?php $no = 1;?>								
									<?php foreach ($propagasi as $gasi): ?>
									<tr>								
										<td class="small" align="center">
											<?php echo $no++ ?>
										</td>											
										<td class="small" align="center">
											<?php echo $gasi->propagasi ?>
										</td>															
										<td class="small" align="center">
											<?php echo $gasi->id_propagasi ?>
										</td>		
									</tr>
									<?php endforeach; ?>

								</tbody>
							</table>
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