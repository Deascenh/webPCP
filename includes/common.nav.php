<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	
	<!--[if lt IE 9]>
	<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>
	<![endif]-->	

    <title>PCF | Moulin Thibault</title>

    <link href="/includes/css/bootstrap.min.css" rel="stylesheet">
    <link href="/includes/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="/includes/css/style.css" rel="stylesheet">
    <link href="/includes/css/animate.css" rel="stylesheet">
</head>

<body class="top-navigation">
    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom white-bg">
        <nav class="navbar navbar-static-top" role="navigation">
            <div class="navbar-header">
                <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <i class="fa fa-reorder"></i>
                </button>
                <a href="#" class="navbar-brand">Portefeuille</a>
            </div>
            <div class="navbar-collapse collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a aria-expanded="false" role="button" href="layouts.html"> Retour aux catégories</a>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Contextes <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                        <?php foreach($contextes as $contexte) : ?>
                            <li><a href="/portefeuille/contexte/?id=<?= $contexte['id'] ?>"><?= $contexte['libelle'] ?></a></li>
                        <?php endforeach ?>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Situations professionnelles <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                        <?php foreach($situapros as $situapro) : ?>
                            <li><a href="/portefeuille/contexte/?id=<?= $situapro['id'] ?>"><?= $situapro['libelle'] ?></a></li>
                        <?php endforeach ?>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Situations Obligatoires <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                        <?php foreach($situaoblis as $situaobli) : ?>
                            <li><a href="/portefeuille/contexte/?id=<?= $situaobli['id'] ?>"><?= $situaobli['libelle'] ?></a></li>
                        <?php endforeach ?>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        </div>
        <div class="wrapper wrapper-content">