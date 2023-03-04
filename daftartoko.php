<?php 
    include "koneksi.php";

    $txtKode = isset($_POST['txtKode']) ? $_POST['txtKode'] : '';
    $txtToko = isset($_POST['txtToko']) ? $_POST['txtToko'] : '';
    $txtAlamatToko = isset($_POST['txtAlamatToko']) ? $_POST['txtAlamatToko'] : '';
    $txtNomorTelepon = isset($_POST['txtNomorTelepon']) ? $_POST['txtNomorTelepon'] : '';
    $txtGambarToko = isset($_POST['txtGambarToko']) ? $_POST['txtGambarToko'] : '';
    $txtMapToko = isset($_POST['txtMapToko']) ? $_POST['txtMapToko'] : '';
?>

<html>
  <head>
    <title>Daftar Toko Obat</title>
  </head>
  <body>
    <div class="container">
      <br>
        <div class="col-md-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <b>Masukkan Data Toko Obat Pertanian Anda!</b>
                </div>
                <div class="panel-body">
                  <form name="form1" method="post" action="daftartokoFungsi.php">
                    <table class="table">
                      <tr>
                        <td>Kode</td>
                        <td>
                          <input name="txtKode" type="text" maxlength="3" size="6" value="<?php echo $txtKode; ?>" placeholder="format 'T00' T lalu nomor urut tanpa spasi">
                        </td>
                      </tr>
                      <tr>
                        <td width="135">Nama Toko</td>
                        <td width="450">
                          <input name="txtToko" type="text" value="<?php echo $txtToko; ?>" size="60" maxlength="30">
                        </td>
                      </tr>
                      <tr>
                        <td>Alamat Toko</td>
                        <td>
                          <textarea name="txtAlamatToko" cols="50" rows="4" value="<?php echo $txtAlamatToko; ?>"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <td>Nomor Telepon</td>
                        <td>
                        <input name="txtNomorTelepon" type="number" value="<?php echo $txtNomorTelepon; ?>" size="60" maxlength="30">
                        </td>
                      </tr>
                      <tr>
                        <td>Foto Toko</td>
                        <td>
                        <input name="txtGambarToko" type="file" value="<?php echo $txtGambarToko; ?>" placeholder="masukan url foto">
                        </td>
                      </tr>
                      <tr>
                        <td>Link Google Map Toko</td>
                        <td>
                        <textarea name="txtMapToko" cols="50" rows="4" value="<?php echo $txtMapToko; ?>"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td class="right">
                          <input class="btn-sm btn-success raised" type="submit" name="Submit" value="Simpan">
                          <input class="btn-sm btn-danger raised" type="reset" name="reset" value="Kembali"> 
                        </td>
                      </tr>
                    </table>
                  </form>
                </div>
            </div>
        </div>
    </div>
      <br>
      <br>
    </div>
      <br>
      
    </div>
    <br>
  </body>
</html>