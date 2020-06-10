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
						<div><tr></tr><th> <?php echo "<br>"?></th></div>					
						<div class="table-responsive">
                        
						<?php
							echo "<table>";
							/* >menampilkan dari database pada tabel data_proses untuk menghitung jumlah pertanyaan< */
							$jumPertanyaan = $this->db->query("SELECT * FROM data_proses");
							$jumPer = $jumPertanyaan->num_rows();
							
							/* >menampilkan term yang unik dari tabel bobot< */
							$row = 1;
							$dt = $this->db->query('SELECT DISTINCT Term FROM bobot ORDER BY Term, DocId');
							/* >menampilkan dari database yang telang dipanggil< */
							foreach ($dt->result_array() as $ambil){
							$term = $ambil['Term'];

								/* >tampilkan dari tabel bobot dengan kondisi term tertentu< */
								$data = $this->db->query("SELECT * FROM bobot WHERE Term = '$term'");

								/* >menampilkan dari database yang telang dipanggil< */
								foreach ($data->result_array() as $get){      
								$kata = $get['Term'];
								$bobot = $get['Bobot'];
								$column = $get['DocId'];           								
								$isi[$row][$column] = round($bobot, 1);
								$column++;
								}    
								echo "</tr>";
								$row++;    
							}

							/* >Membuat tampilan matriks TF-IDF< */

							$error = error_reporting(0); //menghilang error offset
							echo "<td align=\"center\" style=\"padding:10px;border-top:0px solid #000;;border-bottom:1px solid #000;\">".""."</td>";
							for ($m=1; $m <= $jumPer ; $m++) { //perulang buat judul kolom	
								echo "<td align=\"center\" style=\"padding:3px;border-right:1px solid #000; font-size:12px; border-left:1px solid #000;\">".'C'.$m."</td>";
							}
							echo "</tr>"; //buat baris baru
							/* >Perulangan ke bawah< */
							for ($n=1; $n <$row ; $n++) {
								$x = 1;   
								foreach ($dt->result_array() as $pull){ //menampilkan term dibuat untuk penaaman row samping kiri
									$nterm = $pull['Term'];
								if($x == $n){ //fungsi agar term muncul sekali saja
									echo "<td align=\"center\" style=\"padding:10px;border-top:1px solid #000; font-size:12px; border-bottom:1px solid #000;\">".$nterm."</td>";
								}
								$x++;
								}
							for ($i=1; $i <=$jumPer ; $i++) { /* >Perulangan ke kanan< */      
								if($isi[$n][$i]==NULL){ /* >kondisi jika index kosong makan 0< */
									echo "<td align=\"center\" style=\"padding:10px; font-size:12px; border:1px solid #000;\">"."0"."</td>";
								}
								else{ /* >jika tidak kosong diisikan< */
									echo "<td align=\"center\" style=\"padding:10px; font-size:12px; border:1px solid #000;\">".$isi[$n][$i]."</td>";
								}
							} /* >End Perulangan ke kanan< */
							echo "</tr>"; //buat baris baru
							} /* >End Perulangan ke bawah< */
							echo "</table>";
							?>
						</div>
					</div>
				</div>
			</div>
			<!-- Sticky Footer -->
			<?php $this->load->view("admin/_partials/footer.php") ?>
		</div>		
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