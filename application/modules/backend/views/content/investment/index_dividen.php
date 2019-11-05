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
          <h5>Total Profit <span class="text-primary">Rp.<?=format_rupiah(total_investment_dividen())?></span></h5>
          <div class="table-responsive">
            <table id="table" class="table table-bordered">
              <thead class=" bg-black text-silver">
                <tr>
                  <th></th>
                  <th>Date</th>
                  <th>Data Invest</th>
                  <th>Comission</th>
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
                return `<span class="text-info">`+data+`</span>
                        <i class="ti-angle-double-right"></i> <span class="text-success">Rp.`+row.amount_invest+`</span>
                        <i class="ti-angle-double-right"></i> profit ke-`+row.no_dividen+
                        `<i class="ti-angle-double-right"></i> <span class="text-success">`+row.username+`</span>`+
                        `<i class="ti-angle-double-right"></i> <span class="text-success">`+row.nama+`</span>`;
              }
            },
            {"data":"amount_dividen","orderable": false,
              render:function(data,type,row,meta){
                  return `<span class="text-success">Rp.`+data+` (`+row.persentase+`%)</span>`;
              }
            },
            {"data":"amount_dividen","visible":false},
            {"data":"amount_invest","visible":false},
            {"data":"no_dividen","visible":false},
            {"data":"persentase","visible":false},
            {"data":"nama","visible":false},
            {"data":"username","visible":false},
        ],
        order: [[0, 'DESC']],
    });
});
</script>
