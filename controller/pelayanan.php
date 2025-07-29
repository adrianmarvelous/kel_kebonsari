<?php
    if (htmlentities(isset($_POST['action'])) && htmlentities($_POST['action']) == 'data_diri') {
        
        // Start the session
        session_start();

        // Unset all session variables
        session_unset();

        // Destroy the session
        session_destroy();
        include 'config/koneksi.php';
        if(htmlentities(!isset($_SESSION['nama']))){
            $nama = htmlentities($_POST['nama']);
            $alamat = htmlentities($_POST['alamat']);

            $_SESSION['nama'] = $nama;
            $_SESSION['alamat'] = $alamat;
        }

        $q_kategori = $db->prepare("SELECT DISTINCT kategori FROM layanan");
        $q_kategori->execute();
        $kategori = $q_kategori->fetchAll(PDO::FETCH_ASSOC);

        include "view/pilih_kategori.php";
    }
    elseif (htmlentities(isset($_GET['pages'])) && htmlentities($_GET['pages']) == 'pilih_layanan') {
        $kategori = htmlentities($_GET['kategori']);
        include 'config/koneksi.php';
        $q_layanan = $db->prepare("SELECT * FROM layanan WHERE kategori = :kategori");
        $q_layanan->bindParam(':kategori', $kategori);
        $q_layanan->execute();
        $layanan = $q_layanan->fetchAll(PDO::FETCH_ASSOC);
        
        include "view/layanan.php";
    }
    elseif (htmlentities(isset($_GET['pages'])) && htmlentities($_GET['pages']) == 'detail_layanan') {
        include 'config/koneksi.php';
        $id_layanan = htmlentities($_GET['id']);
        $q_layanan = $db->prepare("SELECT * FROM layanan  WHERE id_layanan = :id_layanan");
        $q_layanan->bindParam(':id_layanan', $id_layanan);
        $q_layanan->execute();
        $layanan = $q_layanan->fetch(PDO::FETCH_ASSOC);

        $q_detail = $db->prepare("SELECT * FROM persyaratan WHERE id_layanan = :id_layanan");
        $q_detail->bindParam(':id_layanan', $id_layanan);
        $q_detail->execute();
        $detail = $q_detail->fetchAll(PDO::FETCH_ASSOC);

        
        $q_max_id = $db->prepare("SELECT MAX(id_data_user) as max_id FROM data_user");
        $q_max_id->execute();
        $max_id = $q_max_id->fetch(PDO::FETCH_ASSOC);
        $last_id = $max_id['max_id'] + 1;

        $nama = htmlentities($_SESSION['nama']);
        $alamat = htmlentities($_SESSION['alamat']);
        $insert = $db->prepare("INSERT INTO data_user (id_data_user,nama, alamat,pelayanan) VALUES (:id_data_user,:nama, :alamat,:pelayanan)");
        $insert->bindParam(':id_data_user', $last_id);
        $insert->bindParam(':nama', $nama);
        $insert->bindParam(':alamat', $alamat);
        $insert->bindParam(':pelayanan', $id_layanan);
        $insert->execute();

        $layanan['detail'] = $detail;
        
        include "view/detail_layanan.php";
    }
    else {
        include "view/home.php";
    }
?>