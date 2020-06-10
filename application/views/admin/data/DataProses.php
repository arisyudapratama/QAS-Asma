<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view("admin/_partials/head.php") ?>
</head>

<body id="page-top">

	<?php $this->load->view("admin/_partials/navbar.php") ?>
	<div id="wrapper">

		<?php $this->load->view("admin/_partials/sidebar.php") ?>

		<div id="content-wrapper">

			<div class="container-fluid">

				<?php $this->load->view("admin/_partials/breadcrumb.php") ?>

				<!-- DataTables -->
				<div class="card mb-3">
					<div class="card-header">
						<form action="/qas_asma/admin/datas/proses" method="post">						
						<a href="<?php echo site_url('admin/datas/add') ?>"><i class="fas fa-plus"></i> Add New</a>						
						<input class="btn btn-success" type="submit" name="btn" value="Proses" />
						</form>					
					</div>

					<div class="card-body">

						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>No</th>
										<th>Pertanyaan</th>
										<!-- <th>Jawaban</th> -->
									</tr>
								</thead>
								<tbody>
									<?php $no = 1; ?>									
                                    <?php foreach ($data_pro as $pro): ?>
									<tr>
										<td class="small">
											<?php echo $no ?>
											<?php $no++ ?>
										</td>
										<td class="small">
											<?php echo $pro->pertanyaan ?>
										</td>
										<!-- <td class="small">
											<?php echo $ori->jawaban ?>                                            
										</td> -->
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
			<?php $this->load->view("admin/_partials/footer.php") ?>

		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->


	<?php $this->load->view("admin/_partials/scrolltop.php") ?>
	<?php $this->load->view("admin/_partials/modal.php") ?>

	<?php $this->load->view("admin/_partials/js.php") ?>

	<script>
	function deleteConfirm(url){
		$('#btn-delete').attr('href', url);
		$('#deleteModal').modal();
	}
	</script>
</body>

</html>
