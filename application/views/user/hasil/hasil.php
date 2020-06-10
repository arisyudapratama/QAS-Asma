<table class="table table-hover" width="100%" cellspacing="0">
<thead>
<tr>
		<th>Pertanyaan Anda?</th>																			
	</tr>
</thead>
<tbody>									
	<?php foreach ($query as $que): ?>
	<tr>									
		<td class="small">
			<?php echo $que->pertanyaan ?>
		</td>																			
	</tr>
	<?php endforeach; ?>
</tbody>
	<thead>
	<tr>
		<th>Hasil Diagnosa</th>																			
	</tr>
</thead>								
<tbody>									
	<?php 
	foreach ($hasil as $get): //Menggunakan Euclidean Distance
	// foreach ($hasilSVD as $get): //menggunakan SVD
	?>
	<tr>									
		<td class="small">
			<?php      
			if($get->propagasi > 0){
			// echo $get->propagasi;											
			$output = $this->db->query("SELECT * FROM data_ori WHERE id_data_ori = $get->id_propagasi");
			foreach ($output->result_array() as $ambil) {
				echo $ambil['jawaban'];
			}
		}
		else{
			echo "Maaf, sistem belum bisa mendiagnosa gejala yang anda masukkan";
		}
			?>
		</td>																			
	</tr>
	<?php endforeach; ?>
</tbody>	
<td class="small">
	<?php 
	foreach ($hasil as $put): //Euclidean Distance
	// foreach ($hasilSVD as $put): //SVD
	if($put->propagasi > 0){
	echo "Reuse kasus : ";
	echo $put->id_propagasi;
	echo "<br>Nilai propagasi : ";
	echo $put->propagasi;
	}
	else{
		echo "";
	}
	endforeach; ?>
	</td>							
</table>