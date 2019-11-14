<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Wizard extends MY_Controller{

  public function __construct()
  {
    parent::__construct();
    if (profile("is_complate")=="1" AND profile("is_complate_berkas")=="1") {
        redirect("backend/dashboard");
    }
    $this->load->model("Wizard_model","model");
  }

  function index()
  {
    $this->template->set_title("Lengkapi Data");
    $data["row"] = $this->model->get_where_person();
    $data['action'] = site_url("backend/wizard/personal");
    $this->template->view("content/wizard/index",$data);
  }

  function index_wizard()
  {
    $this->template->set_title("Lengkapi Data");
    $this->template->view("content/wizard/index_wizard");
  }


  function personal()
  {
    if ($this->input->is_ajax_request()) {
          $json = array('success'=>false, 'alert'=>array(), "url"=>array());
          $this->form_validation->set_rules("nik","&nbsp;*","trim|xss_clean|required|min_length[16]|max_length[16]|numeric|callback__cek_nik_update[".$this->input->post("nik_lama",true)."]");
          $this->form_validation->set_rules("email","&nbsp;*","trim|xss_clean|required|htmlspecialchars|valid_email|callback__cek_email_update[".$this->input->post("email_lama",true)."]");
          $this->form_validation->set_rules("nama","*&nbsp;","trim|xss_clean|htmlspecialchars|required");
          $this->form_validation->set_rules("telepon1","*&nbsp;","trim|xss_clean|required|numeric");
          $this->form_validation->set_rules("telepon2","*&nbsp;","trim|xss_clean|numeric");
          $this->form_validation->set_rules("tempat_lahir","*&nbsp;","trim|xss_clean|required|htmlspecialchars");
          $this->form_validation->set_rules("tanggal_lahir","*&nbsp;","trim|xss_clean|required|htmlspecialchars");
          $this->form_validation->set_rules("alamat","*&nbsp;","trim|xss_clean|required|htmlspecialchars");
          $this->form_validation->set_rules("pekerjaan","*&nbsp;","trim|xss_clean|htmlspecialchars|required");
          $this->form_validation->set_rules("nama_ahli_waris","*&nbsp;","trim|xss_clean|htmlspecialchars|required");
          $this->form_validation->set_rules("hubungan_ahli_waris","*&nbsp;","trim|xss_clean|htmlspecialchars|required");
          $this->form_validation->set_rules("telepon_ahli_waris","*&nbsp;","trim|xss_clean|numeric|required");
          $this->form_validation->set_rules("alamat_ahli_waris","*&nbsp;","trim|xss_clean|htmlspecialchars|required");
          $this->form_validation->set_rules("ukuran_baju","*&nbsp;","trim|xss_clean|htmlspecialchars|required");
          $this->form_validation->set_rules("nama_rekening","*&nbsp;","trim|xss_clean|htmlspecialchars|required");
          $this->form_validation->set_rules("no_rekening","*&nbsp;","trim|xss_clean|htmlspecialchars|required|numeric");
          $this->form_validation->set_rules("bank","*&nbsp;","trim|xss_clean|htmlspecialchars|required");
          $this->form_validation->set_error_delimiters('<span class="error mt-1 text-danger" style="font-size:11px">','</span>');
          if ($this->form_validation->run()) {
            $data = [ "nik"          => $this->input->post("nik",true),
                      "nama"          => $this->input->post("nama",true),
                      "telepon1"      => $this->input->post("telepon1",true),
                      "telepon2"      => $this->input->post("telepon2",true),
                      "email"         => $this->input->post("email",true),
                      "tempat_lahir"  => $this->input->post("tempat_lahir",true),
                      "tanggal_lahir" => $this->input->post("tanggal_lahir",true),
                      "pekerjaan"     => $this->input->post("pekerjaan",true),
                      "ukuran_baju"     => $this->input->post("ukuran_baju",true),
                      "alamat"        => $this->input->post("alamat",true),
                      "waris_nama"    => $this->input->post("nama_ahli_waris",true),
                      "waris_telepon" => $this->input->post("telepon_ahli_waris",true),
                      "waris_hubungan" => $this->input->post("hubungan_ahli_waris",true),
                      "waris_alamat"  => $this->input->post("alamat_ahli_waris",true),
                      "is_complate"  => "1",
                      "modified"       => date('Y-m-d H:i:s')
                    ];

            $this->model->get_update("tb_person",$data,["id_person" => sess("id_person")]);


            $data_rekening=[
                            "bank"            =>  $this->input->post("bank",true),
                            "no_rekening"     =>  $this->input->post("no_rekening",true),
                            "nama_rekening"   =>  $this->input->post("nama_rekening",true),
                          ];
            $this->model->get_update("rekening_person",$data_rekening,["id_person" => sess("id_person")]);

            $json['alert'] = "update data successfully";
            $json['success'] =  true;
            $json['url']  = site_url("backend/wizard/berkas");
          }else {
            foreach ($_POST as $key => $value)
              {
                $json['alert'][$key] = form_error($key);
              }
          }

          echo json_encode($json);
      }
  }


  function berkas()
  {
    $this->template->set_title("Lengkapi Data");
    $data["row"] = $this->model->get_where_person();
    $data['action'] = site_url("backend/wizard/is_complate");
    $this->template->view("content/wizard/berkas",$data);
  }



  function is_complate()
  {
    if ($this->input->is_ajax_request()) {
      $json = array('success'=>false, 'alert'=>array(), "url"=>array());
      $this->form_validation->set_rules("foto_personal","&nbsp;*","trim|xss_clean|required|callback__cek_file");
      $this->form_validation->set_rules("foto_ktp","&nbsp;*","trim|xss_clean|required|callback__cek_file");
      $this->form_validation->set_rules("foto_rek","&nbsp;*","trim|xss_clean|required|callback__cek_file");
      $this->form_validation->set_error_delimiters('<label class="error ml-1 text-danger" style="font-size:9px">','</label>');
      if ($this->form_validation->run()) {
        $data = [
                  "is_complate_berkas"  => "1"
                ];
        $this->model->get_update("tb_person",$data,["id_person" => sess("id_person")]);

        $json['alert'] = "update data successfully";
        $json['success'] =  true;
        $json['url']  = site_url("backend/dashboard");
      }else {
        foreach ($_POST as $key => $value)
          {
            $json['alert'][$key] = form_error($key);
          }
      }
      echo json_encode($json);
    }
  }



function _cek_file($str)
{
    $filename = "./_template/files/".enc_uri(profile("kode_person"))."/".$str;
  if (file_exists($filename)){
      return true;
  }else{
    $this->form_validation->set_message('_cek_file', '* silahkan upload berkas');
    return false;
  }
}

function _cek_nik_update($str,$nik_lama)
  {
    $row =  $this->db->get_where("tb_person",["nik !="=>$nik_lama,"nik"=>$str]);
    if ($row->num_rows() > 0) {
      $this->form_validation->set_message('_cek_nik_update', '* sudah digunakan');
      return false;
    }else {
      return true;
    }
  }

function _cek_email_update($str,$email_lama)
  {
    $row =  $this->db->get_where("tb_person",["email !="=>$email_lama,"email"=>$str]);
    if ($row->num_rows() > 0) {
      $this->form_validation->set_message('_cek_email_update', '* sudah digunakan');
      return false;
    }else {
      return true;
    }
  }

  function do_upload()
        {
          if ($this->input->is_ajax_request()) {
              $json = array('success' =>false , "alert"=> array(), "file_name"=>array());
              $image = "foto_".enc_uri(profile("kode_person")).".".pathinfo($_FILES['foto_personal']['name'], PATHINFO_EXTENSION);
              if (!file_exists('./_template/files/'.enc_uri(profile('kode_person')))) {
                  mkdir('./_template/files/'.enc_uri(profile('kode_person')), 0777, true);
              }
              $config['upload_path'] = "./_template/files/".enc_uri(profile('kode_person'))."/";
              $config['allowed_types'] = 'jpg';
              $config['overwrite'] = true;
              $config['max_size']  = '1024';
              $config['file_name']  = "$image";


              $this->load->library('upload', $config);

              if (!$this->upload->do_upload('foto_personal')){
                  $json['header_alert'] = "error";
                  $json['alert'] = "File tidak valid, format file harus jpg & ukuran maksimal 1mb";
              }else {
                  $where = array('id_person' => sess("id_person"));
                  $this->model->get_update("tb_person",["file_foto"=>$image],$where);
                  $json['header_alert'] = "success";
                  $json['file_name'] = $image;
                  $json['alert'] = "File upload successfully.";
                  $json['success'] = true;
              }

              echo json_encode($json);

        }
      }


  function do_upload_ktp()
        {
          if ($this->input->is_ajax_request()) {
              $json = array('success' =>false , "alert"=> array(), "file_name"=>array());
              $image = "ktp_".enc_uri(profile('kode_person')).".".pathinfo($_FILES['foto_ktp']['name'], PATHINFO_EXTENSION);
              if (!file_exists('./_template/files/'.enc_uri(profile('kode_person')))) {
                  mkdir('./_template/files/'.enc_uri(profile('kode_person')), 0777, true);
              }
              $config['upload_path'] = "./_template/files/".enc_uri(profile('kode_person'))."/";
              $config['allowed_types'] = 'jpg';
              $config['overwrite'] = true;
              $config['max_size']  = '1024';
              $config['file_name']  = "$image";


              $this->load->library('upload', $config);

              if (!$this->upload->do_upload('foto_ktp')){
                  $json['header_alert'] = "error";
                  $json['alert'] = "File tidak valid, format file harus jpg & ukuran maksimal 1mb";
              }else {
                  $where = array('id_person' => sess("id_person"));
                  $this->model->get_update("tb_person",["file_ktp"=>$image],$where);
                  $json['header_alert'] = "success";
                  $json['file_name'] = $image;
                  $json['alert'] = "File upload successfully.";
                  $json['success'] = true;
              }

              echo json_encode($json);

        }
      }





      function do_upload_rek()
            {
              if ($this->input->is_ajax_request()) {
                  $json = array('success' =>false , "alert"=> array(), "file_name"=>array());
                  $image = "rek_".enc_uri(profile('kode_person')).".".pathinfo($_FILES['foto_rek']['name'], PATHINFO_EXTENSION);
                  if (!file_exists('./_template/files/'.enc_uri(profile('kode_person')))) {
                      mkdir('./_template/files/'.enc_uri(profile('kode_person')), 0777, true);
                  }
                  $config['upload_path'] = "./_template/files/".enc_uri(profile('kode_person'))."/";
                  $config['allowed_types'] = 'jpg';
                  $config['overwrite'] = true;
                  $config['max_size']  = '1024';
                  $config['file_name']  = "$image";


                  $this->load->library('upload', $config);

                  if (!$this->upload->do_upload('foto_rek')){
                      $json['header_alert'] = "error";
                      $json['alert'] = "File tidak valid, format file harus jpg & ukuran maksimal 1mb";
                  }else {
                      $where = array('id_person' => sess("id_person"));
                      $this->model->get_update("rekening_person",["file_foto_rek"=>$image],$where);
                      $json['header_alert'] = "success";
                      $json['file_name'] = $image;
                      $json['alert'] = "File upload successfully.";
                      $json['success'] = true;
                  }

                  echo json_encode($json);

            }
          }













}
