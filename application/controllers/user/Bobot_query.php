<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Bobot_query extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();        
        $this->load->model("Query_M");
        $this->load->model("Prakom_M");
        $this->load->model("ED_M");
    }

    public function index(){
        $this->db->query("DELETE FROM bobot_query");
        $this->db->query("ALTER TABLE bobot_query AUTO_INCREMENT = 1");

        $caseBase = $this->db->query("SELECT DISTINCT Term FROM bobot ORDER BY Term ASC");
        foreach ($caseBase->result_array() as $getTerm) {
            $termBobot = $getTerm['Term'];
            $this->db->query("INSERT INTO bobot_query (Term) VALUES ('$termBobot')");
        }
        // redirect('user/bobot_query/api'); //menggunakan ketglo
        redirect('user/bobot_query/pembobotan'); //tanpa kateglo
    }

    public function api()
    {
        $this->db->query("DELETE FROM api");
        $this->db->query("ALTER TABLE api AUTO_INCREMENT = 1");
        $resPertanyaan = $this->db->query("SELECT * FROM query_proses");		                        
            foreach ($resPertanyaan->result_array() as $row){
			$docId = $row['id_query_proses'];
            $pertanyaan = $row['pertanyaan'];      
            $APIpertanyaan = explode(" ", trim($pertanyaan));
            foreach ($APIpertanyaan as $n => $value) {                
                // try{
                $this->API="https://kateglo.com/api.php?format=json&phrase=$APIpertanyaan[$n]";
                $data = json_decode($this->curl->simple_get($this->API));                                   
                // $jumlah_index = count($data->kateglo->definition);
                if (!empty($data->kateglo->definition)){
                $jumlah_index = sizeof($data->kateglo->definition);                                   
                for ($i=0; $i < $jumlah_index; $i++) {                           
                    $kateglo = $data->kateglo->definition[$i]->def_text;                    
                    // echo $kateglo;
                    $akateglo = explode("; ", trim($kateglo));
                    foreach ($akateglo as $pull) {
                    $this->db->query("INSERT INTO api (id_query, API) VALUES (1, '$pull')");
                    }
                }  //end for
            }               
            }
            }            
            redirect('user/bobot_query/pembobotan');
    }

    public function pembobotan()
    {
        //Dengan API
        // /*
        //menggunakan API kateglo berfungsi untuk mengambil persamaan kata (sinonim)
        $join = $this->db->query("SELECT bobot_query.Term FROM bobot_query JOIN api ON bobot_query.Term = api.API");
        foreach ($join->result_array() as $jo) {
            $apijo = $jo['Term'];
            $diBobot = 1;
            $this->db->query("UPDATE bobot_query SET Bobot = $diBobot WHERE Term = '$apijo'");
        } 
        // tutup dengan API */
        
        //Tanpa API
        $resPertanyaan = $this->db->query("SELECT * FROM query_proses");		                        
            foreach ($resPertanyaan->result_array() as $row){
			$docId = $row['id_query_proses'];
            $pertanyaan = $row['pertanyaan'];            
  			$apertanyaan = explode(" ", trim($pertanyaan));
  			foreach ($apertanyaan as $j => $value) {                
				if ($apertanyaan[$j] != "") {                        
                        // $cariTerm = $this->db->query("SELECT DISTINCT Term FROM bobot WHERE Term LIKE '%$apertanyaan[$j]%'");
                        $cariTerm = $this->db->query("SELECT DISTINCT Term FROM bobot WHERE Term = '$apertanyaan[$j]'");
                        // $cariTerm = $this->db->query("SELECT DISTINCT Term FROM bobot");
                        foreach ($cariTerm->result_array() as $get){
                            $termNya = $get['Term'];
                            // echo $termNya;
                            $diBobot = $get['Term'];
                            $diBobot = 1;
                            $this->db->query("UPDATE bobot_query SET Bobot = $diBobot WHERE Term = '$termNya'");
                            // $this->db->query("UPDATE bobot_query SET Bobot = $diBobot");
                        }
				}
            } //tutup tanpa API   
        }
        // redirect('user/bobot_query/propagasi'); //ED
        redirect('user/bobot_query/propagasi2'); //SVD
    }

    public function propagasi()
    {
        $this->db->query("DELETE FROM propagasi");
        $this->db->query("ALTER TABLE propagasi AUTO_INCREMENT = 1");

        $termQuery = $this->db->query("SELECT * FROM bobot_query");
        $q = 0;
        foreach ($termQuery->result_array() as $get) {
            $query = $get["Bobot"];
            $matQuery[$q] = $query;
            $q++;
        } //end foreach

        $db_ed = $this->ED_M->getAll();        
        $getData = ($db_ed[0]->prakomputasi_edT);
        $prakom_edT = json_decode($getData);
        $sizeRowED = sizeof($prakom_edT); //100
        $sizeColED = sizeof($prakom_edT[0]); //353

        //Prakom x aktivasi
        $propagasi = 0;
        for ($i=0; $i < $sizeRowED; $i++) { 
            for ($n=0; $n < $sizeColED; $n++) { 
                $propagasi = $propagasi + ($prakom_edT[$i][$n]*$matQuery[$n]); 
            }
            // echo $propagasi."<br>";            
            $resultPropagasi = round($propagasi, 2);
            $this->db->query("INSERT INTO propagasi (propagasi) VALUES ('$resultPropagasi')");        
            $propagasi = 0;
        } //end for
        redirect('user/query');
    }

    public function propagasi2()
    {
        // menggunakan SVD
        $this->db->query("DELETE FROM propagasi2");
        $this->db->query("ALTER TABLE propagasi2 AUTO_INCREMENT = 1");
        $termQuery = $this->db->query("SELECT * FROM bobot_query");
        $q = 0;
        foreach ($termQuery->result_array() as $get) {
            $query = $get["Bobot"];
            $matQuery[$q] = $query;
            $q++;
        } //end foreach

        //GET prakomputasi (^)
        $db_prakom = $this->Prakom_M->getAll();                
        $getA = ($db_prakom[0]->prakomputasi);
        $prakomputasi = json_decode($getA);        
        $sizeRowA = sizeof($prakomputasi); //100
        $sizeColA = sizeof($prakomputasi[0]); //222
        echo "<pre>";
        // print_r($prakomputasi);
        
        //Prakom x aktivasi
        $propagasi = 0;
        for ($i=0; $i < $sizeRowA; $i++) { 
            for ($n=0; $n < $sizeColA; $n++) { 
                $propagasi = $propagasi + ($prakomputasi[$i][$n]*$matQuery[$n]); 
            }
            echo $propagasi."<br>";            
            $resultPropagasi = round($propagasi, 2);            
            $this->db->query("INSERT INTO propagasi2 (propagasi) VALUES ('$resultPropagasi')");        
            $propagasi = 0;
        } //end for
        redirect('user/query');
    }
}