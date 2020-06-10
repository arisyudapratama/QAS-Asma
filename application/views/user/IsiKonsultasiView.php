<div id="content">
	<div class="container-fluid">
		<?php $this->load->view("user/_partials/headerKonsultasi.php") ?>                
		<?php if ($this->session->flashdata('success')): ?>
			<div class="alert alert-success" role="alert">
				<?php echo $this->session->flashdata('success'); ?>
			</div>
				<?php endif; ?>

					<div class="card mb-3">					
						<div class="card-body">
						<form id="myform" action="<?php base_url('user/query/add') ?>" method="post" enctype="multipart/form-data" >
							<div class="form-group">
								<!-- <label for="name">Pertanyaan</label> -->
								<textarea class="form-control <?php echo form_error('pertanyaan') ? 'is-invalid':'' ?>"
								 type="text" name="pertanyaan" placeholder="Masukkan gejala atau keluhan"></textarea>
									<div class="invalid-feedback">
										<?php echo form_error('pertanyaan') ?>
									</div>
							</div>							
							<input class="btn btn-success" type="submit" name="btn" value="Kirim Pertanyaan" />							
						</form>
					</div>
						<div class="card-footer small text-muted">							
							* Gunakan Bahasa Indonesia
						</div>
					</div>
				<!-- /.container-fluid -->
				<!-- Sticky Footer -->
						<?php $this->load->view("user/_partials/footer.php") ?>
				</div>
			<!-- /.content-wrapper -->
			</div>
		<!-- /#wrapper --> 