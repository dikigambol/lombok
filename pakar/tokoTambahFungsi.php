<?php
include "../koneksi.php";

//get variable dari form
$txtToko = $_POST['txtToko'];
$txtAlamatToko = $_POST['txtAlamatToko'];
$txtNomorTelepon = $_POST['txtNomorTelepon'];
$txtMapToko = $_POST['txtMapToko'];

//validasi
if (trim($txtToko) == "") {
    echo '<div class="container">
                <div class="alert alert-danger role=alert">
                    <b>Nama toko masih kosong, isi terlebih dahulu</b>
                </div>
             </div>';
    include "tokoTambah.php";
} elseif (trim($txtAlamatToko) == "") {
    echo '<div class="container">
                <div class="alert alert-danger role=alert">
                    <b>Alamat Toko masih kosong, isi terlebih dahulu</b>
                </div>
             </div>';
    include "tokoTambah.php";
} elseif (trim($txtNomorTelepon) == "") {
    echo '<div class="container">
                <div class="alert alert-danger role=alert">
                    <b>Nomor telepon masih kosong, isi terlebih dahulu</b>
                </div>
             </div>';
    include "tokoTambah.php";
} elseif (trim($txtMapToko) == "") {
    echo '<div class="container">
                <div class="alert alert-danger role=alert">
                    <b>Url Google map toko masih kosong, isi terlebih dahulu</b>
                </div>
             </div>';
    include "tokoTambah.php";
} else {
    $getlastId = "SELECT id_toko FROM toko ORDER BY id_toko DESC LIMIT 1";
    $queryId = mysqli_query($koneksi, $getlastId);
    $resultId = mysqli_fetch_array($queryId);

    $lastId = trim($resultId['id_toko'], "T") + 1;
    $newId = '';
    
    if($lastId < 10) {
        $newId = "T0".$lastId;
    }else{
        $newId = "T".$lastId;
    }

    //insert gambar ke dir
    $tempdir = "../image/";
    if (!file_exists($tempdir))
        mkdir($tempdir, 0755);
    $target_path1 = $tempdir . basename($_FILES['txtGambarToko']['name']);

    //nama gambar
    $nama_gambar = $_FILES['txtGambarToko']['name'];

    move_uploaded_file($_FILES['txtGambarToko']['tmp_name'], $target_path1);

    //insert ke table
    $sql = "INSERT into toko (id_toko, nama_toko, alamat_toko, nomor_telepon, gambar_toko, map_toko)";
    $sql .= "VALUES ('$newId', '$txtToko', '$txtAlamatToko', '$txtNomorTelepon', '$nama_gambar', '$txtMapToko')";
    mysqli_query($koneksi, $sql);

    echo '<div class="container">
                <div class="alert alert-success role=alert">
                    <b>DATA BERHASIL DISIMPAN</b>
                </div>
             </div>';
    include "tokoTampil.php";
}
