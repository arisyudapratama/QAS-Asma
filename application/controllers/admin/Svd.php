<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Svd extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();                
        $this->load->model("SVD_M");
    }

    public function index()
    {
        $this->load->view("admin/data/svd_proses");
        redirect('admin/svd/svd_eigenU');
    }

    public function svd_eigenU()
    {
        $this->load->view("admin/data/svd_eigenU");        
        redirect('admin/svd/svd_eigenD');
    }

    public function svd_eigenD()
    {        
        $this->load->view("admin/data/svd_eigenD");
        redirect('admin/svd/s2');
    }

    public function S2()
    {
        $data = $this->SVD_M->getAll();        
        $getData = ($data[0]->S);
        $S2 = json_decode($getData);
        $sizeRow = sizeof($S2);
        $sizeCol = sizeof($S2[0]);
        // echo "<pre>";
        // echo $countCol."col";
        // echo "<br>";
        // echo $countRow."Row";
        // print_r($S2);
        $A = 0;
         for ($i=0; $i < $sizeRow; $i++) { 
             for ($n=0; $n < $sizeCol; $n++) { 
                 for ($m=0; $m < $sizeCol; $m++) { 
                    $A = $A + $S2[$i][$m]*$S2[$m][$n];                 
                }
                //  echo "(".$i."|".$n.")".$A." ";
                $S22[$i][$n] = round($A, 2);
                 $A=0;
             }
            //  echo "<br>";
         }           
        // print_r($S2);
        // print_r($S22);
        $myJSON = json_encode($S22);
        $this->db->query("UPDATE svd SET S2 = '$myJSON'");  
        redirect('admin/svd/asvd');
    }

    public function Asvd()
    {
        $data = $this->SVD_M->getAll();        
        $getU = ($data[0]->U);
        $getS2 = ($data[0]->S2);
        $getUT = ($data[0]->UT);
        $UU = json_decode($getU);
        $S2 = json_decode($getS2);
        $UT = json_decode($getUT);
        $sizeRowUU = sizeof($UU); //222
        $sizeColUU = sizeof($UU[0]); //100
        $sizeS2 = sizeof($S2); //100
        $sizeRowUT = sizeof($UT); //100
        $sizeColUT = sizeof($UT[0]); //222     
        //  echo "<pre>";
        //  print_r($UU);
        // print_r($S2);
        // print_r($UT);                   

        //A1 = U x S2
         $A = 0;
         for ($i=0; $i < $sizeRowUU; $i++) { 
             for ($n=0; $n < $sizeS2; $n++) { 
                 for ($m=0; $m < $sizeColUU; $m++) { 
                    $A = $A + $UU[$i][$m]*$S2[$m][$n];                 
                }
                //  echo "(".$i."|".$n.")".$A." ";
                $A1[$i][$n] = round($A, 2);
                 $A=0;
             }
            //  echo "<br>";
         }   
        //  print_r($A1);        
        
        // A2 = A1 x UT
        $sizeRowA1 = sizeof($A1); //222
        $sizeColA1 = sizeof($A1[0]); //100        
        for ($i=0; $i < $sizeRowA1; $i++) { 
            for ($n=0; $n < $sizeColUT; $n++) { 
                for ($m=0; $m < $sizeColA1; $m++) { 
                    $A = $A + $A1[$i][$m]*$UT[$m][$n];                 
                }
                //  echo "(".$i."|".$n.")".$A." ";
                 $A2[$i][$n] = round($A, 2);
                 $A=0;
            }
            //  echo "<br>";
        }
        // print_r($A2);
        $myJSON = json_encode($A2);
        $this->db->query("UPDATE svd SET Aresult = '$myJSON'");  
        redirect('admin/fcrn/relevansi');
    }
}