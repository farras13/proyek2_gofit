<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class userModel extends CI_Model {
    public function getUser($usr,$pass)
    {        
            $this->db->where('username', $usr);
            $this->db->where('password', $pass);
            return $this->db->get('user')->result_array();
    }
    public function register($data)
    {
        $this->db->insert('user', $data);
        return $this->db->affected_rows();
    }
}

/* End of file userModel.php */
