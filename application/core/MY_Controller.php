<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller{


  public function __construct()
    {
      parent::__construct();
      if ($this->session->userdata('members-logins')!=true) {
          $this->session->sess_destroy();
          redirect(site_url("mem-panel"));
      }
      $this->load->helper(array("enc_gue","backend","tanggal_indonesia","balance"));
      $this->load->library(array('template','form_validation','btree'));
    }





    //CEK PASSWORD FORM VALIDATION
function _cek_password($str)
{
  if ($row = $this->model->get_where("auth_person",["id_person"=>sess('id_person')])) {
      $this->load->helper("pass_has");
      if (pass_decrypt($row->token,$str,$row->password)==true) {
        return true;
      }else {
        $this->form_validation->set_message('_cek_password', '* Password Salah');
        return false;
      }
  }else {
    $this->form_validation->set_message('_cek_password', '* Password Salah');
    return false;
  }
}

}
