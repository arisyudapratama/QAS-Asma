<?php defined('BASEPATH') OR exit('No direct script access allowed');

class FCRN extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model("TfIdf_M");
        $this->load->model("SVD_M");
	}

	public function index()
	{
        // $this->load->view("user/HomeUserView");
    }
    
    public function relevansi()
    {
        // ^ = AT x A~ (Matriks transpose x result SVD)
        //GET TF-IDF (AT)
        $db_tfidf = $this->TfIdf_M->getAll();                
        $getAT = ($db_tfidf[0]->AT); //get tabel tfidf kolom A Transpose        
        $AT = json_decode($getAT);
        $sizeRowAT = sizeof($AT); //100
        $sizeColAT = sizeof($AT[0]); //222

        //GET SVD (^)
        $db_svd = $this->SVD_M->getAll();                
        $getA = ($db_svd[0]->Aresult);
        $Aresult = json_decode($getA);        
        $sizeA = sizeof($Aresult); //222
        // echo "<pre>";        
        // print_r($AT);
        // print_r($Aresult);
        $rel = 0;
            for ($i=0; $i < $sizeRowAT; $i++) { 
                for ($n=0; $n < $sizeA; $n++) { 
                    for ($m=0; $m < $sizeColAT; $m++) { 
                        $rel = $rel + $AT[$i][$m]*$Aresult[$m][$n];
                    }
                    $prakom[$i][$n] = round($rel, 2);
                    $rel=0;
                }
            } //end for
            // print_r($prakom);
            $myJSON = json_encode($prakom);
            $this->db->query("DELETE FROM prakomputasi");
            $this->db->query("ALTER TABLE prakomputasi AUTO_INCREMENT = 1");
            $this->db->query("INSERT INTO prakomputasi (prakomputasi) VALUES ('$myJSON')");                 
            // redirect('/admin/bobots'); 
            redirect('admin/ed/ed');
    }
}
