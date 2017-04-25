<h1><?= $currentProfessionnelle['libelle'] ?></h1>
<h2><?= $currentActivite['reference'] ?> <?= $currentActivite['libelle'] ?></h2>
<?php foreach($detailMeos as $detailMeo) : ?>
<div class="ibox-content m-b-md">
    <h2><strong><?= $detailMeo['compRef'] ?></strong>&nbsp;<small><?= $detailMeo['compLib'] ?></small></h2>
    <p><?= $detailMeo['commentaire'] ?></p>
    <hr class = "hr-line-solid">
    <?php if(!empty($detailMeo['mediaMeos'])) : ?>
    <h2>Preuves : </h2>
    <?php foreach($detailMeo['mediaMeos'] as $media) : ?>
    <div class = "w-300">
        <h3><?= $media['description'] ?></h3>
        <?= $media['tag'] ?>
        <div class="file-name"><small><?= $media['mediaComment'] ?></small></div>
        <hr class="m-b-md">
    </div>
    <?php endforeach ?>
    <?php endif ?>
</div>
<?php endforeach ?>