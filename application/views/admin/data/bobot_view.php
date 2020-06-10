<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view("admin/_partials/head.php") ?>
	<style>
.dropbtn {
  background-color: #3498DB;
  color: white;
  padding: 8px;
  font-size: 15px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #2980B9;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}
.show {display: block;}
</style>
</head>

<body id="page-top">

	<?php $this->load->view("admin/_partials/navbar.php") ?>
	<div id="wrapper">

		<?php $this->load->view("admin/_partials/sidebar.php") ?>

		<div id="content-wrapper">

			<div class="container-fluid">

				<?php $this->load->view("admin/_partials/breadcrumb.php") ?>

				<?php
				// print("Total pertanyaan sebanyak " . $jumlah . " pertanyaan. <br />");
				?>

				<!-- DataTables -->
				<div class="card mb-3">
					<div class="card-header">				
						<table>
							<tr>
								<td><form action="/qas_asma/admin/tfidf" method="post">
									<input class="btn btn-warning" type="submit" name="btn" value="Hitung" />
									</form></td>
								<td><form action="/qas_asma/admin/bobots/tfidf" method="post">
									<input class="btn btn-info" type="submit" name="btn" value="TF-IDF" />
									</form></td>								
								<td class="dropdown">
									<button onclick="myFunction()" class="dropbtn">ED</button>
									<div id="myDropdown" class="dropdown-content">
										<a href="/qas_asma/admin/bobots/euclideanDistance">Euclidean Distance</a>
										<a href="/qas_asma/admin/bobots/praKomputasi">Pra-komputasi</a>										
									</div>
									</td>
								<td class="dropdown">
									<button onclick="myFunction2()" class="dropbtn">SVD</button>
									<div id="myDropdown2" class="dropdown-content">
										<a href="/qas_asma/admin/bobots/svd">Singular Value Decomposition</a>
										<a href="/qas_asma/admin/bobots/praKomputasi2">Pra-komputasi</a>										
									</div>
									</td>
							</tr>
						</table>
						</div>
						<div><tr></tr><th> <?php echo "<br>"?></th></div>
					<!-- <div class="card-header">
						<a href="<?php echo site_url('admin/datas/add') ?>"><i class="fas fa-plus"></i> Add New</a>
					</div>
					<div class="card-body"> -->
						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr align="center">
										<!-- <th>No</th> -->
										<th>Pertanyaan</th>
										<th>Term</th>										
										<th>Jumlah Kata</th>
										<th>Bobot</th>
									</tr>
								</thead>
								<tbody>
									<!-- <?php $no = 1; ?> -->
									<?php foreach ($bobot_toh as $bot): ?>
									<tr>
										<!-- <td class="small" align="center">
											<?php echo $no ?>
											<?php $no++ ?>
										</td> -->
										<td class="small" align="center">
											<?php 
											echo $bot->DocId
											?>
										</td>
										<td class="small" align="center">
											<?php
											echo $bot->Term 												
											?>
										</td>																				
										<td class="small" align="center">
											<?php 
											echo $bot->Count
											?>
										</td>
										<td class="small" align="center">
											<?php 
											echo $bot->Bobot
											?>
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

	/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");  
}

function myFunction2() {
  document.getElementById("myDropdown2").classList.toggle("show");  
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
	</script>
</body>
</html>