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
        <li class="breadcrumb-item" aria-current="page">Person</li>
        <li class="breadcrumb-item active" aria-current="page">List</li>
      </ol>
    </nav>
  </div>

  <div class="col-md-12 mb-1 mx-auto">
    <button type="button" class="btn btn-primary btn-sm" id="search"><i class="fa fa-search"></i> Search</button>
    <button type="button" class="btn btn-warning btn-sm text-white" id="reload_table"><i class="fa fa-refresh"></i> Reload</button>
  </div>

  <div id="search_collapse" class="collapse col-md-12">
      <div class="stretch-card mb-1">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title"> Search Filter </h4>
            <hr>
              <form id="form-filter" autocomplete="off">
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="">ID.REG</label>
                        <input type="text" class="form-control form-control-sm" id="kode_person">
                      </div>
                    </div>

                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="">Nama </label>
                        <input type="text" class="form-control form-control-sm" id="nama">
                      </div>
                    </div>

                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="">Username</label>
                        <input type="text" class="form-control form-control-sm" id="username">
                      </div>
                    </div>


                  </div>

                  <button type="button" id="btn-filter" name="button" class="btn btn-sm btn-primary">Filter Search</button>
                  <button type="button" id="hide_collapse" class="btn btn-danger btn-sm">Cancel</button>

              </form>
          </div>
        </div>
      </div>
    </div>


    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="table-responsive">
            <table id="table" class="table table-bordered">
              <thead class=" bg-black text-silver">
                <tr>
                  <th>Data Personal</th>
                  <th>Status</th>
                  <th class="text-center">#</th>
                </tr>
              </thead>
            </table>
          </div>
        </div>
      </div>
    </div>

</div>





<script type="text/javascript">
$(document).ready(function(){
  var table;
  //datatables
    table = $('#table').DataTable({

        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.
        "lengthChange": false,
        "searching": false,
        "info": false,
        oLanguage: {
            sProcessing: '<div class="spinner-border spinner-border-sm text-warning"></div> Loading'
        },

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo site_url('backend/person/json')?>",
            "type": "POST",
            "data": function ( data ) {
                data.kode_person = $('#kode_person').val();
                data.username = $('#username').val();
                data.nama = $('#nama').val();
            }
        },

        //Set column definition initialisation properties.
        "columnDefs": [
          {
              "targets": 0,
              "orderable": false
          },
        {
            "className": "text-center",
            "targets": 1, //first column / numbering column
            "orderable": false
        },
        {
            "className": "text-center",
            "targets": 2,
            "orderable": false,
        },
        ],
      });

    $('#btn-filter').click(function(){ //button filter event click
        table.ajax.reload();  //just reload table
    });

    $("#reload_table").click(function(){
      $('#form-filter')[0].reset();
      $("#search_collapse").collapse('hide');
        table.ajax.reload();
    });

    $("#search").click(function(){
      $("#search_collapse").collapse('toggle');
      $('#form-filter')[0].reset();
    });

    $("#hide_collapse").click(function(){
      $("#search_collapse").collapse('hide');
      $('#form-filter')[0].reset();
    });
});
</script>
