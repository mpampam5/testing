<link rel="stylesheet" href="<?=base_url()?>_template/front/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<script src="<?=base_url()?>_template/front/vendors/datatables.net/jquery.dataTables.js"></script>
<script src="<?=base_url()?>_template/front/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>

<style media="screen">
  tr td .data-person-mem{
    padding-right: 10px;
  }
</style>

<div class="row">
  <div class="col-md-12 mx-auto">
    <nav aria-label="breadcrumb mb-1">
      <ol class="breadcrumb bg-black">
        <li class="breadcrumb-item" aria-current="page">Investment</li>
        <li class="breadcrumb-item active" aria-current="page">Share Profit</li>
      </ol>
    </nav>
  </div>

    <div class="col-md-12 mx-auto">
      <div class="card">
        <div class="card-body">
          <h5>Total Profit <span class="text-primary">Rp.<?=format_rupiah(earning())?></span></h5>
          <div class="table-responsive">
            <table id="table" class="table table-bordered">
              <thead class=" bg-black text-silver">
                <tr>
                  <th>Date</th>
                  <th>Keterangan</th>
                </tr>
              </thead>

              <tbody>
                <?php if ($row->num_rows() > 0): ?>
                  <?php foreach ($row->result() as $row): ?>
                    <tr>
                      <td><?=date("d-m-Y",strtotime($row->time_profit))?></td>
                      <td>
                          Pembagian profit ke-<?=$row->no_profit?> <span class="text-success">Rp.<?=format_rupiah($row->amount_profit)?></span> dari investasi sebesar <span class="text-success">Rp.<?=format_rupiah($row->amount)?></span> dengan kode invest <span class="text-primary"><?=$row->kode_invest?></span>
                      </td>
                    </tr>
                  <?php endforeach; ?>
                  <?php else: ?>
                    <tr>
                      <td colspan="4" class="text-center">Belum ada profit</td>
                    </tr>
                <?php endif; ?>
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
  "ordering":false
});
</script>
