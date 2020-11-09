<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Restserver\Libraries\REST_Controller;

    require(APPPATH . 'libraries/REST_Controller.php');

    class Workout extends REST_Controller {
       
function __construct() {
    parent::__construct();
        $this->load->model('Workmodel', 'ls');
        $this->load->library('Cloudinarylib');
        $this->load->model('foodModel');
        global $files;
        
    }

    public function detail_get()
    {
        $id = $this->get('idWorkout');
        $detail = $this->ls->getWorkDetail($id);    

        if ($detail) {
            $this->response([
                'status' => "true", 
                'data' => $detail
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'id not found'
            ], 404);
        }
    }

    public function listWorkout_get()
    {
        $id = $this->get('idWorkout');
        if ($id === null) {
            $list = $this->ls->getWork();
        } else {
            $list = $this->ls->getWork($id);
        }

        if ($list) {
            $this->response([
                'status' => "true", 
                'data' => $list
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'id not found'
            ], 404);
        }
    }

    public function detailMuscle_get()
    {
        $id = $this->get('idMuscle');
        $detail = $this->ls->getMuscleDetail($id);    

        if ($detail) {
            $this->response([
                'status' => "true", 
                'data' => $detail
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'id not found'
            ], 404);
        }
    }
    public function muscle_get()
    {
        $id = $this->get('idMuscle');
        if ($id === null) {
            $list = $this->ls->getMuscle();
        } else {
            $list = $this->ls->getMuscle($id);
        }

        if ($list) {
            $this->response([
                'status' => "true", 
                'data' => $list
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'id not found'
            ], 404);
        }
    }

    public function muscle_post()
    {
        $data = array(
            'muscle' => $this->input->post('muscle'),
            'duration' => $this->input->post('durasi'),
            'tool' => $this->input->post('tool'), 
        );
        if ($this->ls->dataPost('muscle',$data) > 0) {
            $this->response([
                'status' => "true", 
                'data' => $data
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'id not found'
            ], 404);
        }
    }

    public function muscleDetail_post()
    {
        $files['image'] = \Cloudinary\Uploader::upload($this->input->post('image'));
        $data = array(
            'idMuscle' => $this->input->post('id'),
            'muscle' => $this->input->post('name'),
            'set' => $this->input->post('set'),
            'duration' => $this->input->post('duration'), 
            'rest' => $this->input->post('rest'), 
        );
        $this->Image_post($files['image'], $data, 'listsubmuscle');
        
    }

    public function Image_post($img, $data , $tabel)
    {
        $data['image'] = $img['url'];  
        if ($this->ls->dataPost($tabel,$data) > 0) {
            $this->response([
                'status' => "true", 
                'data' => $data
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'id not found'
            ], 404);
        }
    }

    public function workout_post()
    {
        $files['image'] = \Cloudinary\Uploader::upload($this->input->post('image'));
        $data = array(
            'name' => $this->input->post('workout'), 
            'type' => $this->input->post('type'), 
            'total' => $this->input->post('total'), 
            'duration' => $this->input->post('duration'), 
            'rounds' => $this->input->post('rounds'), 
        );
        $this->Image_post($files['image'], $data, 'listworkout');
    }

    public function subworkout_post()
    {
        $files['image'] = \Cloudinary\Uploader::upload($this->input->post('image'));
        $data = array(
            'idWorkout' => $this->input->post('idWorkout'), 
            'name' => $this->input->post('workout'), 
            'set' => $this->input->post('set'), 
            'duration' => $this->input->post('duration'), 
            'rest' => $this->input->post('rest'), 
        );
        $this->Image_post($files['image'], $data, 'listsubworkout');
    }
}
/** End of file Workout.php **/