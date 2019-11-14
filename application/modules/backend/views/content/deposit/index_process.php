<link rel="stylesheet" href="<?=base_url()?>_template/front/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<script src="<?=base_url()?>_template/front/vendors/datatables.net/jquery.dataTables.js"></script>
<script src="<?=base_url()?>_template/front/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>

<div class="row">
  <div class="col-md-12 mx-auto">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb bg-black">
        <li class="breadcrumb-item" aria-current="page">Deposit</li>
        <li class="breadcrumb-item active" aria-current="page">Process</li>
      </ol>
    </nav>
  </div>

  <div class="col-md-12 mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title border-bottom">DEPOSIT PROCESS</h5>
        <div class="table-responsive">
          <table class="table table-bordered" id="table">
            <thead class="bg-black text-silver">
              <tr>
                <th></th>
                <th>NO.REG</th>
                <th>Date</th>
                <th>Amount</th>
                <th>Status</th>
                <th>Action</th>
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

    var table_dividen = $("#table").dataTable({
        oLanguage: {
            sProcessing: '<div class="spinner-border spinner-border-sm text-warning"></div> loading'
        },
        "searching": false,
        "bLengthChange": false,
        "info": false,
        processing: true,
        serverSide: true,
        ajax: {"url": "<?=base_url()?>backend/deposit/json/process", "type": "POST"},
        columns: [
            {
              "data": "id_deposit",
              "orderable": false,
              "visible":false,
              "searchable": false
            },
            {
              "data":"kode_transaksi",
              "orderable": false,
              "className" : "text-center",
              render:function(data,type,meta,row)
              {
                return '<span class="text-primary">'+data+'</span>';
              }
            },
            {
              "data":"created",
              "orderable": false,
              "searchable": false
            },
            {
              "data":"amount",
              "orderable": false,
              "searchable": false,
              render:function(data,type,row,meta)
              {
                var val = parseInt(data) + parseInt(row.biaya_admin);
                    hasil = parseInt(val).toLocaleString();
                return '<span class="uang">Rp.'+hasil.replace(/\,/g, '.')+'</span>';
              }
            },
            {
              "data":"status",
              "orderable": false,
              "className":"text-center",
              render:function(data,type,meta,row)
              {
                if (data=="process") {
                  return '<span class="badge badge-warning text-white">'+data+'</span>';
                }else {
                  return '<span class="badge badge-danger">'+data+'</span>';
                }
              }
            },
            {
              "data":"action",
              "orderable": false,
              "className":"text-center"
            },
            {
              "data":"biaya_admin",
              "visible":false
            }
        ],
        order: [[0, 'desc']],
    });
});
</script>
