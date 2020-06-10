<?php
echo "<table>";						
$db_tfidf = $this->db->get("tfidf")->result();
$getATA = ($db_tfidf[0]->ATxA);
$ATA = json_decode($getATA);        
$sizeRowATA = sizeof($ATA); //100
$sizeColATA = sizeof($ATA[0]); //222
echo "<pre>";
// print_r($prakomputasi);
echo "<td align=\"center\" style=\"padding:10px;border-top:0px solid #000; font-size:12px; border-bottom:1px solid #000;\">".""."</td>";
for ($s=0; $s < $sizeColATA ; $s++) { //perulang buat judul kolom	
    echo "<td align=\"center\" style=\"padding:3px;border-right:1px solid #000; font-size:12px; border-left:1px solid #000;\">".'c'.($s+1)."</td>";
}
echo "</tr>"; //buat baris baru
for ($m=0; $m < $sizeRowATA; $m++) {
    echo "<td align=\"center\" style=\"padding:10px;border-top:1px solid #000; font-size:12px; border-bottom:1px solid #000;\">"."c".($m+1)."</td>";
    for ($s=0; $s < $sizeColATA; $s++) { 								
        echo "<td align=\"center\" style=\"padding:10px; font-size:12px; border:1px solid #000;\">".$ATA[$m][$s]."</td>";
    }
    echo "</tr>";
}
echo "</table>";
?>