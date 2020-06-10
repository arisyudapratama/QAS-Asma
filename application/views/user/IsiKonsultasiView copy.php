<link rel="stylesheet" href="<?php echo base_url('assets/loader/style3.css') ?>">
<div id="loader-wrapper" style="display:none;">
<h2>Loading...</h2>
<div id="loader"></div>
<div class="loader-section section-left"></div>
<div class="loader-section section-right"></div>
</div>

<div id="content-wrapper">
			<div class="container-fluid">

				<?php $this->load->view("user/_partials/headerKonsultasi.php") ?>                

				<?php if ($this->session->flashdata('success')): ?>
				<div class="alert alert-success" role="alert">
					<?php echo $this->session->flashdata('success'); ?>
				</div>
				<?php endif; ?>

				<div class="card mb-3">					
					<div class="card-body">

						<form action="<?php base_url('user/query/add') ?>" method="post" enctype="multipart/form-data" >
							<div class="form-group">
								<!-- <label for="name">Pertanyaan</label> -->
								<textarea class="form-control <?php echo form_error('pertanyaan') ? 'is-invalid':'' ?>"
								 type="text" name="pertanyaan" placeholder="Masukkan Pertanyaan Anda..."></textarea>
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

		<script>
			loader(){
			// $('#loader-wrapper').show();			
			echo "You win";
		}
		</script>