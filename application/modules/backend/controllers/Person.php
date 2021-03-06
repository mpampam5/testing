<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Person extends MY_Controller{

  public function __construct()
  {
    parent::__construct();
    if (profile("is_complate")=="0" OR profile("is_complate_berkas")=="0") {
        redirect("backend/wizard/index_wizard");
    }
    $this->load->model("Person_model","model");
  }


  function _rules()
  {
    $this->form_validation->set_rules("nama","*&nbsp;","trim|xss_clean|htmlspecialchars|required");
    $this->form_validation->set_rules("telepon1","*&nbsp;","trim|xss_clean|required|numeric");
    $this->form_validation->set_rules("telepon2","*&nbsp;","trim|xss_clean|numeric");
    $this->form_validation->set_rules("tempat_lahir","*&nbsp;","trim|xss_clean|required|htmlspecialchars");
    $this->form_validation->set_rules("tanggal_lahir","*&nbsp;","trim|xss_clean|required|htmlspecialchars");
    $this->form_validation->set_rules("alamat","*&nbsp;","trim|xss_clean|required|htmlspecialchars");
    $this->form_validation->set_rules("pekerjaan","*&nbsp;","trim|xss_clean|htmlspecialchars");
    $this->form_validation->set_rules("nama_ahli_waris","*&nbsp;","trim|xss_clean|htmlspecialchars");
    $this->form_validation->set_rules("hubungan_ahli_waris","*&nbsp;","trim|xss_clean|htmlspecialchars");
    $this->form_validation->set_rules("telepon_ahli_waris","*&nbsp;","trim|xss_clean|numeric");
    $this->form_validation->set_rules("alamat_ahli_waris","*&nbsp;","trim|xss_clean|htmlspecialchars");
    $this->form_validation->set_rules("nama_rekening","*&nbsp;","trim|xss_clean|htmlspecialchars");
    $this->form_validation->set_rules("no_rekening","*&nbsp;","trim|xss_clean|htmlspecialchars|numeric");
    $this->form_validation->set_rules("bank","*&nbsp;","trim|xss_clean|htmlspecialchars");
    $this->form_validation->set_rules("status_level","*&nbsp;","trim|xss_clean|required|numeric");
    $this->form_validation->set_error_delimiters('<span class="error mt-1 text-danger" style="font-size:11px">','</span>');
  }

  function index()
  {
    $this->template->set_title("Master Person");
    $this->template->view("content/person/index");
  }

  function json()
  {
    if ($this->input->is_ajax_request()) {
      $list = $this->model->get_datatables();
      $data = array();
      foreach ($list as $rows) {
          $row = array();
          $row[] = '<span class="data-person-mem text-primary"><i class="ti-id-badge"></i> '.$rows->kode_person.'</span>
                    <span class="data-person-mem"><i class="ti-star"></i> '.strtoupper($rows->level).'</span>
                    <span class="data-person-mem"><i class="ti-user"></i> '.$rows->nama.'</span>
                    <span class="data-person-mem"><i class="ti-pin2"></i> '.$rows->username.'</span>';
          $row[] = "Rp.".format_rupiah(balance_member($rows->id_person));
          $row[] = ($rows->is_active=="1") ? '<span class="badge badge-success"> Aktif</span>':'<span class="badge badge-danger">Tidak Aktif</span>';

          $row[] = '<a href="'.site_url("backend/person/detail/".enc_uri($rows->id_person)).'" class="badge badge-success text-white" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="DETAIL"><i class="ti-zoom-in"></i></a>
                   ';

          $data[] = $row;
      }

      $output = array(
                      "draw" => $_POST['draw'],
                      "recordsTotal" => $this->model->count_all(),
                      "recordsFiltered" => $this->model->count_filtered(),
                      "data" => $data,
              );
      //output to json format
      echo json_encode($output);
    }
  }

  function detail($id="")
    {
      if ($row = $this->model->get_where_person(dec_uri($id))) {
          $this->template->set_title("Person");
          $data['row'] = $row;
          $this->template->view("content/person/detail",$data);
      }else {
        $this->_error404();
      }
    }

  function add()
    {
      if (profile("id_level")==3) {
        $this->template->set_title("Person");
        $data = [
                  "action"          => site_url("backend/person/add_action"),
                  "button"          => "add",
                  "nik"             => set_value("nik"),
                  "nama"            => set_value("nama"),
                  "email"           => set_value("email"),
                  "telepon"         => set_value("telepon"),
                  "tempat_lahir"    => set_value("tempat_lahir"),
                  "tanggal_lahir"   => set_value("tanggal_lahir"),
                  "telepon1"        => set_value("telepon1"),
                  "telepon2"        => set_value("telepon2"),
                  "pekerjaan"        => set_value("pekerjaan"),
                  "alamat"          => set_value("alamat"),
                  "waris_nama"      => set_value("waris_nama"),
                  "waris_telepon"   => set_value("waris_telepon"),
                  "waris_alamat"    => set_value("waris_alamat"),
                  "waris_hubungan"  => set_value("waris_hubungan"),
                  "username"  => set_value("username"),
                  "no_rekening"  => set_value("no_rekening"),
                  "nama_rekening"  => set_value("nama_rekening"),
                  "bank"  => set_value("bank"),
                  "status"  => set_value("status"),
                  "level"  => set_value("level"),
                  "is_parent"  => set_value("is_parent")
                ];
        $this->template->view("content/person/form",$data);
      }
    }


    function add_action()
        {
          if ($this->input->is_ajax_request()) {
            if (profile("id_level")==3) {
              $json = array('success'=>false, 'alert'=>array(), 'url'=>array());
              $this->form_validation->set_rules("nik","&nbsp;*","trim|xss_clean|min_length[16]|max_length[16]|required|numeric|callback__cek_nik");
              $this->form_validation->set_rules("email","*&nbsp;","trim|xss_clean|required|valid_email|callback__cek_email");
              $this->form_validation->set_rules("username","*&nbsp;","trim|xss_clean|htmlspecialchars|required|alpha_numeric|min_length[5]|is_unique[auth_person.username]",[
                "is_unique" => "* sudah digunakan"]);
              $this->_rules();
              if ($this->form_validation->run()) {
                // $level = $this->input->post("status_level",true);
                // if (profile("id_level")==1) {
                //   $kd = "COF";
                //   $lev =  2;
                // }elseif (profile("id_level")==2) {
                //   $kd = "AGN";
                //   $lev =  3;
                // }elseif (profile("id_level")==3) {
                //   $kd = "MEM";
                //   $lev =  4;
                // }
                $kd_person = $this->_kd_reg("MEM");
                $data = [
                          "kode_person"   => $kd_person,
                          "is_parent"     => sess("id_person"),
                          "id_level"     => 4,
                          "nik"          => $this->input->post("nik",true),
                          "nama"          => $this->input->post("nama",true),
                          "telepon1"      => $this->input->post("telepon1",true),
                          "telepon2"      => $this->input->post("telepon2",true),
                          "email"         => $this->input->post("email",true),
                          "tempat_lahir"  => $this->input->post("tempat_lahir",true),
                          "tanggal_lahir" => $this->input->post("tanggal_lahir",true),
                          "pekerjaan"     => $this->input->post("pekerjaan",true),
                          "alamat"        => $this->input->post("alamat",true),
                          "waris_nama"    => $this->input->post("nama_ahli_waris",true),
                          "waris_telepon" => $this->input->post("telepon_ahli_waris",true),
                          "waris_hubungan" => $this->input->post("hubungan_ahli_waris",true),
                          "waris_alamat"  => $this->input->post("alamat_ahli_waris",true),
                          "created"       => date('Y-m-d H:i:s')
                        ];

                $this->model->get_insert("tb_person",$data);

                $id_person = $this->db->insert_id();
                $this->load->helper('pass_has');
                $token = enc_uri(date('dmYhis'));
                $data_auth = ["id_person" => $id_person,
                              "username" => strtolower($this->input->post("username",true)),
                              "token" => $token,
                              "password"    => pass_encrypt($token,strtolower($this->input->post("username",true))),
                              "created"       => date('Y-m-d H:i:s')
                ];
                $this->model->get_insert("auth_person",$data_auth);


                $data_rekening=["id_person"       => $id_person,
                                "bank"            =>  $this->input->post("bank",true),
                                "no_rekening"     =>  $this->input->post("no_rekening",true),
                                "nama_rekening"   =>  $this->input->post("nama_rekening",true),
                ];
                $this->model->get_insert("rekening_person",$data_rekening);


                $data_email = ["id_register"  => $kd_person,
                              "email"         => $this->input->post("email",true),
                              "tempat_lahir"  => $this->input->post("tempat_lahir",true),
                              "tanggal_lahir" => $this->input->post("tanggal_lahir",true),
                              "telepon"      => $this->input->post("telepon1",true),
                              "nik"         => $this->input->post("nik",true),
                              "nama"        => $this->input->post("nama",true),
                              "username" => $this->input->post("username",true),
              ];

                $this->_send_email($data_email);

                $json['alert'] = "add data successfully";
                $json['success'] =  true;
                $json['url'] =  site_url("backend/person");
              }else {
                foreach ($_POST as $key => $value)
                  {
                    $json['alert'][$key] = form_error($key);
                  }
              }

              echo json_encode($json);
          }
        }
      }


      function _send_email($data_email)
      {


          $subject  = "Data Membership";

          $template = $this->load->view('content/person/template_email',$data_email,TRUE);

          $config['charset']      = 'utf-8';
          $config['protocol']     = "smtp";
          $config['mailtype']     = "html";
          $config['smtp_host']    = "ssl://cheetahfibonacci.com";//pengaturan smtp
          $config['smtp_port']    = 465;
          $config['smtp_user']    = "no-reply@cheetahfibonacci.com"; // isi dengan email kamu
          $config['smtp_pass']    = "@@111111qwerty"; // isi dengan password kamu
          $config['smtp_timeout'] = 4; //4 second
          $config['crlf']         = "\r\n";
          $config['newline']      = "\r\n";

          $this->load->library('email',$config);
          //konfigurasi pengiriman

          $this->email->from($config['smtp_user'], setting_system("title"));
          $this->email->to($data_email['email']);
          $this->email->subject($subject);
          $this->email->message($template);
          if ($this->email->send()) {
            return true;
          }else {
            return false;
        }
      }

    function _kd_reg($str)
    {
      $query = $this->db->select("MAX(kode_person) AS kd_max")
                        ->like("kode_person","$str")
                        ->get("tb_person")
                        ->row();
      $kdMax = $query->kd_max;
      $noUrut = (int) substr($kdMax, 4, 6);
      $noUrut++;
      $char = "$str-";
      $kdMax = $char . sprintf("%06s", $noUrut);
      return $kdMax;
    }


    //callbackk
    function _cek_nik($str)
      {
        $where =  array("nik"=>$str);
        if ($this->model->get_where("tb_person",$where)) {
          $this->form_validation->set_message('_cek_nik', '%s sudah digunakan.');
          return false;
        } else {
          return true;
        }
      }

      function _cek_email($str)
      {
        $where =  array("email"=>$str);
        if ($this->model->get_where("tb_person",$where)) {
          $this->form_validation->set_message('_cek_email', '{field} sudah digunakan.');
          return false;
        } else {
          return true;
        }
      }






      // function cek_temp()
      // {
      //
      //   $data_email = array('id_register' => "MEM09348920",
      //                       'nik' => "1234567890342432",
      //                       'nama' => "muhammad irfan ibnu",
      //                       'email' => "mpampam5@gmail.com",
      //                       'telepon' => "0432423423",
      //                       'username' => "mpampam8888",
      //                       'password' => "2wsx.lo9",
      //                       );
      //   // $this->load->view('content/register/template_emails',$data_email);
      //   $this->_send_email($data_email);
      // }

}
