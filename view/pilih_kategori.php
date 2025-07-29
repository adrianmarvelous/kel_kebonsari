<div class="p-3 m-3">
    <p class="text-center" style="margin-top: 100px;font-size:3rem">Pilih Kategori Pelayanan</p>
    <!-- <h4 class="text-center">Pemerintah Kota Surabaya</h4> -->

    <div class="position-fixed bottom-0 start-0 end-0 bg-white p-3 shadow">
        <div class="d-flex flex-column">
            <?php
                foreach ($kategori as $key => $value) {
            ?>
            <a href="index.php?pages=pilih_layanan&kategori=<?=$value['kategori']?>" class="btn btn-primary mb-2"><?=$value['kategori']?></a>
            <?php }?>
        </div>
    </div>
</div>