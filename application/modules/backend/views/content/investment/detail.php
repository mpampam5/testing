<div class="row">
  <div class="col-md-7 mx-auto">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb bg-black">
        <li class="breadcrumb-item" aria-current="page">Invesment</li>
        <li class="breadcrumb-item active" aria-current="page">Detail</li>
      </ol>
    </nav>
  </div>

  <div class="col-md-7 mx-auto mb-2">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title border-bottom">
          DETAIL INVESTMENT
          <span class="text-primary">#<?=$row->kode_invest?></span>
        </h5>
        <table class="table-detail">

          <tr>
            <th>KD.INVESTMENT</th>
            <td class="text-primary">: <?=$row->kode_invest?></td>
          </tr>

          <tr>
            <th>Date Invest</th>
            <td>: <?=date("d-m-Y",strtotime($row->created))?></td>
          </tr>

          <tr>
            <th>Amount</th>
            <td>: Rp.<?=format_rupiah($row->amount)?></td>
          </tr>


          <tr>
            <th>Masa Kontrak</th>
            <td>: <?=date("d-m-Y",strtotime($row->kontrak_start))?> s/d <?=date("d-m-Y",strtotime($row->kontrak_end))?></td>
          </tr>

          <tr>
            <th>Status</th>
            <td>:
              <?php if ($row->status=="ongoing"): ?>
                <span class="badge badge-success">ongoing</span>
                <?php else: ?>
                <span class="badge badge-danger">done</span>
              <?php endif; ?>
            </td>
          </tr>

        </table>



      </div>
    </div>
  </div>


  <div class="col-md-7 mx-auto mb-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Data Profit</h5>
        <table class="table table-bordered">
          <thead>
            <tr>
              <th class="text-center">Date</th>
              <th class="text-center">Profit</th>
              <th class="text-center">Amount</th>
            </tr>
          </thead>

          <tbody>
            <?php $profit = $this->db->get_where("investment_profit",["id_invest"=>$row->id_invest]); ?>
            <?php foreach ($profit->result() as $profit): ?>
            <tr>
              <td class="text-center text-primary"><?=date("d-m-Y", strtotime($profit->time_profit))?></td>
              <td class="text-center"><?=$profit->name_profit?></td>
              <td class="text-center"><?=$profit->amount_profit!="" ? "Rp.".format_rupiah($profit->amount_profit):"-"?></td>
            </tr>
            <?php endforeach; ?>
          </tbody>
        </table>



      </div>
    </div>
  </div>

  <div class="col-md-7 mx-auto text-center">
    <a href="<?=site_url("backend/investment/get_spk/".enc_uri($row->id_invest))?>" target="_blank" class="btn btn-primary btn-sm text-white"><i class="ti-download"></i> Download SPK</a>
  </div>


</div>
