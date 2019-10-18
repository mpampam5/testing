<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller{

  public function __construct()
  {
    parent::__construct();
    $this->load->helper(array('pass_has','backend'));
  }

  function index()
  {
    if ($this->session->userdata('members-logins')==true) {
        redirect(site_url("backend/dashboard"),"refresh");
    }else {
      $data['action'] = site_url("sign-in-action");
      $this->load->view("login/index",$data);
    }
  }


  function action()
  {
    if ($this->input->is_ajax_request()) {
      $json = array('success' => false,
                    "valid"=>false,
                    'url'=>"",
                    'alert'=>array()
                  );
      $this->load->library("form_validation");
      $this->form_validation->set_rules("username","*username","trim|xss_clean|required");
      $this->form_validation->set_rules("password","*password","trim|required");
      $this->form_validation->set_error_delimiters('<span class="text-danger">','</span>');


      if ($this->form_validation->run()) {
          $json["success"] = true;

          $username = $this->input->post("username");
          $password =  $this->input->post("password");

          $query =  $this->db->select("auth_person.id_person,
                                      auth_person.username,
                                      auth_person.password,
                                      auth_person.token,
                                      tb_person.is_active")
                            ->from("auth_person")
                            ->join("tb_person","tb_person.id_person = auth_person.id_person")
                            ->where("tb_person.is_active","1")
                            ->where("auth_person.username","$username")
                            ->get();

          if ($query->num_rows() > 0) {
              $row =  $query->row();

              $pwd =  $row->password;
              $token =  $row->token;

              if (pass_decrypt($token,$password,$pwd)===true) {
                $session = array('members-logins' => true,
                                 'id_person' => $row->id_person
                                );
                $this->session->set_userdata($session);

                $json['valid'] = true;
                $json['url'] = site_url("backend/dashboard");
              }else {
                $json['alert'] = "Username Atau Password Salah";
              }
          }else {
            $json['alert'] = "Username Atau Password Salah";
          }

      }else {
        foreach ($_POST as $key => $value) {
          $json['alert'][$key] = form_error($key);
        }
      }

      echo json_encode($json);
    }

  }


  function logout()
  {
    $this->session->sess_destroy();
    redirect(site_url("mem-panel"),'refresh');
  }

}
