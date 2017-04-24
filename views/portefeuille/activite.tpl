<h2><strong><?= $currentActivite['reference'] ?> - <?= $currentActivite['libelle'] ?></strong></h2>

<?php if(!empty($askMeos)) : ?>
    <?php foreach($askMeos as $askMeo) : ?>
        <div class = "ibox-content m-b-md">
            <a class="text-primary" href="/portefeuille/detail/?id_act=<?= $askMeo['actId'] ?>&id_pro=<?= $askMeo['id_situation_pro'] ?>"><h2><?= $askMeo['situaProRef'] ?></h2>
                <strong>Contexte: </strong><?= $askMeo['contexteLibelle'] ?></p></a>
        </div>
    <?php endforeach ?>
<?php else : ?>
    <div class="wrapper wrapper-content">
        <div class="middle-box text-center animated fadeInRight">
            <h3 class="font-bold">Pas de résultat</h3>
            <div class="error-desc">
                Il semblerait qu'aucune mise en oeuvre correspondant à votre recherche n'ait été ajouté.
            </div>
        </div>
    </div>
<?php endif ?>