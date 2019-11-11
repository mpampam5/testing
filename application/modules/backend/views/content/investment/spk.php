
<html>
  <head>
    <title>SPK <?=$row->kode_invest?></title>

    <style>
            /**
                Set the margins of the page to 0, so the footer and the header
                can be of the full height and width !
             **/
            @page {
                margin: 0cm 0cm;
            }

            /** Define now the real margins of every page in the PDF **/
            body {
                margin-top: 3cm;
                margin-left: 1.5cm;
                margin-right: 1.5cm;
                margin-bottom: 2cm;
            }

            /** Define the header rules **/
            header {
                position: fixed;
                top: 20px;
                left: 0cm;
                right: 0cm;
                height: 3cm;
            }

            header .logo{
              position: fixed;
              top: 20px;
              left: 1.5cm;
              width: 65px;
              height: 75px;
            }

            header .qrcode{
              position: fixed;
              top: 20px;
              right: 25px;
              width: 50px;
              height: 50px;
            }

            header h2{
              position: fixed;
              top: 20px;
              left: 4cm;
              font-family: Arial, Helvetica, sans-serif;
            }

            /** Define the footer rules **/
            footer {
                border-top: 4px solid #832a12;
                position: fixed;
                bottom: 0cm;
                left: 0cm;
                right: 0cm;
                height: 2cm;
                margin-left:60px;
                font-size: 11px;
                margin-right: 60px;
            }


            .num_page{
                position: absolute;
                top: 0;
                right: 0;
            }

            .pagenum:before {
                        content: counter(page);
                    }

            table tr td b{
              font-size:14px;
            }


            .page-break { page-break-after: always; }
            .page-break:last-child { page-break-after: never; }


        </style>
  </head>
  <body>
      <header>
          <img class="logo" src="<?=base_url()?>/_template/front/images/cheeta.png"/>
          <h2><?=strtoupper(setting_system('title'))?></h2>
          <img class="qrcode" src="<?=base_url()."/_template/files/".enc_uri($row->kode_person)."/qr_".$row->kode_invest.".png"?>">
      </header>

      <div class="kop_surat" style="margin-top:20px;">
        <table style="font-size:14px;">
          <tr>
            <td>No.Surat</td>
            <td>: <?=$row->kode_invest?>/DEPO/MKS/CHBL/<?=getRomawi(date('m',strtotime($row->kontrak_start)))?>/<?=date('Y',strtotime($row->kontrak_start))?></td>
          </tr>

          <tr>
            <td>Lampiran</td>
            <td>: 3 (Tiga) Lembar</td>
          </tr>
        </table>

        <div class="tanggal" style="position:absolute;right:0;top:15px;">
          <table style="font-size:14px;">
            <tr>
              <td>Tanggal</td>
              <td>: <?=date_indo($row->kontrak_start)?></td>
            </tr>
          </table>
        </div>

        <div class="title-surat" style="text-align:center;margin:5px auto;">
          <h5>SURAT PERJANJIAN KERJASAMA<br> MANAGED ACCOUNT FOREIGN EXCHANGE TRADING</h5>
        </div>

        <div class="isi" style="position: absolute;left:0;top:120px">
          <table style="font-size:14px;">
            <tr>
              <td colspan="3">Kami yang bertanda tangan di bawah ini :</td>
            </tr>
            <tr>
              <td style="width:120px">I. Nama Perusahaan</td>
              <td style="width:1px">:</td>
              <td><b style="font-size:12px;"><?=strtoupper(setting_system('title'))?></b></td>
            </tr>

            <tr>
              <td style="">Alamat Lengkap</td>
              <td style="width:1px">:</td>
              <td><b style="font-size:12px;"><?=strtoupper(setting_system('alamat'))?></b></td>
            </tr>

            <tr>
              <td>Telepon</td>
              <td style="width:1px">:</td>
              <td><b style="font-size:12px;"><?=strtoupper(setting_system('telepon1'))?> <?=(setting_system('telepon2')!="")?"/ ".setting_system('telepon2'):""?></b></td>
            </tr>

            <tr>
              <td colspan="3">Adalah Pengelola, selanjutnya disebut sebagai Pihak Pertama  (1).</td>
            </tr>


            <tr>
              <td colspan="3">&nbsp;</td>
            </tr>

            <tr>
              <td>II. Nama</td>
              <td style="width:1px">:</td>
              <td><b style="font-size:12px;"><?=strtoupper($row->nama)?></b></td>
            </tr>

            <tr>
              <td>Alamat Lengkap</td>
              <td style="width:1px">:</td>
              <td><b style="font-size:12px;"><?=strtoupper($row->alamat)?></b></td>
            </tr>

            <tr>
              <td>Telepon</td>
              <td style="width:1px">:</td>
              <td><b style="font-size:12px;"><?=strtoupper($row->telepon1)?>&nbsp;<?=($row->telepon2!="") ? "/".strtoupper($row->telepon2):""?></b></td>
            </tr>

            <tr>
              <td>Bank</td>
              <td style="width:1px">:</td>
              <td><b style="font-size:12px;"><?=strtoupper($row->bank)?> - <?=strtoupper($row->no_rekening)?></b></td>
            </tr>

            <tr>
              <td colspan="3">
                Adalah Mitra, Selanjutnya disebut sebagai Pihak Kedua (2).<br>
                Kedua belah pihak bersepakat melakukan kerjasama dengan ketentuan-ketentuan sebagai berikut :
              </td>
            </tr>
          </table>
        </div>
      </div>


      <div class="pasal" style="position:absolute;left:0;top:380px;font-size:14px;">
        <div class="pasal-content">
          <p style="text-align:center;">
            <b>P A S A L 1</b><br>
            ALOKASI DEPOSIT YANG DIKELOLA<br>
            Pihak kedua (2) mendepositkan Modal traiding sebesar Rp.<?=format_rupiah($row->amount)?>,- (<?=terbilang($row->amount)?> Rupiah) <br>untuk dikelola dengan rincian sebagai berikut :
          </p>

          <ol style="list-style-type: decimal;text-align:justify;">
            <li>Pihak pertama (1) bertanggung jawab membagikan Sharing Profit traiding forex dengan estimasi 1% perhari selama 20 hari masa kerja traiding dalam sebulan.</li>
            <li>Pihak pertama (1) bertanggung jawab mengelola deposit dari Pihak kedua (II) untuk di perdagangkan di Trading Forex.</li>
            <li>Proses pembagian profit akan dilaksanakan dalam kisaran tanggal 1-5 setiap bulannya selama masa kontrak perjanjian ini berjalan.  </li>
          </ol>

          <p style="text-align:center;line-height:18px;">
            <b>P A S A L 2</b><br>
            MASA KONTRAK<br>
          </p>

          <ol style="list-style-type: decimal;text-align:justify;">
            <li>Masa kontrak perjanjian kerja sama ini adalah (6 bulan) terhitung sejak perjanjian ini ditanda tangani (<?=date_indo($row->kontrak_start)?> s/d <?=date_indo($row->kontrak_end)?>). </li>
            <li>Setelah masa kontrak perjanjian kerja sama berakhir. Maka Modal yang dikelola akan dikembalikan 100% ke rekening Pihak Kedua (2).</li>
            <li>Sesuai dari pasal 2 ayat 2, Maka Pengembalian Modal akan di transferkan kurang lebih 30 hari pasca masa kontrak berakhir.</li>
          </ol>

        </div>
      </div>

      <footer>
        <span>OFFICE : <?=setting_system('alamat')?></span><br>
        <span>CUSTOMER SERVICE : <?=strtoupper(setting_system('telepon1'))?> <?=(setting_system('telepon2')!="")?"/ ".setting_system('telepon2'):""?> (Pelayanan CS Senin – Jum’at, Pukul 09.00-20.00 WITA).</span>
           <div class="num_page">
             Page <span class="pagenum"></span>
           </div>
      </footer>


      <p class="page-break"></p>

      <div class="pasal" style="position:absolute;left:0;top:0px;font-size:14px;">
        <div class="pasal-content">
          <p style="text-align:center;">
            <b>P A S A L 3</b><br>
            PENGHENTIAN PERJANJIAN KERJASAMA<br>
          </p>

          <ol style="list-style-type: decimal;text-align:justify;">
            <li>Pihak kedua (2) tidak di perkenankan melakukan Penarikan modal selama masa kontrak kerjasama belum berakhir.</li>
            <li>Perpanjangan masa kontrak  dapat dilakukan dengan melanjutkan kerja sama dengan penandatanganan kontrak baru dan kontrak lama tidak berlaku dan hangus dengan sendirinya.</li>
            <li>Perpanjangan masa kontrak pasca 6 bulan berakhir, maka tidak diperkenankan melanjutkan ke masa kontrak yang sama.</li>
            <li>Berdasarkan Pasal 3 Point 3 penjelasan masa kontrak klien adalah sebagai berikut :
              <ol style="list-style-type:lower-latin;">
                <li>Apabila kontrak 6 berakhir maka perpanjangan kontrak baru ke 12 bulan.</li>
                <li>Apabila kontrak 12 berakhir maka perpanjangan kontrak baru ke 24 bulan.</li>
                <li>Apabila kontrak 24 berakhir maka perpanjangan kontrak baru tetap ke 24 bulan.</li>
              </ol>
            </li>
          </ol>

          <p style="text-align:center;line-height:18px;">
            <b>P A S A L 4</b><br>
            KEJADIAN TAK TERDUGA<br>
          </p>

          <ol style="list-style-type: decimal;text-align:justify;">
            <li>Dalam hal pelaksanaan perjanjian ini terganggu, terhalang atau terhambat sehingga tidak dapat dilaksanakan oleh sebab adanya peristiwa diluar kekuasaan manusia, perang, huru hara, pemogokan, larangan bekerja, gangguan transportasi, sehingga para pihak tidak dapat melaksanakan kewajibannya masing -  masing maka kedua belah pihak sepakat untuk menunda sementara pelaksanaan perjanjian ini sampai gangguan, halangan atau hambatan dimaksud berakhir.</li>
            <li>Berdasarkan dari bunyi pada pasal 4 ayat 1 Maka Pembayaran akan tertunda hingga kondisi dapat menjadi normal kembali.</li>
          </ol>


          <p style="text-align:center;line-height:18px;">
            <b>P A S A L 5</b><br>
            LAIN – LAIN<br>
          </p>

          <p style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jika dikemudian hari timbul suatu keadaan yang belum cukup diatur dalam perjanjian ini, maka dengan ini kedua belah pihak sepakat akan menuangkan dalam addendum dan kedua belah pihak dengan ini saling sepakat dan saling berjanji untuk menyelesaikan secara musyawarah dan mufakat damai. Jika hal itu tidak mencapai maka kedua belah pihak dengan ini saling berjanji satu sama lain untuk HANYA mengajukan masalah penyelesaian ini pada Badan Arbitrase Nasional Indonesia (BANI) menurut syarat, peraturan dan ketentuan BANI. Dan kedua belah pihak dengan ini sepakat bahwa keputusan BANI akan bersifat TERAKHIR dan MENGIKAT (Final and Banding), TIDAK DAPAT diajukan upaya hukum lain apapun juga.</p>



          <p style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Demikianlah surat perjanjian kerja sama ini dibuat oleh kedua belah pihak dengan sadar, tanpa paksaan dan itikad yang baik. “Saya telah membaca, mengerti dan setuju terhadap semua ketentuan yang tercantum dalam perjanjian ini “.</p>
        </div>
      </div>


      <div class="ttd" style="position:absolute;bottom:40px;font-size:12px;">
        <span>Tempat : Makassar, <?=date_indo($row->kontrak_start)?></span><br>
        <span>Pihak Pertama (1)</span><br>
        <span><?=strtoupper(setting_system("title"))?></span>
        <br><br><br><br><br><br><br>
        <span>Andi Awaluddin Buchri</span>
      </div>


      <div class="ttd2" style="position:absolute;right:0;bottom:40px;font-size:12px;">
        <span>&nbsp;</span><br>
        <span>Pihak Kedua (2)</span><br>
        <span>Mitra</span>
        <br><br><br><br><br><br><br>
        <span><?=$row->nama?></span>
      </div>

      <p class="page-break"></p>
      <div style="margin:5px auto;text-align:center">
        <h4>File Berkas</h4>
      </div>


      <div style="margin:5px auto;">
        <table style="position:absolute;top:40px;left:120px;">
          <tr>
            <td>
              <img src="<?=base_url()."/_template/files/".enc_uri($row->kode_person)."/".$row->file_foto?>" style="width:400px;height:250px" alt="">
            </td>
          </tr>

          <tr>
            <td>
              <img src="<?=base_url()."/_template/files/".enc_uri($row->kode_person)."/".$row->file_ktp?>" style="width:400px;height:250px" alt="">
            </td>
          </tr>

          <tr>
            <td>
              <img src="<?=base_url()."/_template/files/".enc_uri($row->kode_person)."/".$row->file_foto_rek?>" style="width:400px;height:250px" alt="">
            </td>
          </tr>
        </table>
      </div>


  </body>
</html>
