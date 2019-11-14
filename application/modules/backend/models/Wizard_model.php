<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Wizard_model extends MY_Model{

    function get_where_person()
    {
      $qry = $this->db->select("tb_person.id_person,
                                tb_person.kode_person,
                                tb_person.id_level,
                                tb_person.nik,
                                tb_person.nama,
                                tb_person.tempat_lahir,
                                tb_person.tanggal_lahir,
                                tb_person.telepon1,
                                tb_person.telepon2,
                                tb_person.email,
                                tb_person.pekerjaan,
                                tb_person.alamat,
                                tb_person.file_foto,
                                tb_person.file_ktp,
                                tb_person.waris_nama,
                                tb_person.waris_hubungan,
                                tb_person.waris_telepon,
                                tb_person.waris_alamat,
                                tb_person.ukuran_baju,
                                rekening_person.id_rekening_person,
                                rekening_person.nama_rekening,
                                rekening_person.no_rekening,
                                rekening_person.bank,
                                rekening_person.file_foto_rek,
                                auth_person.id_auth,
                                auth_person.username")
                ->from("tb_person")
                ->join("level_person","level_person.id_level = tb_person.id_level","left")
                ->join("rekening_person","rekening_person.id_person = tb_person.id_person","left")
                ->join("auth_person","auth_person.id_person = tb_person.id_person","left")
                ->where("tb_person.id_person",sess("id_person"))
                ->get()
                ->row();
      return $qry;
    }

}
