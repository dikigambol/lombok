<?php
    include "koneksi.php";

    //get variable dari form
    $txtKode= $_POST['txtKode'];
    $txtToko= $_POST['txtToko'];
    $txtAlamatToko= $_POST['txtAlamatToko'];
    $txtNomorTelepon= $_POST['txtNomorTelepon'];
    $txtGambarToko= $_POST['txtGambarToko'];
    $txtMapToko= $_POST['txtMapToko'];
    
    //validasi
    if(trim($txtKode)==""){
        echo '<div class="container">
                <div class="alert alert-danger role=alert">
                    <b>Kode masih kosong, Ulangi Kembali</b>
                </div>
             </div>';
             include "daftartoko.php";
    }
    elseif(trim($txtToko)==""){
        echo '<div class="container">
                <div class="alert alert-danger role=alert">
                    <b>Nama toko masih kosong, isi terlebih dahulu</b>
                </div>
             </div>';
             include "daftartoko.php";
    }
    elseif(trim($txtAlamatToko)==""){
        echo '<div class="container">
                <div class="alert alert-danger role=alert">
                    <b>Alamat Toko masih kosong, isi terlebih dahulu</b>
                </div>
             </div>';
             include "daftartoko.php";
    }
    elseif(trim($txtNomorTelepon)==""){
        echo '<div class="container">
                <div class="alert alert-danger role=alert">
                    <b>Nomor telepon masih kosong, isi terlebih dahulu</b>
                </div>
             </div>';
             include "daftartoko.php";
    }
    elseif(trim($txtGambarToko)==""){
        echo '<div class="container">
                <div class="alert alert-danger role=alert">
                    <b>Url Foto toko masih kosong, isi terlebih dahulu</b>
                </div>
             </div>';
             include "daftartoko.php";
    }
    else{
        //insert ke table
        $sql = "INSERT into toko (id_toko, nama_toko, alamat_toko, nomor_telepon, gambar_toko, map_toko)";
        $sql.= "VALUES ('$txtKode', '$txtToko', '$txtAlamatToko', '$txtNomorTelepon', '$txtGambarToko', '$txtMapToko')";
        mysqli_query($koneksi, $sql);

        echo '<div class="container">
                <div class="alert alert-success role=alert">
                    <b>DATA BERHASIL DISIMPAN</b>
                </div>
             </div>';
             include "datatoko.php"; 
    }
?>