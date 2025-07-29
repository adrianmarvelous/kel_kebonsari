<style>
    a:hover .cardd {
        transform: scale(1.05);
        transition: transform 0.3s ease;
    }

    .cardd {
        transition: transform 0.3s ease;
    }
</style>

<div class="container">
    <div class="row">
        <div class="p-3">
            <p class="text-center" style="margin-top: 100px;font-size:3rem">Pilih Layanan</p>
            <!-- <h4 class="text-center">Pemerintah Kota Surabaya</h4> -->

            <?php
                foreach ($layanan as $key => $value) {
            ?>
                <a href="index.php?pages=detail_layanan&id=<?=$value['id_layanan']?>" style="text-decoration: none;color: black;">
                    <div class="card cardd shadow mb-3">
                        <div class="card-body">
                            <h5 class="card-title"><?=$value['nama_layanan']?></h5>
                        </div>
                    </div>
                </a>
            <?php }?>
        </div>
    </div>
</div>