<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class foodModel extends CI_Model {

    public function postFood($t, $data)
    {
        $this->db->insert($t, $data);
        return $this->db->affected_rows();
    }

}

/* End of file foodModel.php */
