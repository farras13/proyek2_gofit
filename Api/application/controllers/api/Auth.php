<?php
// use namespace
use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';

    class Auth extends REST_Controller {
    function __construct() {
            parent::__construct();
            $this->load->model('userModel','user');
        }

        public function login_post(){
            $usr = $this->post('username');
            $pass = $this->post('username');
            $user = $this->user->getUser($usr, $pass);
           

            if ($user) {
                $this->response([
                    'status' => "true", 
                    'data' => $user
                ], 200);
            } else {
                $this->response([
                    'status' => "false", 
                    'massage' => 'id not found'
                ], 404);
            }
        }

        public function register_post()
        {
            $data = [
                'name' => $this->post('name'),
                'username' => $this->post('username'),
                'password' => $this->post('password'),
                'date' => $this->post('date'),
                'gender' => $this->post('gender')
            ];
            if ($this->user->register($data) > 0) {
                $this->response([
                    'status' => "true",
                    'massage' => 'new user has been created'
                ], 200);
            } else {
                $this->response([
                    'status' => "false",
                    'massage' => 'Failed'
                ], 400);
            }   
        }
    }
/** End of file Auth.php **/