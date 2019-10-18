<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Investment extends MY_Controller{

  public function __construct()
  {
    parent::__construct();
    $this->load->model("investment_model","model");
  }

  function index()
  {
    $this->template->set_title("Investment");
    $data['row'] = $this->model->get_data();
    $this->template->view("content/investment/index",$data);
  }

  function detail($id="")
  {
    if ($row =  $this->model->get_where("investment",['id_person'=>sess('id_person'),'id_invest'=>dec_uri($id)])) {
      $this->template->set_title("Investment");
      $data['row'] = $row;
      $this->template->view("content/investment/detail",$data);
    }
  }


  function add()
  {
    $this->template->set_title("Investment");
    $data['action'] =  site_url("backend/investment/add_action");
    $this->template->view("content/investment/form",$data);
  }

  function add_action()
    {
      if ($this->input->is_ajax_request()) {
          if (setting_financial("invesment_status")=="on") {
            $json = array('success'=>false, 'alert'=>array(), 'url'=>array());
            $this->form_validation->set_rules("amount","&nbsp;*","trim|xss_clean|required|callback__cek_investment");
            $this->form_validation->set_rules("password","*&nbsp;","trim|xss_clean|required|callback__cek_password");
            $this->form_validation->set_error_delimiters('<span class="error ml-1 text-danger" style="font-size:11px">','</span>');
            if ($this->form_validation->run()) {
              //kontrak
              $masa_kontrak = setting_financial("invesment_kontrak");
              $tgl = date("d");

              if ($tgl >= "01" AND $tgl <= "05") {
                $kontrak_start = date("Y-m")."-01";
              }elseif ($tgl >= "15" AND $tgl <= "20") {
                $kontrak_start = date("Y-m")."-15";
              }

              $kontrak_end = date('Y-m-d', strtotime("+$masa_kontrak month", strtotime($kontrak_start)));


              $amount =replace_rupiah($this->input->post("amount"));

              $data = [
                         "kode_invest"    => $this->_kode(),
                         "id_person"      => sess('id_person'),
                         "amount"         => $amount,
                         "kontrak_start"  => $kontrak_start,
                         "kontrak_end"    => $kontrak_end,
                         "created"        => date("Y-m-d H:i:s")
                    ];

              $this->model->get_insert("investment",$data);

              $last_id = $this->db->insert_id();

              $kontrak_profit = setting_financial("invesment_kontrak")+1;

              for ($i=1; $i < $kontrak_profit ; $i++) {
                $kontrak = date('Y-m-d', strtotime("+$i month", strtotime($kontrak_start)));
                $insert_profit_column = ["id_invest" => $last_id,
                                         "time_profit" => $kontrak,
                                         "no_profit" => $i,
                                         "name_profit" => "Profit ke $i",
                                         "amount_profit" => null
                                        ];
                $this->model->get_insert("investment_profit",$insert_profit_column);
              }


              $json['alert'] = "Send To Investment successfully";
              $json['success'] =  true;
              $json['url'] =  site_url("backend/investment");
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

    function _cek_investment($str)
    {
      if (balance() >= replace_rupiah($str)) {
        if (replace_rupiah($str) < setting_financial("invesment_min")) {
            if (setting_financial("invesment_min")!=0) {
              $this->form_validation->set_message('_cek_investment', 'Min Rp.'.format_rupiah(setting_financial('invesment_min')));
              return false;
            }else {
              return true;
            }
          }elseif (replace_rupiah($str) > setting_financial("invesment_max")) {
            if (setting_financial("invesment_max")!=0) {
              $this->form_validation->set_message('_cek_investment', 'Max Rp.'.format_rupiah(setting_financial('invesment_max')));
              return false;
            }else {
              return true;
            }
          }else {
            return true;
          }
      }else {
        $this->form_validation->set_message('_cek_investment', '* Balance anda tidak mencukupi.');
        return false;
      }
    }


    function _kode()
        {
          $q = $this->db->query("SELECT MAX(RIGHT(kode_invest,3)) AS kd_trans FROM investment WHERE DATE(created)=CURDATE()");
              $kd = "";
              if($q->num_rows()>0){
                  foreach($q->result() as $k){
                      $tmp = ((int)$k->kd_trans)+1;
                      $kd = sprintf("%03s", $tmp);
                  }
              }else{
                  $kd = "001";
              }
              return profile('kode_person')."-INV".$kd;
        }


}
