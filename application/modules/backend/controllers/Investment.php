<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Investment extends MY_Controller{

  public function __construct()
  {

    parent::__construct();
    if (profile("is_complate")=="0" OR profile("is_complate_berkas")=="0") {
        redirect("backend/wizard/index_wizard");
    }
    $this->load->model("investment_model","model");
  }

  function index()
  {
    $this->template->set_title("Investment");
    $data['row'] = $this->model->get_data();
    $this->template->view("content/investment/index",$data);
  }

  function profit()
  {
    $this->template->set_title("Investment");
    $data['row'] = $this->model->get_data_profit();
    $this->template->view("content/investment/index_profit",$data);
  }


  function dividen()
  {
    $this->template->set_title("Comission");
    $this->template->view("content/investment/index_dividen");
  }

  function json_dividen()
  {
    $this->load->library('Datatables');
    header('Content-Type: application/json');
    echo $this->model->json_dividen();
  }


  function detail($id="")
  {
    if ($row =  $this->model->get_where("investment",['id_person'=>sess('id_person'),'id_invest'=>dec_uri($id)])) {
      $this->template->set_title("Investment");
      $data['row'] = $row;
      $this->template->view("content/investment/detail",$data);
    }
  }


  function add($val="")
  {
    $this->template->set_title("Investment");
    $data['action'] =  site_url("backend/investment/add_action");
    $data['value'] = $val;
    $this->template->view("content/investment/form",$data);
  }

  function add_action()
    {
      if ($this->input->is_ajax_request()) {
          if (setting_financial("invesment_status")=="on") {
            $json = array('success'=>false, 'alert'=>array(), 'url'=>array(),'header_alert'=>array());
            $this->form_validation->set_rules("amount","&nbsp;*","trim|xss_clean|required|callback__cek_investment");
            $this->form_validation->set_rules("password","*&nbsp;","trim|xss_clean|required|callback__cek_password");
            $this->form_validation->set_error_delimiters('<span class="error ml-1 text-danger" style="font-size:11px">','</span>');
            if ($this->form_validation->run()) {
              //kontrak
              $masa_kontrak = setting_financial("invesment_kontrak");
              $tgl = date("d");

              if ($tgl >= "01" AND $tgl <= "14") {
                $kontrak_start = date("Y-m")."-01";
                $group = 1;
              }elseif ($tgl >= "15" AND $tgl <= "20") {
                $kontrak_start = date("Y-m")."-15";
                $group = 15;
              }else {
                $kontrak_start = 000;
              }

              if ($kontrak_start!=000) {
                $kontrak_end = date('Y-m-d', strtotime("+$masa_kontrak month", strtotime($kontrak_start)));


                $amount =replace_rupiah($this->input->post("amount"));
                $kode = $this->_kode();
                $data = [
                           "kode_invest"    => $kode,
                           "id_person"      => sess('id_person'),
                           "amount"         => $amount,
                           "group"         => $group,
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


              $this->load->library('ciqrcode'); //pemanggilan library QR CODE

               $config['cacheable']    = true; //boolean, the default is true
               $config['cachedir']     = './_template/files/'.enc_uri(profile("kode_person"))."/"; //string, the default is application/cache/
               $config['errorlog']     = './_template/files/'.enc_uri(profile("kode_person"))."/"; //string, the default is application/logs/
               $config['imagedir']     = './_template/files/'.enc_uri(profile("kode_person"))."/"; //direktori penyimpanan qr code
               $config['quality']      = true; //boolean, the default is true
               $config['size']         = '224'; //interger, the default is 1024
               $config['black']        = array(224,255,255); // array, default is array(255,255,255)
               $config['white']        = array(70,130,180); // array, default is array(0,0,0)
               $this->ciqrcode->initialize($config);

               $image_name="qr_".$kode.'.png'; //buat name dari qr code sesuai dengan nim

               $params['data'] = "qr_".$kode; //data yang akan di jadikan QR CODE
               $params['level'] = 'H'; //H=High
               $params['size'] = 10;
               $params['savename'] = FCPATH.$config['imagedir'].$image_name; //simpan image QR CODE ke folder assets/images/
               $this->ciqrcode->generate($params); // fungsi untuk generate QR CODE


               $json['header_alert'] = "success";
               $json['alert'] = "Send To Investment successfully";
             }else {
               $json['header_alert'] = "error";
               $json['alert'] = "Invest sudah tertutup, silahkan kembali tgl 1 s/d 5 dan 15 s/d 20";
             }

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
          $kode_person = profile('kode_person');
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
              return $kode_person."-INV".$kd;
        }



    function get_spk($id="")
    {
      if ($id!="") {
        if ($row = $this->model->get_detail_invest($id)) {
          $this->load->library('Pdfgenerator');
          $data["row"] = $row;
          $html = $this->load->view('content/investment/spk',$data,true);
          $filename = 'report_'.time();
          $this->pdfgenerator->generate($html, $filename, true, 'A4', 'portrait');
        }
      }
    }


function omset()
{
  $this->template->set_title("Omset");
  $this->template->view("content/investment/omset");
}

function json_omset()
{
  $this->load->library('Datatables');
  header('Content-Type: application/json');
  echo $this->model->json_omset();
}


}
