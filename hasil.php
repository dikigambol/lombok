<?php 
include "koneksi.php";

$noID = $_SERVER['REMOTE_ADDR'];
$sql = "SELECT konsultasi.*, penyakit.*
        from konsultasi, penyakit
        where penyakit.id_penyakit = konsultasi.id_penyakit
        and konsultasi.noID='$noID'
        order by konsultasi.id_konsultasi desc limit 1";
$query = mysqli_query($koneksi, $sql);
if (!$query) {
    printf("Error: %s\n", mysqli_error($koneksi));
    exit();
}
$result = mysqli_fetch_array($query);

//----------------------------------------------------------------------------------

    $sql_cb = "SELECT rules_penyakit.* 
                    from rules_penyakit, tmp_cb
                    where rules_penyakit.id_gejala = tmp_cb.id_gejala 
                    and rules_penyakit.id_penyakit = '$result[id_penyakit]'";
    $query_cb = mysqli_query($koneksi, $sql_cb);
    if(mysqli_num_rows($query_cb)<1){
        //jawaban terdeteksi ya
        $sql_cb = "SELECT DISTINCT rules_penyakit.* 
                    from rules_penyakit, tmp_cb
                    where rules_penyakit.id_gejala != tmp_cb.id_gejala 
                    and rules_penyakit.id_penyakit = '$result[id_penyakit]'
                    order by RAND()
                    limit 2";
        $query_cb = mysqli_query($koneksi, $sql_cb);
        $i = 0;
        while ($result_cb = mysqli_fetch_array($query_cb)){
            $i++;                            
             "$result_cb[CB]<br>";
            $cbs =  $result_cb['keyakinan'] - $result_cb['ketidakyakinan'];
            if($i == 1){
                $cbh = $cbs;
                 "////////<br>";
            }
            else{
                $cbh = $cbh + $cbs * (1 - $cbh);
                $cbh."<br>-----------<br>";
            }
        }
        //perhitungan jawaban tidak
        $sql_cb2 = "SELECT rules_penyakit.* 
                    from rules_penyakit, tmp_cb
                    where rules_penyakit.id_gejala = tmp_cb.id_gejala 
                    and tmp_cb.ket = 'n'";
        $query_cb2 = mysqli_query($koneksi, $sql_cb2);
        $j = 0;
        $cbh2 = 0;
        while ($result_cb2 = mysqli_fetch_array($query_cb2)){
            $j++;                            
             "$result_cb2[CB]<br>";
            $cbs2 = $result_cb2['ketidakyakinan'];
            if($j == 1){
                $cbh2 = $cbs2;
            }
            else{
                $cbh2 = $cbh2 + $cbs2 * (1 - $cbh2);
                 "<br>----------hasil-----------<br>";
                 "$cbh2 <br>----------<br>";
            }
        }
        
        $cbh."<br>";
        $cbt = $cbh * 100;
        
         "**************<br>";
         $cbh."<br>";
         $cbh2."<br>";
         $cbt = ($cbh - ($cbh2/100)) * 100;
         "$cbt <b>%</b>";
    }
    else{
        //ada jawaban yes
        $i = 0;
        while ($result_cb = mysqli_fetch_array($query_cb)){
            $i++;                            
             "$result_cb[CB]<br>";
            $cbs =  $result_cb['keyakinan'] - $result_cb['ketidakyakinan'];
            if($i == 1){
                $cbh = $cbs;
                 "//////////<br>";
            }
            else{
                $cbh = $cbh + $cbs * (1 - $cbh);
                 "$cbh <br>-------------<br>";
            }
        }
        //perhitungan jawaban tidak
        $sql_cb2 = "SELECT rules_penyakit.* 
                    from rules_penyakit, tmp_cb
                    where rules_penyakit.id_gejala = tmp_cb.id_gejala 
                    and tmp_cb.ket = 'n'";
        $query_cb2 = mysqli_query($koneksi, $sql_cb2);
        $j = 0;
        $cbh2 = 0;
        while ($result_cb2 = mysqli_fetch_array($query_cb2)){
            $j++;                            
             "$result_cb2[CB]<br>";
            $cbs2 = $result_cb2['ketidakyakinan'];
            if($j == 1){
                $cbh2 = $cbs2;
            }
            else{
                $cbh2 = $cbh2 + $cbs2 * (1 - $cbh2);
                 "$cbh2 <br>----------<br>";
            }
        }

         "**************<br>";
         $cbh."<br>";
         $cbh2."<br>";
         $cbt = ($cbh - ($cbh2/100)) * 100;
         "$cbt <b>%</b>";
    }
?>   

<html>
    <head>
        <title>Hasil Diagnosa</title>
    </head>
    <body>
        <div class="container">
            <center>
                <h4> Hasil Diagnosa Penyakit Tanaman Cabai Rawit</h4>
            </center>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div>
                        <center><h5><b>Hasil Analisa </b></h5> </center>
                        <p>Nama Petani : <?php  echo $result['nama_petani']; ?></p>
                        <p>Alamat : <?php  echo $result['alamat']; ?></p>
                        <p>Penyakit : <b class="red-text"><?php echo $result['nama_penyakit']; ?></b></p>
                    </div>
                    <div>
                        <p>Gejala :</p>
                        <ul>
                            <li>
                                <?php
                                    $sql_gejala = "SELECT gejala.* from gejala, rules_penyakit
                                                    where gejala.id_gejala = rules_penyakit.id_gejala
                                                    and rules_penyakit.id_penyakit = '$result[id_penyakit]'";
                                    $query_gejala = mysqli_query($koneksi, $sql_gejala);
                                    $i = 0;
                                    while ($result_gejala = mysqli_fetch_array($query_gejala)){
                                        $i++;
                                        echo "$i. $result_gejala[nama_gejala] <br>";
                                    }
                                ?>
                            </li>
                        </ul>
                    </div>
                </div>
                 <div class="col-md-6">
                <div>
                    <h5><b>Gambar Penyakit </b></h5>
                    <img src="image/<?php echo $result['gambar']; ?>" style="height:250px; margin:15px 0px">
                </div>
            </div>
            </div>
        </div>
        <div class="container">
        <div class="row">                
            <div class="col-md-6">
                <h5><b>Keterangan</b></h5>
                <p class="text-justify"> <?php echo $result['info_penyakit']; ?> </p>
            </div>
            <div class="col-md-6">
                <div>
                    <h5><b>Obat Penyakit</b></h5>
                    <img src="image/<?php echo $result['obat']; ?>" style="height:250px; margin:15px 0px">
                </div>
            </div>
        </div>
        </div>
        <div class="row center">
            <a href="index.php?page=datatoko" id="" class="btn-lg waves-effect waves-light green noatt white-text">Daftar Toko Obat</a>
              <a href="index.php?page=home" id="diagnosa" class="btn-lg waves-effect waves-light red noatt white-text">Selesai</a>
        </div>
    </body>
</html>