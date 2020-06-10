<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class ED extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();                
        $this->load->model("TfIdf_M");
        $this->load->model("ED_M");
    }

    public function index()
    {
        // $this->load->view("admin/data/svd_proses");
        // redirect('admin/svd/svd_eigenU');
    }

    public function ed()
    {
        $data = $this->TfIdf_M->getAll();        
        $getData = ($data[0]->A);
        $tfidf = json_decode($getData);
        $sizeRowA = sizeof($tfidf); //353
        $sizeColA = sizeof($tfidf[0]); //100
        echo "<pre>";
        // echo "Row: ".$sizeRowA."<br>";
        // echo "Col: ".$sizeColA;
        // print_r($tfidf);

        $distance = 0;
        $termLain = 0;
        $termSatu = 0;
        $x = 0;
        $y = 0;
        while($termSatu < $sizeRowA){
        // euclidean distance term x dengan term lain
        while($termLain < $sizeRowA){
        for ($c=0; $c < $sizeColA; $c++) { 
            $distance = $distance + (($tfidf[$termSatu][$c]-$tfidf[$termLain][$c])**2);	
        }
        $ed[$y][$x] = round(sqrt($distance), 2);
        /* 
        $x => untuk index ke kanan
        $y => baris baru 
        */

        $x++;        
        $distance = 0;
        $termLain++;
        }        
        $x = 0;
        $termLain = 0;
        $termSatu++;
        $y++;
        }

        // print_r($ed);
        $myJSON = json_encode($ed);
        $this->db->query("DELETE FROM ed");
        $this->db->query("INSERT INTO ed (ed) VALUES ('$myJSON')");
        redirect('admin/ed/prakomputasi');
    }

    public function prakomputasi()
    {
        $data = $this->ED_M->getAll();        
        $getData = ($data[0]->ed);
        $ed = json_decode($getData);
        $sizeRowED = sizeof($ed); //353
        $sizeColED = sizeof($ed[0]); //353

        $data2 = $this->TfIdf_M->getAll();        
        $getData2 = ($data2[0]->A);
        $tfidf = json_decode($getData2);
        $sizeRowA = sizeof($tfidf); //353
        $sizeColA = sizeof($tfidf[0]); //100
        echo "<pre>";
        // print_r($tfidf);

        $matriksTF = 0;
        $matriksED = 0;
        $kaliMatriks = 0;
        while($matriksED < $sizeRowED){            
            $matriksTF = 0;
                while($matriksTF < $sizeColA){
                for ($m=0; $m < $sizeRowA ; $m++) { 
                    $kaliMatriks = $kaliMatriks + ($ed[$matriksED][$m]*$tfidf[$m][$matriksTF]);
                    /*
                    Perkalian matriks Euclidean Distance dengan TF-IDF
                    */
                }
                $praKom[$matriksED][$matriksTF] = round($kaliMatriks, 2);                
                $matriksTF++;
                $kaliMatriks = 0;								
            }            						
            $matriksED++;
        }

        // print_r($praKom);
        $myJSON = json_encode($praKom);
        $this->db->query("UPDATE ed SET prakomputasi_ed = '$myJSON'");
        redirect('admin/ed/prakomputasiT');
    }

    public function prakomputasiT()
    {
        $data = $this->ED_M->getAll();        
        $getData = ($data[0]->prakomputasi_ed);
        $prakom_ed = json_decode($getData);
        $sizeRowED = sizeof($prakom_ed); //353
        $sizeColED = sizeof($prakom_ed[0]); //100
        echo "<pre>";
        // echo $sizeColED;
        // print_r($prakom_ed);

        for ($i=0; $i < $sizeColED ; $i++) { /* >Perulangan ke kanan< */      
            for ($n=0; $n < $sizeRowED ; $n++) {    
                    $prakom_edT[$i][$n] = $prakom_ed[$n][$i];                
                }            
            }

        // print_r($prakom_edT);
        $myJSON = json_encode($prakom_edT);
        $this->db->query("UPDATE ed SET prakomputasi_edT = '$myJSON'");
        redirect('/admin/bobots'); 
    }
}