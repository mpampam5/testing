<div class="row">
  <div class="col-md-7 mx-auto">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb bg-black">
        <li class="breadcrumb-item" aria-current="page">Deposit</li>
        <li class="breadcrumb-item" aria-current="page"><?=$status?></li>
        <li class="breadcrumb-item active" aria-current="page">Detail</li>
      </ol>
    </nav>
  </div>

  <div class="col-md-7 mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title border-bottom">DETAIL DEPOSIT <span class="text-primary">#<?=$row->kode_transaksi?></span></h5>
        <table class="table-detail">
          <tr>
            <th>NO.REG</th>
            <td class="text-primary">: <?=$row->kode_transaksi?></td>
          </tr>

          <tr>
            <th>Date</th>
            <td>: <?=date('d/m/Y H:i',strtotime($row->created))?></td>
          </tr>

          <tr>
            <th>Amount</th>
            <td>: Rp.<?=format_rupiah($row->amount)?></td>
          </tr>

          <tr>
            <th>Biaya administrasi</th>
            <td>: Rp.<?=format_rupiah($row->biaya_admin)?></td>
          </tr>

          <tr>
            <th>Nama</th>
            <td>: <?=profile("nama")?></td>
          </tr>

          <tr>
            <th>Status</th>
            <td>:
                  <?php if ($row->status=="approved"): ?>
                    <span class="badge badge-success"><?=$row->status?></span>
                  <?php endif; ?>

                  <?php if ($row->status=="process"): ?>
                    <span class="badge badge-warning text-white"><?=$row->status?></span>
                  <?php endif; ?>

                  <?php if ($row->status=="cancel"): ?>
                    <span class="badge badge-danger"><?=$row->status?></span>
                  <?php endif; ?>
              </td>
          </tr>

        </table>

        <hr>
        <b class="pl-1 pb-1" style="font-size:13px;color:#5e5e5e;">Pembayaran Ke:</b>
        <table class="table-detail">
          <tr>
            <th>Nama Rek.</th>
            <td>: <?=$row->nama_rekening?></td>
          </tr>

          <tr>
            <th>No.Rek</th>
            <td>: <?=$row->no_rekening?></td>
          </tr>

          <tr>
            <th>BANK</th>
            <td>: <?=$row->bank?></td>
          </tr>
        </table>

        <?php if ($row->status == "process"): ?>
          <hr>
          <ul style="font-size:12px;color:#5e5e5e;">
            <li>Silahkan Transfer Sebesar <b>Rp.<?=format_rupiah(($row->amount+$row->biaya_admin))?></b></li>
            <li>Untuk mempermudah proses verifikasi, silahkan transfer sesuai nominal di atas.</li>
          </ul>

          <p style="font-size:12px;color:#5e5e5e;font-weight:bold;">Silahkan kirim bukti transfer anda pada kontak di bawah: </p>
          <table class="table table-striped table-bordered">

              <!-- <tr>
                <th style="font-size:12px;padding:7px;">Nama</th>
                <th style="font-size:12px;padding:7px;">Email</th>
                <th style="font-size:12px;padding:7px;">Telepon (Whatsapp)</th>
              </tr> -->


            <?php $admin = $this->db->get("admin"); ?>
            <?php foreach ($admin->result() as $adm): ?>
            <tr>
              <td style="font-size:12px;"><?=$adm->nama?></td>
              <td style="font-size:12px;"><?=$adm->email?></td>
              <td style="font-size:12px;"><?=$adm->telepon?></td>
            </tr>
        <?php endforeach; ?>
      </table>
        <?php endif; ?>


        <?php if ($row->status=="approved"): ?>
                    <hr>
          <p class="text-center" style="font-size:12px;color:#5e5e5e;">Transaksi berhasil di proses. Terimakasih</p>
        <?php endif; ?>

        <?php if ($row->status=="process"): ?>
          <hr>
          <p class="text-center" style="font-size:12px;color:#5e5e5e;">Transaksi akan segera di proses. silahkan menunggu 3x24 jam. Terimakasih</p>
          <p class="text-center">
            <a href="<?=site_url("backend/deposit/cancel/$row->id_deposit")?>" class="btn btn-danger btn-sm mt-4" id="cancel">Cancel</a>
          </p>
        <?php endif; ?>


      </div>
    </div>
  </div>


</div>


<?php if ($row->status=="process"): ?>
  <script type="text/javascript">
  $(document).on("click","#cancel",function(e){
e.preventDefault();
$('.modal-dialog').removeClass('modal-lg')
                  .removeClass('modal-md')
                  .addClass('modal-sm');
$("#modalTitle").text('Please Confirm');
$('#modalContent').html(`<p class="pb-3">Are you sure you want to cancel?</p>
                          <button type='button' class='btn btn-secondary text-white btn-sm' data-dismiss='modal'>Close</button>
                          <button type='button' class='btn btn-primary btn-sm' id='ya-hapus' data-id=`+$(this).attr('alt')+`  data-url=`+$(this).attr('href')+`>Yes, i'm sure</button>
                        `);
$("#modalGue").modal('show');
});

$(document).on('click','#ya-hapus',function(e){
$(this).prop('disabled',true)
        .text('Processing...');
$.ajax({
        url:$(this).data('url'),
        type:'post',
        cache:false,
        dataType:'json',
        success:function(json){
          $('#modalGue').modal('hide');
          $.toast({
            text: json.alert,
            showHideTransition: 'slide',
            icon: json.success,
            loaderBg: '#f96868',
            position: 'bottom-right',
            afterHidden: function () {
              window.location.href="<?=site_url("backend/deposit/get/process")?>";
            }
          });

        }
      });
});
  </script>
<?php endif; ?>
