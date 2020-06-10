<?php
echo "<table>";						
$db_svd_eigen = $this->db->get("svd_eigen")->result();
$getUeigenvector = ($db_svd_eigen[0]->Ueigenvector);
$Ueigenvector = json_decode($getUeigenvector);        
$sizeRowUeigenvector = sizeof($Ueigenvector); //100
$sizeColUeigenvector = sizeof($Ueigenvector[0]); //222
echo "<pre>";
// print_r($prakomputasi);
echo "<td align=\"center\" style=\"padding:10px;border-top:0px solid #000; font-size:12px; border-bottom:1px solid #000;\">".""."</td>";
for ($s=0; $s < $sizeColUeigenvector; $s++) { //perulang buat judul kolom	
    echo "<td align=\"center\" style=\"padding:3px;border-right:1px solid #000; font-size:12px; border-left:1px solid #000;\">".'t'.($s+1)."</td>";
}
echo "</tr>"; //buat baris baru
for ($m=0; $m < $sizeRowUeigenvector; $m++) {
    echo "<td align=\"center\" style=\"padding:10px;border-top:1px solid #000; font-size:12px; border-bottom:1px solid #000;\">"."c".($m+1)."</td>";
    for ($s=0; $s < $sizeColUeigenvector; $s++) { 								
        echo "<td align=\"center\" style=\"padding:10px; font-size:12px; border:1px solid #000;\">".$Ueigenvector[$m][$s]."</td>";
    }
    echo "</tr>";
}
echo "</table>";
?>