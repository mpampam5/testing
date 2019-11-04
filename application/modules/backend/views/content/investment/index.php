<link rel="stylesheet" href="<?=base_url()?>_template/front/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<script src="<?=base_url()?>_template/front/vendors/datatables.net/jquery.dataTables.js"></script>
<script src="<?=base_url()?>_template/front/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>

<style media="screen">
  tr td .data-person-mem{
    padding-right: 10px;
  }
</style>

<div class="row">
  <div class="col-md-9 mx-auto">
    <nav aria-label="breadcrumb mb-1">
      <ol class="breadcrumb bg-black">
        <li class="breadcrumb-item" aria-current="page">Investment</li>
        <li class="breadcrumb-item active" aria-current="page">All Investment</li>
      </ol>
    </nav>
  </div>

    <div class="col-md-9 mx-auto">
      <div class="card">
        <div class="card-body">
          <div class="table-responsive">
            <table id="table" class="table table-bordered">
              <thead class=" bg-black text-silver">
                <tr>
                  <th>KD.INVESTMENT</th>
                  <th>Date Invest</th>
                  <th>Amount</th>
                  <th>Status</th>
                  <th class="text-center">#</th>
                </tr>
              </thead>

              <tbody>
                  <?php foreach ($row->result() as $row): ?>
                    <tr>
                      <td class="text-primary"><?=$row->kode_invest?></td>
                      <td><?=date("d-m-Y",strtotime($row->created))?></td>
                      <td>Rp.<?=format_rupiah($row->amount)?></td>
                      <td>
                        <?php if ($row->status=="ongoing"): ?>
                          <span class="badge badge-success">ongoing</span>
                          <?php else: ?>
                          <span class="badge badge-danger">done</span>
                        <?php endif; ?>
                      </td>
                      <td>
                        <a href="<?=site_url("backend/investment/detail/".enc_uri($row->id_invest))?>" class="badge badge-primary" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Detail"><i class="ti-zoom-in"></i></a>
                      </td>
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
$('#table').DataTable({
  "lengthChange": false,
  "searching": false,
  "info": false,
  "ordering":false,
  "columnDefs": [
    {
        "className": "text-center",
        "targets": 3
    },
  ],
});
</script>
