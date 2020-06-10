<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Tfidf extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();        
        $this->load->model("data_proses");
        $this->load->library('form_validation');
        $this->load->model("TfIdf_M");
    }

    public function index()
    {
        $this->db->query("DELETE FROM bobot");
        $this->db->query("ALTER TABLE bobot AUTO_INCREMENT = 1");

        $resPertanyaan = $this->db->query("SELECT * FROM data_proses ORDER BY id_proses");
		$num_rows = $resPertanyaan->num_rows();
        print("Mengindeks sebanyak " . $num_rows . " dokumen. <br />");
                        
            foreach ($resPertanyaan->result_array() as $row){
			$docId = $row['id_proses'];
            $pertanyaan = $row['pertanyaan'];

  			$apertanyaan = explode(" ", trim($pertanyaan));
  			foreach ($apertanyaan as $j => $value) {
				//hanya jika Term tidak null atau nil, tidak kosong
				if ($apertanyaan[$j] != "") {
					//berapa baris hasil yang dikembalikan query tersebut?
					$rescount = $this->db->query("SELECT Count FROM bobot WHERE Term = '$apertanyaan[$j]' AND DocId = $docId");
                    $num_rows = $rescount->num_rows();
					//jika sudah ada DocId dan Term tersebut, naikkan Count (+1)
					if ($num_rows > 0) {
                        $rowcount = $rescount->row_array();
						$count = $rowcount["Count"];
                        $count++;
						$this->db->query("UPDATE bobot SET Count = $count WHERE Term = '$apertanyaan[$j]' AND DocId = $docId");
					}
					//jika belum ada, langsung simpan ke tbbobot
					else {
						$this->db->query("INSERT INTO bobot (Term, DocId, Count) VALUES ('$apertanyaan[$j]', $docId, 1)");
					}
				} //end if
			} //end foreach
          } //end while
          redirect('admin/tfidf/hitungbobot'); 
    }

    //--------------------------------------------------------------------------------------------
    //fungsi hitungbobot, menggunakan pendekatan tf-idf
    function hitungbobot() {        
        $resn = $this->db->query("SELECT DISTINCT DocId FROM bobot");
        $n = $resn->num_rows();

        $resBobot = $this->db->query("SELECT * FROM bobot ORDER BY Id");
        $num_rows = $resBobot->num_rows();        

            foreach ($resBobot->result_array() as $rowbobot){            
            $term = $rowbobot['Term'];
            $tf = $rowbobot['Count'];
            $id = $rowbobot['Id'];
            
            $resNTerm = $this->db->query("SELECT Count(*) as N FROM bobot WHERE Term = '$term'");
            $rowNTerm = $resNTerm->row_array();            
            $NTerm = $rowNTerm['N'];            

            /* >Rumus TF-IDF< */
            // $w = $tf * (log10($n/$NTerm)+1); //tf-idf murni
            $w = 1 * (log10($n/$NTerm)+1); //tf-idf binary
            /* Ket:
                    $tf = Term Frequency yaitu banyaknya kemuncul kata disuatu pertanyaan
                    $n = jumlah semua pertanyaan
                    $NTerm = jumlah pertanyaan yang mengandung term
                    **log10 = base log kalkulator dan excel menggunakan base 10 jika perhitungan menggunakan PHP/Python
                     */

            //update bobot dari term tersebut
            $resUpdateBobot = $this->db->query("UPDATE bobot SET Bobot = round($w, 1) WHERE Id = $id");
        } //end while $rowbobot
        // redirect('/admin/bobots');
        redirect('/admin/tfidf/save_tfidf');         
    } //end function hitungbobot
    //--------------------------------------------------------------------------------------------    

    public function save_tfidf()
    {        
    /* >menampilkan dari database pada tabel data_proses untuk menghitung jumlah pertanyaan< */
    $jumPertanyaan = $this->db->query("SELECT * FROM data_proses");
    $jumPer = $jumPertanyaan->num_rows();
    // echo $jumPer;
    /* >menampilkan term yang unik dari tabel bobot< */
    $row = 0;
    $dt = $this->db->query('SELECT DISTINCT Term FROM bobot ORDER BY Term, DocId');
    /* >menampilkan dari database yang telang dipanggil< */
    foreach ($dt->result_array() as $ambil){
    $term = $ambil['Term'];
        /* >tampilkan dari tabel bobot dengan kondisi term tertentu< */
        $data = $this->db->query("SELECT * FROM bobot WHERE Term = '$term'");
        /* >menampilkan dari database yang telang dipanggil< */
        foreach ($data->result_array() as $get){      
        $kata = $get['Term'];
        $bobot = $get['Bobot'];
        $column = $get['DocId'];           								
        $isi[$row][$column-1] = round($bobot, 1);
        $column++;
        }        
        $row++;
    }
    /* >Membuat tampilan matriks TF-IDF< */
    $error = error_reporting(0); //menghilang error offset
    /* >Perulangan ke bawah< */
    for ($n=0; $n < $row ; $n++) {    
    for ($i=0; $i < $jumPer ; $i++) { /* >Perulangan ke kanan< */      
        if($isi[$n][$i]==NULL){ /* >kondisi jika index kosong makan 0< */
            $isin[$n][$i] = 0;
        }
        else{ /* >jika tidak kosong diisikan< */
            $isin[$n][$i] = $isi[$n][$i];
        }
    } /* >End Perulangan ke kanan< */
    } /* >End Perulangan ke bawah< */
    $myJSON = json_encode($isin);
    echo "<pre>";
    // print_r($isin);    
    // echo $myJSON."<br>";
    // echo $myJSON;

    $this->db->query("DELETE FROM tfidf");
    $this->db->query("ALTER TABLE tfidf AUTO_INCREMENT = 1");
    $this->db->query("INSERT INTO tfidf (A) VALUES ('$myJSON')");     
    redirect('admin/tfidf/tfidfT');    
    }

    public function tfidfT()
    {
        // echo "<pre>";        
        $jumPertanyaan = $this->db->query("SELECT * FROM data_proses");
        $jumPer = $jumPertanyaan->num_rows(); //count pertanyaan
        $data = $this->TfIdf_M->getAll();        
        $getData = ($data[0]->A);
        $myDCODE = json_decode($getData);
        $countArr = sizeof($myDCODE);
        // $array = json_decode(json_encode($myDCODE),true);
        // print_r($array);
        // print_r($myDCODE);
        
        for ($i=0; $i < $jumPer ; $i++) { /* >Perulangan ke kanan< */      
        for ($n=0; $n < $countArr ; $n++) {    
                $tfidfT[$i][$n] = $myDCODE[$n][$i];                
            }            
        }
        // print_r($tfidfT);
        $myJSON = json_encode($tfidfT);
        $this->db->query("UPDATE tfidf SET AT = '$myJSON'");  
        redirect('admin/tfidf/tfidfMath');    
    }

    public function tfidfMath()
    {
        $data = $this->TfIdf_M->getAll();        
        $getA = ($data[0]->A); //get tabel tfidf kolom A
        $getAT = ($data[0]->AT); //get tabel tfidf kolom A Transpose
        $A = json_decode($getA); 
        $AT = json_decode($getAT);        
        $countA = sizeof($A);
        $countA2 = sizeof($A[0]);        
        $countAT = sizeof($AT);        
        $countAT2 = sizeof($AT[0]);
        /**
         * Ket: Count tanpa ada angka dibilakang untuk mengetahui jumlah baris, dan ada angka dibilakang untuk mengetahui jumlah kolom
         */
        echo "<pre>";
        //A x AT (matriks tf-idf dikali dengan matriks tf-idf transpose)
        $kolom = 0;
        $baris = 0;
        $i=0;            
        while($i < $countA){
            $n=0;            
            while($n < $countAT2){                
                $AxAT = 0;
                for ($m=0; $m < $countAT; $m++) { 
                    $AxAT = $AxAT + ($A[$i][$m]*$AT[$m][$n]);
                }   
                // echo round($AxAT, 1)." ";
                $arrAxAT[$baris][$kolom] = round($AxAT, 1);                
                $kolom++;             
                $n++;
            }
            // echo "<br>";
            $kolom = 0;
            $baris++;
            $i++;
        }
        
        $myJSON = json_encode($arrAxAT);
        $this->db->query("UPDATE tfidf SET AxAT = '$myJSON'");  
        /**  end A x AT
         **************/

         // AT x A
        $kolom2 = 0;
        $baris2 = 0;
         $u=0;            
        while($u < $countAT){
            $p=0;            
            while($p < $countA2){                
                $ATxA = 0;
                for ($m=0; $m < $countA; $m++) { 
                    $ATxA = $ATxA + ($AT[$u][$m]*$A[$m][$p]);
                }                   
                $arrATxA[$baris2][$kolom2] = round($ATxA, 1);                
                $kolom2++;             
                $p++;
            }            
            $kolom2 = 0;
            $baris2++;
            $u++;
        }
        // print_r($arrATxA);
        $myJSON = json_encode($arrATxA);
        $this->db->query("UPDATE tfidf SET ATxA = '$myJSON'");  
        /**  end AT x A
         **************/
        redirect('/admin/svd');
    }
}