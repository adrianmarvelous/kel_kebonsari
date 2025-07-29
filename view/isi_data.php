<?php
    if(htmlentities(isset($_SESSION['nama']))){
        header("Location: controller/pelayanan.php");
    }
?>
<div class="container mt-5">
    <div class="row mt-5 p-3">
        <div class="card shadow mt-5">
            <div class="d-flex flex-column p-3">
                <form action="index.php?pages=pilih_kategori_pelayanan" method="post">
                    <h2 class="text-center">Data Diri</h2>
                    <label for="">Nama</label>
                    <input type="text" class="form-control" name="nama" id="nama" required>
                    <label class="mt-3" for="">Alamat</label>
                    <input type="text" class="form-control" name="alamat" id="alamat" required>
                    <div class="d-flex justify-content-end mt-3">
                        <input type="hidden" name="action" value="data_diri">
                        <button type="submit" class="btn btn-primary" name="submit">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>