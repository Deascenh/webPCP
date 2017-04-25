<h2><strong>Contexte : <?= $currentContexte['libelle'] ?></strong></h2>

<?php if($currentContexte['id'] == '3') : ?>
<div>
    <a class="pull-left" target="_blank" href="https://gotoo.world/">
        <img class="m-r-md"src="/includes/imgs/logo_gotoo.png" style="max-width:250px">
    </a>
    <p>
       Gotoo, anciennement GOTOLILLE est une société de prestations immobilières à direction des étudiants internationaux souhaitant trouver une logement en France le temps de leur expatriation. Le septicisme des bailleurs envers les étudiants, les
       lourdeurs administratives, la barrière de la langue et surtout la distance rendent la recherche de location très compliqué pour les étrangers. Gotoo se place en intermédiaire entre l'étudiant et le bailleur en trouvant l'habitation correspondante
       aux besoins et au budget du client, en s'occupant des formalités administratives et des garanties.
    <p>
</div>
<?php elseif($currentContexte['id'] == '4') :?>
<div>
    <a class="pull-left" target="_blank" href="http://www.whitedev.fr/">
        <img class="m-r-md"src="/includes/imgs/logo_whitedev.jpg" style="max-width:250px">
    </a>
    <p>
        WhiteDev est une societe de Services en Ingénierie Informatique (SSII) spécialisée en développement basée à Lille. Depuis plus de 7 ans, WhiteDev accompagne ses clients autour des dernières technologies dans le développement informatique.
        Elle propose une gamme de prestations qui couvre l'ensemble des métiers liés à l'ingénierie Web et au développement d'applications. En plus de ses compétences techniques, WhiteDev met un point d’honneur sur la qualité du service et le suivi des projets.
    <p>
</div>
<?php endif ?>

<?php if(!empty($askMeos)) : ?>
    <?php foreach($askMeos as $askMeo) : ?>
        <div class = "ibox-content m-b-md">
            <a class="text-primary" href="/portefeuille/detail/?id_act=<?= $askMeo['actId'] ?>&id_pro=<?= $askMeo['id_situation_pro'] ?>"><h2><?= $askMeo['actRef'] ?></strong>&nbsp;<small><?= $askMeo['actLib'] ?></small></h2>
            <p><strong>Situation Pro: </strong><?= $askMeo['situaProRef'] ?></p></a>
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