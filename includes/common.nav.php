<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	
	<!--[if lt IE 9]>
	<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>
	<![endif]-->	

    <title>PCP | Moulin Thibault</title>

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
                <a href="/portefeuille/home" class="navbar-brand">Portefeuille</a>
            </div>
            <div class="navbar-collapse collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Contextes <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                        <?php foreach($navContextes as $navContexte) : ?>
                            <li><a href="/portefeuille/contexte/?id=<?= $navContexte['id'] ?>"><?= $navContexte['libelle'] ?></a></li>
                        <?php endforeach ?>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Situations Obligatoires <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                        <?php foreach($navSituaoblis as $navSituaobli) : ?>
                            <li><a href="/portefeuille/obligatoire/?id=<?= $navSituaobli['id'] ?>"><?= $navSituaobli['libelle'] ?></a></li>
                        <?php endforeach ?>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Situations professionnelles <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                        <?php foreach($navSituapros as $navSituapro) : ?>
                            <li><a href="/portefeuille/professionnelle/?id=<?= $navSituapro['id'] ?>"><?= $navSituapro['libelle'] ?></a></li>
                        <?php endforeach ?>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        </div>
        <div class="wrapper wrapper-content">
            <div class="row">
                <div class="col-lg-9">