<div class="container mt-5">
    <div class="row mt-5 p-3">
        <div class="card shadow p-3">
            <h1 class="text-center"><?=$layanan['nama_layanan']?></h1>
            <div class="d-flex justify-content-center">
                <?php
                    if(isset($layanan['video']) && $layanan['video'] != '') {
                ?>
                    <iframe src="https://drive.google.com/file/d/<?= htmlentities($layanan['video']) ?>/preview" 
                            width="640" height="480" allow="autoplay" allowfullscreen>
                    </iframe>
                <?php }?>
            </div>

            <h2>Persyaratan</h2>
            <ol>
                <?php
                    foreach ($layanan['detail'] as $key => $value) {
                ?>
                <li><?=$value['syarat']?></li>
                <?php }?>
            </ol>
        </div>
    </div>

</div>