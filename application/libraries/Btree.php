<?php

/**
 *
 */
class Btree
{
  private $ci;

  public $data = array();

  public function __construct()
    {
      $this->ci =& get_instance();
    }



  function get_all_id_children($id)
  {
    $qry = $this->ci->db->get_where("tb_person",['is_parent'=>$id]);
    if ($qry->num_rows() > 0) {
      foreach ($qry->result() as $row) {
        array_push($this->data, $row->id_person);
        $data[]= $this->get_all_id_children($row->id_person);
      }
    }
    $val = array_unique($this->data);
    return array_filter($val);
  }


}
