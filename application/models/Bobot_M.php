<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Bobot_M extends CI_Model
{
    private $_table = "bobot";
    public $Id;
    public $Term;
    public $DocId;
    public $Count;
    public $Bobot;

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }
}
