<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Deposit_model extends MY_Model{

  function json($status)
  {
    $this->datatables->select("deposit.id_deposit,
                              deposit.kode_transaksi,
                              deposit.id_person,
                              FORMAT(deposit.amount,0) AS amount,
                              deposit.status,
                              deposit.keterangan,
                              deposit.metode_pembayaran,
                              DATE_FORMAT(deposit.created, '%d/%m/%Y %H:%i') AS created,
                              setting_rekening.nama_rekening,
                              setting_rekening.no_rekening,
                              setting_rekening.bank");
    $this->datatables->from("deposit");
    $this->datatables->join("setting_rekening","setting_rekening.id_rekening = deposit.metode_pembayaran");
    $this->datatables->where("deposit.id_person",sess("id_person"));
    if ($status!="approved") {
      $this->datatables->where("deposit.status !=","approved");
    }else {
      $this->datatables->where("deposit.status","approved");
    }
    $this->datatables->add_column("action",'
                                      <a href="'.site_url("backend/deposit/detail/$status/$1").'" class="badge badge-success text-white" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="DETAIL"><i class="ti-zoom-in"></i></a>
                                      ',"id_deposit");
    return $this->datatables->generate();
  }


  function get_where_detail($status,$id)
  {
    $this->db->select("deposit.id_deposit,
                              deposit.kode_transaksi,
                              deposit.id_person,
                              deposit.amount,
                              deposit.status,
                              deposit.keterangan,
                              deposit.metode_pembayaran,
                              deposit.created,
                              setting_rekening.nama_rekening,
                              setting_rekening.no_rekening,
                              setting_rekening.bank");
      $this->db->from("deposit");
      $this->db->join("setting_rekening","setting_rekening.id_rekening = deposit.metode_pembayaran");
      $this->db->where("deposit.id_deposit",$id);
      $this->db->where("deposit.id_person",sess("id_person"));
      if ($status!="approved") {
        $this->db->where("deposit.status !=","approved");
      }else {
        $this->db->where("deposit.status","approved");
      }
      $qry = $this->db->get();
      return $qry->row();
  }

}
