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
        <li class="breadcrumb-item" aria-current="page">Comission</li>
      </ol>
    </nav>
  </div>

    <div class="col-md-12 mx-auto">
      <div class="card">
        <div class="card-body">
          <div class="table-responsive">
            <table id="table" class="table table-bordered">
              <thead class=" bg-black text-silver">
                <tr>
                  <th></th>
                  <th>Date</th>
                  <th>Keterangan</th>
                </tr>
              </thead>


            </table>
          </div>
        </div>
      </div>
    </div>

</div>

<script type="text/javascript">
$(document).ready(function() {
    var table_profit = $("#table").dataTable({
        oLanguage: {
            sProcessing: '<div class="spinner-border spinner-border-sm text-warning"></div>'
        },
        "searching": false,
        "bLengthChange": false,
        "info": false,
        processing: true,
        serverSide: true,
        ajax: {"url": "<?=base_url()?>backend/investment/json_dividen", "type": "POST"},
        columns: [
            {
              "data": "id_invest_dividen",
              "visible":false,
              searchable: false
            },
            {"data":"time_dividen","orderable": false,},
            {
              "data":"kode_invest",
              "orderable": false,
              render:function(data,type,row,meta)
              {
                return `Pembagian bonus profit ke-`+row.no_dividen+` sebesar <span class="text-success">Rp.`+row.amount_dividen+` (`+row.persentase+`%)</span> dari investasi sebesar <span class="text-success">Rp.`+row.amount_invest+`</span> dengan kode invest <span class="text-info">`+data+`</span>`;
              }
            },
            {"data":"amount_dividen","visible":false},
            {"data":"amount_invest","visible":false},
            {"data":"no_dividen","visible":false},
            {"data":"persentase","visible":false},
        ],
        order: [[0, 'DESC']],
    });
});
</script>
