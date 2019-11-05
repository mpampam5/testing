<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Investment_model extends MY_Model{

  function get_data()
  {
    $qry = $this->db->select("investment.id_invest,
                            	investment.kode_invest,
                            	investment.id_person,
                            	investment.amount,
                            	investment.status,
                            	investment.created ")
                   ->from("investment")
                   ->where("investment.id_person",sess("id_person"))
                   ->order_by("id_invest","desc")
                   ->get();
    return $qry;
  }


  function get_data_profit()
  {
    $qry = $this->db->select("investment_profit.id_invest_profit,
                              investment_profit.id_invest,
                              investment_profit.no_profit,
                              investment_profit.time_profit,
                              investment_profit.name_profit,
                              investment_profit.amount_profit,
                              investment.kode_invest,
                              investment.amount")
                   ->from("investment_profit")
                   ->join("investment","investment.id_invest = investment_profit.id_invest")
                   ->where("investment.id_person",sess("id_person"))
                   ->where("investment_profit.amount_profit !=","")
                   ->order_by("id_invest_profit","desc")
                   ->get();
    return $qry;
  }


  function json_dividen()
  {
    $this->datatables->select("investment_dividen.id_invest_dividen,
                              investment_dividen.id_invest,
                              investment_dividen.id_person,
                              investment_dividen.no_dividen,
                              DATE_FORMAT(investment_dividen.time_dividen,'%d-%m-%Y') AS time_dividen,
                              investment_dividen.persentase,
                              FORMAT(investment_dividen.amount,0) AS amount_dividen,
                              investment.kode_invest,
                              FORMAT(investment.amount,0) AS amount_invest,
                              tb_person.kode_person,
                              tb_person.nama,
                              auth_person.username");
    $this->datatables->from("investment_dividen");
    $this->datatables->join("investment","investment.id_invest = investment_dividen.id_invest");
    $this->datatables->join("tb_person","tb_person.id_person = investment_dividen.id_person");
    $this->datatables->join("auth_person","auth_person.id_person = investment.id_person");
    $this->datatables->where("investment_dividen.id_person",sess("id_person"));
    return $this->datatables->generate();
  }




  function get_detail_invest($id)
  {
    $qry = $this->db->select("investment.id_invest,
                              investment.kode_invest,
                              investment.id_person,
                              investment.amount,
                              investment.`status`,
                              investment.created,
                              investment.kontrak_start,
                              investment.kontrak_end,
                              tb_person.kode_person,
                              tb_person.nik,
                              tb_person.nama,
                              tb_person.tempat_lahir,
                              tb_person.tanggal_lahir,
                              tb_person.alamat,
                              tb_person.telepon1,
                              tb_person.telepon2,
                              rekening_person.nama_rekening,
                              rekening_person.no_rekening,
                              rekening_person.bank,
                              rekening_person.file_foto_rek,
                              tb_person.file_foto,
                              tb_person.file_ktp")
                    ->from("investment")
                    ->join("tb_person","tb_person.id_person = investment.id_person","left")
                    ->join("rekening_person","rekening_person.id_person = tb_person.id_person","left")
                    ->where("investment.id_invest",dec_uri($id))
                    ->where("investment.id_person",sess("id_person"))
                    ->get()
                    ->row();
    return $qry;
  }


  function json_omset()
  {

    $ses = $this->btree->get_all_id_children(sess('id_person'));
    $this->datatables->select("investment.id_invest,
                                investment.kode_invest,
                                investment.id_person,
                                FORMAT(investment.amount,0) AS amount,
                                investment.status,
                                DATE_FORMAT(investment.created,'%d-%m-%Y') AS created,
                                DATE_FORMAT(investment.kontrak_start,'%d-%m-%Y') AS kontrak_start,
                                DATE_FORMAT(investment.kontrak_end,'%d-%m-%Y') AS kontrak_end,
                                tb_person.kode_person,
                                tb_person.nama,
                                auth_person.username");
    $this->datatables->from("investment");
    $this->datatables->join("tb_person","tb_person.id_person = investment.id_person");
    $this->datatables->join("auth_person","auth_person.id_person = investment.id_person");
    $this->datatables->where("investment.status","ongoing");
    $this->datatables->where_in("investment.id_person",$ses);
    return $this->datatables->generate();

  }

}
