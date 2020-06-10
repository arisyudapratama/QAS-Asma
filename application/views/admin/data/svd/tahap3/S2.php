<?php
echo "<table>";						
$db_svd = $this->db->get("svd")->result();
$getS2 = ($db_svd[0]->S2);
$S2 = json_decode($getS2);        
$sizeRowS2 = sizeof($S2); //100
$sizeColS2 = sizeof($S2[0]); //222
echo "<pre>";
// print_r($prakomputasi);
echo "<td align=\"center\" style=\"padding:10px;border-top:0px solid #000; font-size:12px; border-bottom:1px solid #000;\">".""."</td>";
for ($s=0; $s < $sizeColS2; $s++) { //perulang buat judul kolom	
    echo "<td align=\"center\" style=\"padding:3px;border-right:1px solid #000; font-size:12px; border-left:1px solid #000;\">".'c'.($s+1)."</td>";
}
echo "</tr>"; //buat baris baru
for ($m=0; $m < $sizeRowS2; $m++) {
    echo "<td align=\"center\" style=\"padding:10px;border-top:1px solid #000; font-size:12px; border-bottom:1px solid #000;\">"."t".($m+1)."</td>";
    for ($s=0; $s < $sizeColS2; $s++) { 								
        echo "<td align=\"center\" style=\"padding:10px; font-size:12px; border:1px solid #000;\">".$S2[$m][$s]."</td>";
    }
    echo "</tr>";
}
echo "</table>";
?>