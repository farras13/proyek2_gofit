<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Workmodel extends CI_Model {

    public function getWork($id=null)
    {
        if ($id == null) {
            return $this->db->get('listworkout')->result_array();
        } else {
            return $this->db->get_where('listworkout', ['idWorkout' => $id])->result();
        }
    }

    public function getWorkDetail($id=null)
    {
       
        $this->db->join('listworkout', 'listsubworkout.idWorkout = listworkout.idWorkout', 'left');
        return $this->db->get_where('listsubworkout', ['idWorkoutDetail' => $id])->result_array();
       
    }

}

/* End of file Workmdel.php */
