<?php defined('BASEPATH') OR exit('No direct script access allowed');
class ED_M extends CI_Model
{
    private $_table = "ed";
    
    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }
}