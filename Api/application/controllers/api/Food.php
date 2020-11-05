<?php
use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';

class Food extends REST_Controller {
    var $API ="";
    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
        $this->API = "https://api.edamam.com/api/food-database/v2/parser?ingr=*&app_id=e5c0b3ca&app_key=ee28dc1c5fc9d3c94942d8ae4786b596";
        $this->load->library('curl');
        $this->load->library('Cloudinarylib');
        $this->load->model('foodModel');
    }
    
    public function index()
    {
        $food = json_decode($this->curl->simple_get($this->API));
        if ($food) {
            $this->response([
                'status' => "true", 
                'data' => $food
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'id not found'
            ], 404);
        }
    }

    public function food_post()
    {
        \Cloudinary\Uploader::upload($this->input->post('path'));
        $data = array(
            'name' => $this->input->post('food'), 
        );
        if ($this->food->postFood($data) > 0) {
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

}

/* End of file Food.php */
