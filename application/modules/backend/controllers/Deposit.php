<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Deposit extends MY_Controller{

  public function __construct()
  {
    parent::__construct();
    $this->load->model("Deposit_model","model");
  }

  function get($status="")
  {
    if ($status!="") {
      $this->template->set_title("Deposit");
      $this->template->view("content/deposit/index_$status");
    }
  }

  function json($status="")
  {
    $this->load->library('Datatables');
    header('Content-Type: application/json');
    echo $this->model->json($status);
  }


  function detail($status="",$id="")
  {
    if ($row = $this->model->get_where_detail($status,$id)) {
      $this->template->set_title("Deposit");
      $data['status'] = ucfirst($status);
      $data['row'] = $row;
      $this->template->view("content/deposit/detail",$data);
    }
  }

  function add()
  {
    $this->template->set_title("Deposit");
    $data['action'] = site_url("backend/deposit/add_action");
    $this->template->view("content/deposit/form",$data);
  }


  function add_action()
    {
      if ($this->input->is_ajax_request()) {
          $json = array('success'=>false, 'alert'=>array(), 'url'=>array());
          $this->form_validation->set_rules("amount","&nbsp;*","trim|xss_clean|required|callback__cek_deposit");
          $this->form_validation->set_rules("metode_pembayaran","*&nbsp;","trim|xss_clean|required|numeric");
          $this->form_validation->set_error_delimiters('<span class="error ml-1 text-danger" style="font-size:11px">','</span>');
          if ($this->form_validation->run()) {

            $randomNum = substr(str_shuffle("1234567"), 0, 3);
            $amount =replace_rupiah($this->input->post("amount"));
            $amounts = substr_replace($amount,$randomNum,-3);
            if ($amount >= 5000000) {
              $biaya_admin = setting_financial("biaya_admin");
            }else {
              $biaya_admin = 0;
            }
            $data = [
                       "kode_transaksi" => $this->_kode(),
                       "id_person" => sess('id_person'),
                       "amount"    => $amounts,
                       "biaya_admin" => $biaya_admin,
                       "metode_pembayaran" => $this->input->post("metode_pembayaran"),
                       "created"   => date("Y-m-d H:i:s")
                  ];

            $this->model->get_insert("deposit",$data);

            $json['alert'] = "Deposit successfully";
            $json['success'] =  true;
            $json['url'] =  site_url("backend/deposit/get/process");
          }else {
            foreach ($_POST as $key => $value)
              {
                $json['alert'][$key] = form_error($key);
              }
          }

          echo json_encode($json);
      }
    }

function cancel($id)
{
  if ($this->input->is_ajax_request()) {
    $keterangan = [
      "di cancel oleh" => "member",
      "waktu" => date("d-m-Y H:i:s"),
      "keterangan" => "cancel"
    ];

    if ($this->model->get_update('deposit',["status"=>"cancel","keterangan"=>json_encode($keterangan)],["id_deposit"=>$id,"id_person"=>sess("id_person")])) {
        $json['success'] = "success";
        $json['alert']   = 'Cancel successfully';
    }
    echo json_encode($json);
  }
}

function _cek_deposit($str)
{
  if (replace_rupiah($str) < setting_financial("deposit_min")) {
      if (setting_financial("deposit_min")!=0) {
        $this->form_validation->set_message('_cek_deposit', 'Min Rp.'.format_rupiah(setting_financial('deposit_min')));
        return false;
      }else {
        return true;
      }
    }elseif (replace_rupiah($str) > setting_financial("deposit_max")) {
      if (setting_financial("deposit_max")!=0) {
        $this->form_validation->set_message('_cek_deposit', 'Max Rp.'.format_rupiah(setting_financial('deposit_max')));
        return false;
      }else {
        return true;
      }
    }else {
      return true;
    }
}


function _kode()
    {
      $q = $this->db->query("SELECT MAX(RIGHT(kode_transaksi,2)) AS kd_trans FROM deposit WHERE DATE(created)=CURDATE()");
          $kd = "";
          if($q->num_rows()>0){
              foreach($q->result() as $k){
                  $tmp = ((int)$k->kd_trans)+1;
                  $kd = sprintf("%02s", $tmp);
              }
          }else{
              $kd = "01";
          }
          return "DP".date('dmy')."-".$kd;
    }

}
