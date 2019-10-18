<div class="row">
  <div class="col-md-10 mx-auto">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb bg-black">
        <li class="breadcrumb-item" aria-current="page">Personal</li>
        <!-- <li class="breadcrumb-item" aria-current="page"><?=ucfirst($title)?></li> -->
        <li class="breadcrumb-item active" aria-current="page">Detail</li>
      </ol>
    </nav>
  </div>

  <div class="col-md-10 mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title border-bottom">Data Personal <span class="text-primary">#<?=$row->kode_person?></span></h5>
        <table class="table-detail">
          <tr>
            <th>ID.REG</th>
            <td class="text-primary">: <?=$row->kode_person?></td>
          </tr>

          <tr>
            <th>Status Level</th>
            <td>: <span class="badge badge-primary"><?=strtoupper($row->level)?></span></td>
          </tr>

          <tr>
            <th>Username</th>
            <td>: <?=$row->username?></td>
          </tr>

          <tr>
            <th>Nik</th>
            <td>: <?=$row->nik?></td>
          </tr>

          <tr>
            <th>Nama</th>
            <td>: <?=$row->nama?></td>
          </tr>

          <tr>
            <th>Tempat, Tanggal lahir</th>
            <td>: <?=$row->tempat_lahir?>, <?=date_indo($row->tanggal_lahir)?></td>
          </tr>

          <tr>
            <th>Telepon 1</th>
            <td>: <?=$row->telepon1?></td>
          </tr>

          <tr>
            <th>Telepon 2</th>
            <td>: <?=$row->telepon2?></td>
          </tr>

          <tr>
            <th>Email</th>
            <td>: <?=$row->email?></td>
          </tr>

          <tr>
            <th>Pekerjaan</th>
            <td>: <?=$row->pekerjaan?></td>
          </tr>

          <tr>
            <th>Alamat</th>
            <td>: <?=$row->alamat?></td>
          </tr>


        </table>

        <hr>

        <a href="javascript:history.back()" class="btn btn-sm btn-secondary text-white"> Back</a>
      </div>
    </div>
  </div>
</div>
