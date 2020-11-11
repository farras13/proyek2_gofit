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
    public function getMuscle($id=null)
    {
        if ($id == null) {
            return $this->db->get('muscle')->result_array();
        } else {
            return $this->db->get_where('muscle', ['idmuscle' => $id])->result();
        }
    }

    public function getWorkDetail($id = null)
    {
        // $this->db->select('idWorkoutDetail, listsubworkout.idWorkout, listsubworkout.name, listsubworkout.image, listsubworkout.set, listsubworkout.duration, listsubworkout.rest');
        $this->db->join('listworkout', 'listsubworkout.idWorkout = listworkout.idWorkout', 'left');
        return $this->db->get_where('listsubworkout', ['listworkout.idWorkout' => $id])->result_array();
       
    }

    public function getMuscleDetail($id)
    {
        $this->db->join('muscle', 'listsubmuscle.idMuscle = muscle.idMuscle', 'left');
        // $this->db->select('idDetailMuscle, idMuscle, name, image, set, duration, rest');
        return $this->db->get_where('listsubmuscle', ['listsubmuscle.idMuscle' => $id])->result_array();
       
    }

    public function getVideo($id, $val, $t)
    {
        $this->db->select('link, start, end');
        $this->db->where($val, $id);
        return $this->db->get($t)->result_array();        
    }

    public function dataPost($t,$object)
    {
        $this->db->insert($t, $object);
        return $this->db->affected_rows();
    }

}

/* End of file Workmdel.php */
