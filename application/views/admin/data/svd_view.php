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
						<div class="table-responsive">
                        <?php
						echo "<table>";						
						$db_svd = $this->db->get("svd")->result();
						$getA = ($db_svd[0]->Aresult);
                        $Aresult = json_decode($getA);        
                        $sizeA = sizeof($Aresult); //222
						echo "<pre>";
						// print_r($Aresult);
						echo "<td align=\"center\" style=\"padding:10px;border-top:0px solid #000; font-size:12px; border-bottom:1px solid #000;\">".""."</td>";
						for ($s=0; $s < $sizeA ; $s++) { //perulang buat judul kolom	
							echo "<td align=\"center\" style=\"padding:3px;border-right:1px solid #000; font-size:12px; border-left:1px solid #000;\">".'t'.($s+1)."</td>";
						}
						echo "</tr>"; //buat baris baru
						for ($m=0; $m < $sizeA; $m++) {
							echo "<td align=\"center\" style=\"padding:10px;border-top:1px solid #000; font-size:12px; border-bottom:1px solid #000;\">"."t".($m+1)."</td>";
							for ($s=0; $s < $sizeA; $s++) { 								
								echo "<td align=\"center\" style=\"padding:10px; font-size:12px; border:1px solid #000;\">".$Aresult[$m][$s]."</td>";
							}
							echo "</tr>";
						}
						echo "</table>";
						?>
						</div>
					</div>
				</div>
			</div>			
			<?php $this->load->view("admin/_partials/footer.php") ?>
		</div>		

	</div>
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