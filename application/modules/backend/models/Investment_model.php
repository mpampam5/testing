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

}
