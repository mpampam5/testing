<?php $ses = $this->btree->get_all_id_children(sess('id_person')); ?>

<?php if (count($ses)!=0): ?>
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
          <li class="breadcrumb-item" aria-current="page">Omset</li>
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
                    <th>Date Invest</th>
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
          ajax: {"url": "<?=base_url()?>backend/investment/json_omset", "type": "POST"},
          columns: [
              {
                "data": "id_invest",
                "visible":false,
                searchable: false
              },
              {"data":"created","orderable": false,},
              {
                "data":"kode_invest",
                "orderable": false,
                render:function(data,type,row,meta)
                {
                  return `<span class="text-primary">`+data+`</span> <i class="ti-angle-double-right"></i> <span class="text-primary">`+row.kontrak_start+` s/d `+row.kontrak_end+`</span> <i class="ti-angle-double-right"></i> <span class="text-success">Rp.`+row.amount+`</span> <i class="ti-angle-double-right"></i> <span class="text-primary">`+row.username+`</span> <i class="ti-angle-double-right"></i> <span class="text-primary">`+row.nama+`</span>`;
                }
              },
              {"data":"amount","visible":false},
              {"data":"kode_person","visible":false},
              {"data":"username","visible":false},
              {"data":"nama","visible":false},
              {"data":"kontrak_start","visible":false},
              {"data":"kontrak_end","visible":false},
          ],
          order: [[0, 'DESC']],
      });
  });
  </script>
  <?php else: ?>
    <style media="screen">
      tr td .data-person-mem{
        padding-right: 10px;
      }
    </style>

    <div class="row">
      <div class="col-md-12 mx-auto">
        <nav aria-label="breadcrumb mb-1">
          <ol class="breadcrumb bg-black">
            <li class="breadcrumb-item" aria-current="page">Omset</li>
          </ol>
        </nav>
      </div>

        <div class="col-md-12 mx-auto">
          <div class="card">
            <div class="card-body">
              <p style="font-size:12px" class="text-center"> Belum ada omset</p>
            </div>
          </div>
        </div>

    </div>

<?php endif; ?>
