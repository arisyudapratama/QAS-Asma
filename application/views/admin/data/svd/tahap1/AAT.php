<?php
echo "<table>";						
$db_tfidf = $this->db->get("tfidf")->result();
$getAAT = ($db_tfidf[0]->AxAT);
$AAT = json_decode($getAAT);        
$sizeRowAAT = sizeof($AAT); //100
$sizeColAAT = sizeof($AAT[0]); //222
echo "<pre>";
// print_r($prakomputasi);
echo "<td align=\"center\" style=\"padding:10px;border-top:0px solid #000; font-size:12px; border-bottom:1px solid #000;\">".""."</td>";
for ($s=0; $s < $sizeColAAT ; $s++) { //perulang buat judul kolom	
    echo "<td align=\"center\" style=\"padding:3px;border-right:1px solid #000; font-size:12px; border-left:1px solid #000;\">".'t'.($s+1)."</td>";
}
echo "</tr>"; //buat baris baru
for ($m=0; $m < $sizeRowAAT; $m++) {
    echo "<td align=\"center\" style=\"padding:10px;border-top:1px solid #000; font-size:12px; border-bottom:1px solid #000;\">"."t".($m+1)."</td>";
    for ($s=0; $s < $sizeColAAT; $s++) { 								
        echo "<td align=\"center\" style=\"padding:10px; font-size:12px; border:1px solid #000;\">".$AAT[$m][$s]."</td>";
    }
    echo "</tr>";
}
echo "</table>";
?>