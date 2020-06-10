<?php
echo "<table>";						
$db_svd = $this->db->get("svd")->result();
$getU = ($db_svd[0]->U);
$U = json_decode($getU);        
$sizeRowU = sizeof($U); //100
$sizeColU = sizeof($U[0]); //222
echo "<pre>";
// print_r($prakomputasi);
echo "<td align=\"center\" style=\"padding:10px;border-top:0px solid #000; font-size:12px; border-bottom:1px solid #000;\">".""."</td>";
for ($s=0; $s < $sizeColU; $s++) { //perulang buat judul kolom	
    echo "<td align=\"center\" style=\"padding:3px;border-right:1px solid #000; font-size:12px; border-left:1px solid #000;\">".'c'.($s+1)."</td>";
}
echo "</tr>"; //buat baris baru
for ($m=0; $m < $sizeRowU; $m++) {
    echo "<td align=\"center\" style=\"padding:10px;border-top:1px solid #000; font-size:12px; border-bottom:1px solid #000;\">"."t".($m+1)."</td>";
    for ($s=0; $s < $sizeColU; $s++) { 								
        echo "<td align=\"center\" style=\"padding:10px; font-size:12px; border:1px solid #000;\">".$U[$m][$s]."</td>";
    }
    echo "</tr>";
}
echo "</table>";
?>