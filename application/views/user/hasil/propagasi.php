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
    $data = $this->db->query("SELECT * FROM bobot WHERE Term LIKE '%$term%'");

    /* >menampilkan dari database yang telang dipanggil< */
    foreach ($data->result_array() as $get){      
    $kata = $get['Term'];
    $bobot = $get['Bobot'];
    $column = $get['DocId'];           								
    $tfidf[$row][$column] = $bobot;
    $column++;
    }    
    echo "</tr>";
    $row++;    
}
echo "</table>";

/* Euclidean Distance */
echo "<table>";
error_reporting(0);
$distance = 0;
$termLain = 1;
$termSatu = 1;
$x = 1;
$y = 1;
while($termSatu < $row){
// euclidean distance term x dengan term lain
while($termLain < $row){
for ($c=1; $c <= $jumPer; $c++) { 
    $distance = $distance + sqrt(($tfidf[$termSatu][$c]-$tfidf[$termLain][$c])**2);	
}
$ed[$y][$x] = $distance;
/* 
$x => untuk index ke kanan
$y => baris baru 
*/

$x++;
// echo "<td align=\"center\" style=\"padding:10px;border:1px solid #000;\">".$distance."</td>";
$distance = 0;
$termLain++;
}
echo "</tr>";
$x = 1;
$termLain = 1;
$termSatu++;
$y++;
}
echo "</table>";

/* =============
Pra-Komputasi */
echo "<table>";
// echo "<td align=\"center\" style=\"padding:10px;border-top:0px solid #000;;border-bottom:1px solid #000;\">".""."</td>";
for ($s=1; $s < $row ; $s++) { //perulang buat judul kolom	
    // echo "<td align=\"center\" style=\"padding:3px;border-right:1px solid #000;;border-left:1px solid #000;\">".'t'.$s."</td>";
}
echo "</tr>"; //buat baris baru
$matriksTF = 1;
$matriksED = 1;
$kaliMatriks = 0;
$y = 1;
while($matriksTF <= $jumPer){
    // echo "<td align=\"center\" style=\"padding:10px;border-top:1px solid #000;;border-bottom:1px solid #000;\">"."c".$x++."</td>";
    while($matriksED < $row){
        for ($m=1; $m < $row ; $m++) { 
            $kaliMatriks = $kaliMatriks + ($tfidf[$m][$matriksTF]*$ed[$m][$matriksED]);
            /*
            Perkalian matriks TF-IDF dengan Euclidean Distance
             */
        }
        $praKom[$y][$x] = $kaliMatriks;
        // $praKom[1][1] = $kaliMatriks;
        $x++;
        // echo "<td align=\"center\" style=\"padding:10px;border:1px solid #000;\">".$kaliMatriks."</td>";
        $kaliMatriks = 0;
        $matriksED++;
    }
    echo "</tr>";
    $x = 1;
    $matriksED = 1;
    $matriksTF++;
    $y++;
}
echo "</table>";

/* Propagasi */
echo "<table>";
$this->db->query("DELETE FROM propagasi");
$this->db->query("ALTER TABLE propagasi AUTO_INCREMENT = 1");
$termQuery = $this->db->query("SELECT * FROM bobot_query");
$q = 1;
foreach ($termQuery->result_array() as $get) {
    $query = $get["Bobot"];
    $matQuery[$q] = $query;
    $q++;
}

$propagasi = 0;
$aq = 1;
while($aq <= $jumPer){
for ($p=1; $p < $row; $p++) { 
    $propagasi = $propagasi + ($praKom[$aq][$p]*$matQuery[$p]); 
    // perkalian matriks pra-komputasi dengan matriks aktivasi query
}
echo "<td align=\"center\" style=\"padding:10px;border-top:1px solid #000;;border-bottom:1px solid #000;\">"."c".$aq."</td>";
echo "<td align=\"center\" style=\"padding:10px;border:1px solid #000;\">".$propagasi."</td>";
$this->db->query("INSERT INTO propagasi (propagasi) VALUES ('$propagasi')");
echo "</tr>";
$propagasi = 0;
$aq++;
}
echo "</table>";
?>