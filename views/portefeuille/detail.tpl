<?php 
var_dump($detailMeos);
?>

<?php foreach($detailMeos as $detailMeo) : ?>
<div class="ibox-content m-b-md">
    <h2><?= $detailMeo['compRef'] ?>&nbsp;<small><?= $detailMeo['compLib'] ?></small></h2>

    <?php if(!empty($detailMeo['mediaMeos'])) : ?>
    <?php foreach($detailMeo['mediaMeos'] as $media) : ?>
        <?= $media['tag'] ?>
    <?php endforeach ?>
    <?php endif ?>
</div>
<?php endforeach ?>