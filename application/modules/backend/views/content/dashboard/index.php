<link rel="stylesheet" href="<?=base_url()?>_template/front/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<script src="<?=base_url()?>_template/front/vendors/datatables.net/jquery.dataTables.js"></script>
<script src="<?=base_url()?>_template/front/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>

          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-5 mb-4 mb-xl-0">
                  <h4 class="font-weight-bold">Hi, Welcome!</h4>
                  <h4 class="font-weight-normal mb-0"><?=ucfirst(profile("nama"))?></h4>
                </div>
                <div class="col-12 col-xl-7">
                  <div class="d-flex align-items-center justify-content-between flex-wrap">
                    <div class="border-left pl-2 mb-3 mb-xl-0 profile-dash">
                      <p class="text-muted"><i class="ti-id-badge"></i> ID.REG</p>
                      <h4 class="mb-0 font-weight-bold"><?=profile("kode_person")?></h4>
                    </div>
                    <div class="border-left pl-2 mb-3 mb-xl-0 profile-dash">
                      <p class="text-muted"><i class="ti-user"></i> Username</p>
                      <h4 class="mb-0 font-weight-bold"><?=profile("username")?></h4>
                    </div>
                    <div class="border-left pl-2 mb-3 mb-xl-0 profile-dash">
                      <p class="text-muted"><i class="ti-stats-up"></i> Status Level</p>
                      <h4 class="mb-0 font-weight-bold"><?=strtoupper(profile("level"))?></h4>
                    </div>
                    <div class="border-left pl-2 mb-3 mb-xl-0 profile-dash">
                      <p class="text-muted"><i class="ti-wallet"></i> Deposit</p>
                      <h4 class="mb-0 font-weight-bold text-success">Rp.<?=format_rupiah(balance())?></h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <?php if (profile("is_complate")=="0" OR profile("is_complate_berkas")=="0"): ?>
            <div class="row">
              <div class="col-md-12 mb-2 stretch-card">
                <div class="card">
                  <div class="card-body text-center">
                    <p style="font-size:12px;">Mungkin beberapa fitur tidak dapat anda gunakan. Silahkan Lengkapi data anda.</p>
                    <a href="<?=site_url("backend/wizard")?>" class="badge badge-primary"> Lengkapi data</a>
                  </div>
                </div>
              </div>
            </div>

            <?php else: ?>
              <?php if (setting_financial("invesment_status")=="on"): ?>
              <div class="row  mb-4">
                <div class="col-md-7 mx-auto">
                  <div class="card ">
                    <div class="card-body pb-0">
                      <div class="form-group">
                        <div class="input-group">
                          <input type="text" class="form-control rupiah" id="value_invest" autocomplete="off" placeholder="Masukkan jumlah investasi anda">
                          <div class="input-group-append">
                            <button class="btn btn-sm btn-primary" id="invest" type="button">Invest</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            <?php endif; ?>
          <?php endif; ?>







          <div class="row">
            <div class="col-md-3 mb-2 stretch-card">
                <div class="card" style="background-color:#00c0ef;">
                  <a style="text-decoration:none;color:#fff" href="<?=site_url("backend/investment/dividen")?>">
                  <div class="card-body">
                    <p class="card-title text-md-center text-xl-left text-white">Comission</p>
                    <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                      <h5 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">Rp.<?=format_rupiah(total_investment_dividen())?></h5>
                      <i class="ti-share-alt icon-md mb-0 mb-md-3 mb-xl-0 text-white"></i>
                    </div>
                  </div>
                  </a>
                </div>
            </div>


            <div class="col-md-3 mb-2 stretch-card">
              <div class="card" style="background-color:#11a844;">
                <a style="text-decoration:none;color:#fff" href="<?=site_url("backend/investment/profit")?>">
                <div class="card-body">
                  <p class="card-title text-md-center text-xl-left text-white">Share Profit</p>
                  <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                    <h5 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">Rp.<?=format_rupiah(earning())?></h5>
                    <i class="ti-wallet icon-md text-white mb-0 mb-md-3 mb-xl-0"></i>
                  </div>
                </div>
              </a>
              </div>
            </div>


            <div class="col-md-3 mb-2 stretch-card">
              <div class="card" style="background-color:#dd4b39 ;">
                <a style="text-decoration:none;color:#fff" href="<?=site_url("backend/investment")?>">
                <div class="card-body">
                  <p class="card-title text-md-center text-xl-left text-white">Total Investment</p>
                  <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                    <h5 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">Rp.<?=format_rupiah(total_investment())?></h5>
                    <i class="ti-bookmark-alt icon-md text-white mb-0 mb-md-3 mb-xl-0"></i>
                  </div>
                </div>
              </a>
              </div>
            </div>

            <div class="col-md-3 mb-2 stretch-card">
              <div class="card" style="background-color:#f39c12;">
                <a href="<?=site_url("backend/investment/omset")?>" style="text-decoration:none;color:#fff">
                <div class="card-body">
                  <p class="card-title text-md-center text-xl-left text-white">Omset</p>
                  <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                    <h5 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">
                        Rp.<?=format_rupiah(omset($this->btree->get_all_id_children(sess('id_person'))))?>
                    </h5>
                    <i class="ti-layers-alt icon-md text-white mb-0 mb-md-3 mb-xl-0"></i>
                  </div>
                </div>
                </a>
              </div>
            </div>
          </div>

          <div class="row mt-3">
            <div class="col-md-12 mx-auto">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Investment History</h5>
                  <div class="table-responsive" style="min-height:100px!important">
                    <table id="table-invest" class="table table-bordered">
                      <thead class="bg-danger text-white">
                        <tr>
                          <th>KD.INVESTMENT</th>
                          <th>Date Invest</th>
                          <th>Amount</th>
                          <th>Status</th>
                        </tr>
                      </thead>
                      <?php
                      $invest = $this->db->select("investment.id_invest,
                                              	investment.kode_invest,
                                              	investment.id_person,
                                              	investment.amount,
                                              	investment.status,
                                              	investment.created ")
                                     ->from("investment")
                                     ->where("investment.id_person",sess("id_person"))
                                     ->order_by("id_invest","desc")
                                     ->limit(5)
                                     ->get();
                       ?>
                      <tbody>
                          <?php foreach ($invest->result() as $invest): ?>
                            <tr>
                              <td class="text-primary"><?=$invest->kode_invest?></td>
                              <td><?=date("d-m-Y",strtotime($invest->created))?></td>
                              <td>Rp.<?=format_rupiah($invest->amount)?></td>
                              <td>
                                <?php if ($invest->status=="ongoing"): ?>
                                  <span class="badge badge-success">ongoing</span>
                                  <?php else: ?>
                                  <span class="badge badge-danger">done</span>
                                <?php endif; ?>
                              </td>
                            </tr>
                          <?php endforeach; ?>



                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>



            <div class="col-md-12 mx-auto mt-2">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Comission</h5>
                  <div class="table-responsive" style="min-height:100px!important">
                    <h6>Total Comission <span class="text-primary">Rp.<?=format_rupiah(total_investment_dividen())?></span></h6>
                    <table id="table-comission" class="table table-bordered">
                      <thead class="bg-primary text-white">
                        <tr>
                          <th>Date</th>
                          <th>Data Invest</th>
                          <th>Comission</th>
                        </tr>
                      </thead>
                      <?php $dividen_dash = $this->db->select("investment_dividen.id_invest_dividen,
                                                              investment_dividen.id_invest,
                                                              investment_dividen.id_person,
                                                              investment_dividen.no_dividen,
                                                              DATE_FORMAT(investment_dividen.time_dividen,'%d-%m-%Y') AS time_dividen,
                                                              investment_dividen.persentase,
                                                              FORMAT(investment_dividen.amount,0) AS amount_dividen,
                                                              investment.id_person,
                                                              investment.kode_invest,
                                                              FORMAT(investment.amount,0) AS amount_invest,
                                                              tb_person.nama,
                                                              auth_person.username")
                                                    ->from("investment_dividen")
                                                    ->join("investment","investment.id_invest = investment_dividen.id_invest")
                                                    ->where("investment_dividen.id_person",sess("id_person"))
                                                    ->join("tb_person","tb_person.id_person = investment.id_person")
                                                    ->join("auth_person","auth_person.id_person = investment.id_person")
                                                    ->limit(5)
                                                    ->get() ?>
                      <tbody>
                        <?php foreach ($dividen_dash->result() as $didash): ?>
                          <tr>
                            <td><?=$didash->time_dividen?></td>
                            <td><span class="text-info"><?=$didash->kode_invest?></span> <i class="ti-angle-double-right"></i> <span class="text-success">Rp.<?=$didash->amount_invest?></span> <i class="ti-angle-double-right"></i> profit ke-<?=$didash->no_dividen?> <i class="ti-angle-double-right"></i> <span class="text-primary"> <?=$didash->username?></span> <i class="ti-angle-double-right"></i> <span class="text-primary"><?=$didash->nama?></span></td>
                            <td><span class="text-success">Rp.<?=$didash->amount_dividen?> (<?=$didash->persentase?>%)</span></td>
                          </tr>
                        <?php endforeach; ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>



<script type="text/javascript">
<?php if (setting_financial("invesment_status")=="on"): ?>
$(document).ready(function(){
  $('.rupiah').mask('00.000.000.000', {reverse: true});
});

$(document).on("click","#invest",function(e)
{
  e.preventDefault();
    var value = $("#value_invest").val();
    num = value.replace(/\./g,'');
    window.location.href = "<?=base_url()?>backend/investment/add/"+num+".html";
});
<?php endif; ?>


$('#table-invest').DataTable({
  "lengthChange": false,
  "searching": false,
  "info": false,
  "ordering":false,
  "paging":false,
  "columnDefs": [
    {
        "className": "text-center",
        "targets": 3
    },
  ],
});


$('#table-comission').DataTable({
  "lengthChange": false,
  "searching": false,
  "info": false,
  "ordering":false,
  "paging":false
});




</script>
