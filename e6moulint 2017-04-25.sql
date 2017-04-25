-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 24 Avril 2017 à 23:05
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `e6moulint`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `id` int(11) NOT NULL,
  `reference` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_processus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `activite`
--

INSERT INTO `activite` (`id`, `reference`, `libelle`, `id_processus`) VALUES
(1, 'A1.1.1', 'Analyse du cahier des charges d’un service à produire', 1),
(2, 'A1.1.2', 'Étude de l’impact de l’intégration d’un service sur le système informatique', 1),
(3, 'A1.1.3', 'Étude des exigences liées à la qualité attendue d’un service', 1),
(4, 'A1.2.1', 'Élaboration et présentation d’un dossier de choix de solution technique', 1),
(5, 'A1.2.2', 'Rédaction des spécifications techniques de la solution retenue', 1),
(6, 'A1.2.3', 'Évaluation des risques liés à l’utilisation d’un service', 1),
(7, 'A1.2.4', 'Détermination des tests nécessaires à la validation d’un service', 1),
(8, 'A1.2.5', 'Définition des niveaux d’habilitation associés à un service', 1),
(9, 'A1.3.1', 'Test d’intégration et d’acceptation d’un service', 1),
(10, 'A1.3.2', 'Définition des éléments nécessaires à la continuité d’un service', 1),
(11, 'A1.3.3', 'Accompagnement de la mise en place d’un nouveau service', 1),
(12, 'A1.3.4', 'Déploiement d’un service', 1),
(13, 'A1.4.1', 'Participation à un projet', 1),
(14, 'A1.4.2', 'Évaluation des indicateurs de suivi d’un projet et justification des écarts', 1),
(15, 'A1.4.3', 'Gestion des ressources', 1),
(16, 'A2.1.1', 'Accompagnement des utilisateurs dans la prise en main d’un service', 2),
(17, 'A2.1.2', 'Évaluation et maintien de la qualité d’un service', 2),
(18, 'A2.2.1', 'Suivi et résolution d’incidents', 2),
(19, 'A2.2.2', 'Suivi et réponse à des demandes d’assistance', 2),
(20, 'A2.2.3', 'Réponse à une interruption de service', 2),
(21, 'A2.3.1', 'Identification, qualification et évaluation d’un problème', 2),
(22, 'A2.3.2', 'Proposition d’amélioration d’un service', 2),
(23, 'A3.2.1', 'Installation et configuration d’éléments d’infrastructure', 3),
(24, 'A3.2.2', 'Remplacement ou mise à jour d’éléments défectueux ou obsolètes', 3),
(25, 'A4.1.1', 'Proposition d’une solution applicative', 4),
(26, 'A4.1.10', 'Rédaction d’une documentation d’utilisation', 4),
(27, 'A4.1.2', 'Conception ou adaptation de l’interface utilisateur d’une solution applicative', 4),
(28, 'A4.1.3', 'Conception ou adaptation d’une base de données', 4),
(29, 'A4.1.4', 'Définition des caractéristiques d’une solution applicative', 4),
(30, 'A4.1.5', 'Prototypage de composants logiciels', 4),
(31, 'A4.1.6', 'Gestion d’environnements de développement et de test', 4),
(32, 'A4.1.7', 'Développement, utilisation ou adaptation de composants logiciels', 4),
(33, 'A4.1.8', 'Réalisation des tests nécessaires à la validation d’éléments adaptés ou développés', 4),
(34, 'A4.1.9', 'Rédaction d’une documentation technique', 4),
(35, 'A4.2.1', 'Analyse et correction d’un dysfonctionnement, d’un problème de qualité de service ou de sécurité', 4),
(36, 'A4.2.2', 'Adaptation d’une solution applicative aux évolutions de ses composants', 4),
(37, 'A4.2.3', 'Réalisation des tests nécessaires à la mise en production d’éléments mis à jour', 4),
(38, 'A4.2.4', 'Mise à jour d’une documentation technique', 4),
(39, 'A5.1.1', 'Mise en place d’une gestion de configuration', 5),
(40, 'A5.1.2', 'Recueil d’informations sur une configuration et ses éléments', 5),
(41, 'A5.1.3', 'Suivi d’une configuration et de ses éléments', 5),
(42, 'A5.1.4', 'Étude de propositions de contrat de service (client, fournisseur)', 5),
(43, 'A5.1.5', 'Évaluation d’un élément de configuration ou d’une configuration', 5),
(44, 'A5.1.6', 'Évaluation d’un investissement informatique', 5),
(45, 'A5.2.1', 'Exploitation des référentiels, normes et standards adoptés par le prestataire informatique', 5),
(46, 'A5.2.2', 'Veille technologique', 5),
(47, 'A5.2.3', 'Repérage des compléments de formation ou d’auto-formation utiles à l’acquisition de nouvelles compétences', 5),
(48, 'A5.2.4', 'Étude d‘une technologie, d’un composant, d’un outil ou d’une méthode', 5),
(49, 'A3.1.1', 'Proposition d\'une solution d\'infrastructure', 3),
(50, 'A3.1.2', 'Maquettage et prototypage d\'une solution d\'infrastrure', 3),
(51, 'A3.1.3', 'Prise en compte du niveau de sécurité nécessaire à une infrastructure', 3);

-- --------------------------------------------------------

--
-- Structure de la table `attachement`
--

CREATE TABLE `attachement` (
  `id` int(11) NOT NULL,
  `id_meo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `attachement`
--

INSERT INTO `attachement` (`id`, `id_meo`) VALUES
(1, 16),
(2, 16),
(3, 16),
(8, 16),
(24, 20),
(23, 23),
(20, 24),
(21, 24),
(22, 24),
(23, 24),
(19, 25),
(7, 26),
(4, 30),
(5, 30),
(6, 30),
(9, 31),
(10, 32),
(11, 33),
(12, 33),
(13, 34),
(14, 35),
(15, 35),
(16, 35),
(17, 35),
(18, 35);

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

CREATE TABLE `competence` (
  `id` int(11) NOT NULL,
  `reference` varchar(25) CHARACTER SET utf8 NOT NULL,
  `libelle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_activite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `competence`
--

INSERT INTO `competence` (`id`, `reference`, `libelle`, `id_activite`) VALUES
(1, 'C1.1.1.1', 'Recenser et caractériser les contextes d\'utilisation, les processus et le et les acteurs sur lesquels le service à produire aura un impact', 1),
(2, 'C1.1.1.2', 'Identifier les fonctionnalités attendues du service à produire', 1),
(3, 'C1.1.1.3', 'Préparer sa participation à une réunion, Rédiger un compte-rendu d\'entretien, de réunion', 1),
(4, 'C1.1.2.1', 'Analyser les interactions entre services', 2),
(5, 'C1.1.2.2', 'Recenser les composants de l\'architecture technique sur lesquels le service à produire aura un impact', 2),
(6, 'C1.1.3.1', 'Recenser et caractériser les exigences liées à la qualité attendue du service à produire', 3),
(7, 'C1.1.3.2', 'Recenser et caractériser les exigences de sécurité pour le service à produire', 3),
(8, 'C1.2.1.1', 'Recenser et caractériser des solutions répondant au cahier des charges [adaptation d\'une solution existante ou réalisation d\'une nouvelle]', 4),
(9, 'C1.2.1.2', 'Estimer le coût d\'une solution', 4),
(10, 'C1.2.1.3', 'Rédiger un dossier de choix et d\'un argumentaire technique', 4),
(11, 'C1.2.2.1', 'Recenser les composants nécessaires à la réalisation de la solution retenue', 5),
(12, 'C1.2.2.2', 'Décrire l\'implantation des différents composants de la solution et les échanges entre eux', 5),
(13, 'C1.2.2.3', 'Rédiger les spécifications fonctionnelles et techniques de la solution retenue dans le formalisme exigé par l\'organisation', 5),
(14, 'C1.2.3.1', 'Recenser les risques liés à une mauvaise utilisation ou à une utilisation malveillante du service', 6),
(15, 'C1.2.3.2', 'Recenser les risques liés à un dysfonctionnement du service', 6),
(16, 'C1.2.3.3', 'Prévoir les conséquences techniques de la prise en compte d\'un risque', 6),
(17, 'C1.2.4.1', 'Recenser les tests d\'acceptation nécessaires à la validation du service et les résultats attendus', 7),
(18, 'C1.2.4.2', 'Préparer les jeux d\'essai et les procédures pour la réalisation des tests ', 7),
(19, 'C1.2.5.1', 'Recenser les utilisateurs du service, leurs rôles et leur niveau de responsabilité', 8),
(20, 'C1.2.5.2', 'Recenser les ressources liées à l\'utilisation du service', 8),
(21, 'C1.2.5.3', 'Proposer les niveaux d\'habilitation associés au services', 8),
(22, 'C1.3.1.1', 'Mettre en place l\'environnement de test du service', 9),
(23, 'C1.3.1.2', 'Tester le service', 9),
(24, 'C1.3.1.3', 'Rédiger le rapport de test', 9),
(25, 'C1.3.2.1', 'Identifier les éléments à sauvegarder et à journaliser pour assurer la continuité du service et la traçabilité des transactions', 10),
(26, 'C1.3.2.2', 'Spécifier les procédures d’alerte associées au service', 10),
(27, 'C1.3.2.3', 'Décrire les solutions de fonctionnement en mode dégradé et les procédures de reprise du service', 10),
(28, 'C1.3.3.1', 'Mettre en place l’environnement de formation au nouveau service', 11),
(29, 'C1.3.3.2', 'Informer et former les utilisateurs', 11),
(30, 'C1.3.4.1', 'Mettre en exploitation le service', 12),
(31, 'C1.3.4.2', 'Mettre au point une procédure d’installation de la solution', 12),
(32, 'C1.3.4.3', 'Automatiser l’installation de la solution', 12),
(33, 'C1.4.1.1', 'Établir son planning personnel en fonction des exigences et du déroulement du projet', 13),
(34, 'C1.4.1.2', 'Rendre compte de son activité', 13),
(35, 'C1.4.2.1', 'Suivre l’exécution du projet', 14),
(36, 'C1.4.2.2', 'Analyser les écarts entre temps prévu et temps consommé', 14),
(37, 'C1.4.2.3', 'Contribuer à l’évaluation du projet', 14),
(38, 'C1.4.3.1', 'Recenser les ressources humaines, matérielles, logicielles et budgétaires nécessaires à l’exécution du projet et de ses tâches personnelles', 15),
(39, 'C1.4.3.2', 'Adapter son planning personnel en fonction des ressources disponibles', 15),
(40, 'C2.1.1.1', 'Aider les utilisateurs dans l\'appropriation du nouveau service', 16),
(41, 'C2.1.1.2', 'Identifier des besoins de formation complémentaires', 16),
(42, 'C2.1.1.3', 'Rendre compte de la satisfaction des utilisateurs', 16),
(43, 'C2.1.2.1', 'Analyser les indicateurs de qualité du service', 17),
(44, 'C2.1.2.2', 'Appliquer les procédures d\'alerte destinées à rétablir la qualité du service', 17),
(45, 'C2.1.2.3', 'Vérifier périodiquement le fonctionnement du service en mode dégradé et la disponibilité des éléments permettant une reprise du service', 17),
(46, 'C2.1.2.4', 'Superviser les services et leur utilisation', 17),
(47, 'C2.1.2.5', 'Contrôler la confidentialité et l\'intégrité des données', 17),
(48, 'C2.1.2.6', 'Exploiter les indicateurs et les fichiers d\'audit', 17),
(49, 'C2.1.2.7', 'Produire les rapports d\'activité demandés par les différents acteurs', 17),
(50, 'C2.2.1.1', 'Résoudre l\'incident en s\'appuyant sur une base de connaissances et la documentation associée ou solliciter l\'entité compétente', 18),
(51, 'C2.2.1.2', 'Prendre le contrôle d\'un système à distance', 18),
(52, 'C2.2.1.3', 'Rédiger un rapport d\'incident et mémoriser l\'incident et sa résolution dans une base de connaissances', 18),
(53, 'C2.2.1.4', 'Faire évoluer une procédure de résolution d\'incident', 18),
(54, 'C2.2.2.1', 'Identifier le niveau d\'assistance souhaité et proposer une réponse adaptée en s\'appuyant sur une base de connaissances et sur la documentation associée ou solliciter l\'entité compétence', 19),
(55, 'C2.2.2.2', 'Informer l\'utilisateur de la situation de sa demande', 19),
(56, 'C2.2.2.3', 'Prendre le contrôle d\'un poste utilisateur à distance', 19),
(57, 'C2.2.2.4', 'Mémoriser la demande d\'assistance et sa réponse dans une base de connaissances', 19),
(58, 'C2.2.3.1', 'Appliquer la procédure de continuité du service en mode dégradé', 20),
(59, 'C2.2.3.2', 'Appliquer la procédure de reprise du service', 20),
(60, 'C2.3.1.1', 'Repérer une suite de dysfonctionnements récurrents d\'un service', 21),
(61, 'C2.3.1.2', 'Identifier les causes de ce dysfonctionnement', 21),
(62, 'C2.3.1.3', 'Qualifier le problème (contexte et environnement)', 21),
(63, 'C2.3.1.4', 'Définir le degré d\'urgence du problème', 21),
(64, 'C2.3.1.5', 'Evaluer les conséquences techniques du problème', 21),
(65, 'C2.3.2.1', 'Décrire les incidences d\'un changement proposé sur le service', 22),
(66, 'C2.3.2.2', 'Evaluer le délai et le coût de réalisation du changement proposé', 22),
(67, 'C2.3.2.3', 'Recenser les risques techniques, humains, financiers et juridiques associés au changement proposé', 22),
(68, 'C3.2.1.1', 'Installer et configurer un élément d\'interconnexion, un service, un serveur, un équipement terminal utilisateur', 23),
(69, 'C3.2.1.2', 'Installer et configurer un élément d\'infrastructure permettant d\'assurer la continuité de service, un système de régulation des éléments d\'infrastructure, un outil de métrologie, un dispositif d\'alerte', 23),
(70, 'C3.2.1.3', 'Installer et configurer des éléments de sécurité permettant d\'assurer la protection du système informatique', 23),
(71, 'C3.2.2.1', 'Élaborer une procédure de remplacement ou de migration respectant la continuité d\'un service', 24),
(72, 'C3.2.2.2', 'Mettre en oeuvre une procédure de remplacement ou de migration', 24),
(73, 'C4.1.1.1', 'Identifier les composants logiciels nécessaires à la conception de la solution', 25),
(74, 'C4.1.1.2', 'Estimer les éléments de coût et le délai de mise en oeuvre de la solution', 25),
(75, 'C4.1.10.1', 'Rédiger la documentation d\'utilisation, une aide en ligne, une FAQ', 26),
(76, 'C4.1.10.2', 'Adapter la documentation d\'utilisation à chaque contexte d\'utilisation', 26),
(77, 'C4.1.2.1', 'Définir les spécifications de l\'interface utilisateur de la solution applicative', 27),
(78, 'C4.1.2.2', 'Maquetter un élément de la solution applicative', 27),
(79, 'C4.1.2.3', 'Concevoir et valider la maquette en collaboration avec des utilisateurs', 27),
(80, 'C4.1.3.1', 'Modéliser le schéma de données nécessaire à la mise en place de la solution applicative', 28),
(81, 'C4.1.3.2', 'Implémenter le schéma de données dans un SGBD', 28),
(82, 'C4.1.3.3', 'Programmer des éléments de la solution applicative dans le langage d\'un SGBD', 28),
(83, 'C4.1.3.4', 'Manipuler les données liées à la solution applicative à travers un langage de requête', 28),
(84, 'C4.1.4.1', 'Recenser et caractériser les composants existants ou à développer utiles à la réalisation de la solution applicative dans le respect des budgets et planning prévisionnels', 29),
(85, 'C4.1.5.1', 'Choisir les éléments de la solution à prototyper', 30),
(86, 'C4.1.5.2', 'Développer un prototype', 30),
(87, 'C4.1.5.3', 'Valider un prototype', 30),
(88, 'C4.1.6.1', 'Mettre en place et exploiter un environnement de développement', 31),
(89, 'C4.1.6.2', 'Mettre en place et exploiter un environnement de test', 31),
(90, 'C4.1.7.1', 'Développer les éléments d\'une solution', 32),
(91, 'C4.1.7.2', 'Créer un composant logiciel', 32),
(92, 'C4.1.7.3', 'Analyser et modifier le code d\'un composant logiciel', 32),
(93, 'C4.1.7.4', 'Utiliser des composants d\'accès aux données', 32),
(94, 'C4.1.7.5', 'Mettre en place des éléments de sécurité liés à l\'utilisation d\'un composant logiciel', 32),
(95, 'C4.1.8.1', 'Élaborer et réaliser des tests unitaires', 33),
(96, 'C4.1.8.2', 'Mettre en évidence et corriger les écarts', 33),
(97, 'C4.1.9.1', 'Produire ou mettre à jour la documentation technique d\'une solution applicative et de ses composants logiciels', 34),
(98, 'C4.2.1.1', 'Élaborer un jeu d\'essai permettant de reproduire le dysfonctionnement', 35),
(99, 'C4.2.1.2', 'Repérer les composants à l\'origine du dysfonctionnement', 35),
(100, 'C4.2.1.3', 'Concevoir les mises à jour à effectuer', 35),
(101, 'C4.2.1.4', 'Réaliser les mises à jour', 35),
(102, 'C4.2.2.1', 'Repérer les évolutions des composants utilisés et leurs conséquences', 36),
(103, 'C4.2.2.2', 'Concevoir les mises à jour à effectuer', 36),
(104, 'C4.2.2.3', 'Élaborer et réaliser les tests unitaires des composants mis à jour', 36),
(105, 'C4.2.3.1', 'Élaborer et réaliser des tests d\'intégration et de non régression de la solution mise à jour', 37),
(106, 'C4.2.3.2', 'Concevoir une procédure de migration et l\'appliquer dans le respect de la continuité de service', 37),
(107, 'C4.2.4.1', 'Repérer les éléments de la documentation à mettre à jour', 38),
(108, 'C4.2.4.2', 'Mettre à jour une documentation', 38),
(109, 'C5.1.1.1', 'Recenser les caractéristiques techniques nécessaire à la gestion des éléments de la configuration d\'une organisation', 39),
(110, 'C5.1.1.2', 'Paramétrer une solution de gestion des éléments d\'une configuration', 39),
(111, 'C5.1.2.1', 'Renseigner les événements relatifs au cycle de vie d\'un élément de la configuration', 40),
(112, 'C5.1.2.2', 'Actualiser les caractéristiques des éléments de la configuration', 40),
(113, 'C5.1.3.1', 'Contrôler et auditer les éléments de la configuration', 41),
(114, 'C5.1.3.2', 'Reconstituer un historique des modifications effectuées sur les éléments de la configuration', 41),
(115, 'C5.1.3.3', 'Identifier les éléments de la configuration à modifier ou remplacer', 41),
(116, 'C5.1.3.4', 'Repérer les équipements obsolètes et en proposer le traitement dans le respect de la réglementation en vigueur', 41),
(117, 'C5.1.4.1', 'Assister à la maîtrise d\'ouvrage dans l\'analyse technique de la proposition de contrat', 42),
(118, 'C5.1.4.2', 'Interpréter des indicateurs de suivi de la prestation associée à la proposition de contrat', 42),
(119, 'C5.1.4.3', 'Renseigner les éléments permettant d\'estimer la valeur du service', 42),
(120, 'C5.1.5.1', 'Vérifier un plan d\'amortissement', 43),
(121, 'C5.1.5.2', 'Apprécier la valeur actuelle d\'un élément de configuration', 43),
(122, 'C5.1.6.1', 'Renseigner les variables d\'une étude de rentabilité d\'un investissement', 44),
(123, 'C5.1.6.2', 'Caractériser et prévoir les investissements matériels et logiciels', 44),
(124, 'C5.2.1.1', 'Evaluer le degré de conformité des pratiques à un référentiel, à une norme, ou à un standard adopté par le prestataire informatique', 45),
(125, 'C5.2.1.2', 'Identifier et partager les bonnes pratiques à intégrer', 45),
(126, 'C5.2.2.1', 'Définir une stratégie de recherche d\'informations', 46),
(127, 'C5.2.2.2', 'Tenir à jour une liste de sources d\'information', 46),
(128, 'C5.2.2.3', 'Evaluer la qualité d\'une source d\'information en fonction d\'un besoin', 46),
(129, 'C5.2.2.4', 'Synthétiser et diffuser les résultats d\'une veille', 46),
(130, 'C5.2.3.1', 'Identifier les besoins de formation pour et mettre en oeuvre une technologie, un composant, un outil ou une méthode', 47),
(131, 'C5.2.3.2', 'Repérer l\'offre et les dispositifs de formation', 47),
(132, 'C5.2.4.1', 'Se documenter à propos d\'une technologie, d\'un composant, d\'un outil ou d\'une méthode', 48),
(133, 'C5.2.4.2', 'Identifier le potentiel et les limites d\'une technologie, d\'un composant, d\'un outil ou d\'une méthode par rapport à un service à produire', 48),
(136, 'C3.1.1.1', 'Lister les composants matériels et logiciels nécessaires à la prise en charge des processus, des flux d\'information et de leur rôle', 49),
(138, 'C3.1.1.3', 'Caractériser les éléments permettant d\'assurer la qualité et la sécurité des services', 49),
(139, 'C3.1.1.4', 'Recenser les modifications et/ou les acquisitions nécessaires à la mise en place d\'une solution d\'infrastructure compatible avec le budget et le planning prévisionnels', 49),
(140, 'C3.1.1.5', 'Caractériser les solutions d\'interconnexion utilisées entre un réseau et d\'autres réseaux internes ou externes à l\'organisation', 49),
(141, 'C3.1.1.2', 'Caractériser les éléments d\'interconnexion, les services, les serveurs et les équipements terminaux nécessaires', 49),
(142, 'C3.1.2.1', 'Concevoir une maquette de la solution', 50),
(143, 'C3.1.2.2', 'Construire un prototype de la solution', 50),
(144, 'C3.1.2.3', 'Préparer l\'intégration d\'un composant d\'infrastructure', 50),
(145, 'C3.1.3.1', 'Caractériser des solutions de sécurité et évaluer le coût', 51),
(146, 'C3.1.3.2', 'Proposer une solution de sécurité compatible avec les contraintes techniques, financières, juridiques et organisationnelles', 51),
(147, 'C3.1.3.3', 'Décrire une solution de sécurité et les risques couverts', 51);

-- --------------------------------------------------------

--
-- Structure de la table `contexte`
--

CREATE TABLE `contexte` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `contexte`
--

INSERT INTO `contexte` (`id`, `libelle`) VALUES
(1, 'PPE 1'),
(2, 'PPE 2'),
(3, '1er Stage'),
(4, '2ème Stage');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `nom_fichier` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8,
  `commentaire` longtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `media`
--

INSERT INTO `media` (`id`, `nom_fichier`, `type`, `description`, `commentaire`) VALUES
(1, 'Maquette - Homepage legende.png', 'png', 'Maquette du point d\'entrée du site Agrur Producer', 'Nous avons réalisé ce maquettage sur l\'outil web UXPIN, profitant d\'une semaine d\'essai pour éprouver cette application. Nous avons voulu conserver dans cette maquette l\'esprit de la culture de la noix tout en y intégrant des éléments simples, épurés, " Flat" : moderne.'),
(2, 'Maquette - Inscription legende.png', 'png', 'Maquette de la page d\'inscription du site', 'AGRUR souhaitait permettre aux producteur voulant adhérer à la coopérative de pourvoir soumettre leur candidature depuis la SI. Aussi, accessible depuis la page d\'authentification, nous avons imaginé une page d\'inscription avec un formulaire permettant de soumettre à la coopérative toutes ces informations et exposer ces motivations.'),
(3, 'Maquette - Producteur legende.png', 'png', 'Maquette de l\'espace du producteur', 'Le site Agrur Producer doit permettre aux producteur inscris de pouvoir gérer leur informations. Aussi avons nous maquetter un espace se résumant à un simple formulaire pré-rempli" en fonction du producteur connecté. Cette page permet de modifier les différents champs, ajouter ou retirer de nouvelle variétés cultivés ou certifications.'),
(4, 'Construction du Gantt sur excel.PNG', 'png', 'Croisement du jeu de donnée dans le graphique', 'La méthode permettant de créer sur Excel le digramme de Gantt appelé "Présenter vos données dans un diagramme de Gantt" se trouve dans au lien suivant:\r\nhttps://support.office.com/fr-fr/article/Pr%C3%A9senter-vos-donn%C3%A9es-dans-un-diagramme-de-Gantt-f8910ab4-ceda-4521-8207-f0fb34d9e2b6\r\nIl s\'agit d\'une documentation officielle Microsoft que j\'ai ainsi suivie pour mettre en forme le diagramme du projet.'),
(5, 'Construction Gantt sur excel 2.PNG', 'png', 'Construction du Gantt sur Excel 2', 'Ici une autre étape de la mise en forme du Gantt du "Projet 3 - Cas PENC" sur excel.'),
(6, 'Gant du projet PENC.PNG', 'png', 'Diagramme de Gantt final du "Projet 3 - Cas PENC"', 'Le résultat finale ci - dessus représente le déroulement du projet (L\'échelle est en jours). Le détail des étapes du projet et leur durées est inspiré d\'une analyse de plusieurs projets web dont j\'ai pu prendre connaissance. Il en est ressortit cette répartition des tâches adaptés au choix de l\'utilisation d\'un CMS pour réaliser le SI.'),
(7, 'Mise en place d\'Ubuntu Server 16.04 amd64.pdf', 'pdf', 'Procédure de mise en place de la machine virtuelle serveur et de l\'OS Ubuntu Server', 'Lors de la mise en place du nouveau serveur destinée à héberger les services vendu à AGRUR et avant tout leurs service web et base de données, j\'ai réalisé une série de capture visant à réaliser cette documentation. C\'est une documentation procédurale décrivant étapes par étapes la marche a suivre pour virtualiser la machine serveur et installer et configurer l\'OS Ubuntu Server 16.04 amd 64.'),
(8, 'Maquette Compete.pdf', 'pdf', 'Arborescence et maquette complète de la SI AgrurProducer', 'Ce PDF présente au début l\'arborescence du site; on voit alors que la solution est simple et très navigable. Puis sont présentés toutes les maquettes de chaque pages du site.'),
(9, 'Modele et jeu d\'essais SQL.pdf', 'pdf', 'Modèle de la base et requêtes réclamée par le service d\'EDF', 'Sur ce document apparaissent le modèle logique des données de la base ainsi que le 3 requêtes visant à renvoyer les données dont à besoin le service "Statistiques et Optimisation" pour ses travaux.\r\nPrenons en compte le fait'),
(10, 'Reponses aux questions preliminaires.pdf', 'pdf', 'Réponses aux questions communes à tous les projets PrestInfo.', 'Dans la 4ème question, la réponse est sous forme d\'un "Mini cahier des charges textuel" exposant brièvement les fonctionnalités attendues du service à produire pour le "Projet 3 - PENC (Entreprise régionale spécialisée dans les services à la personne)".'),
(11, 'Script MySQL creation BDD.pdf', 'pdf', 'Script de construction de la BDD d\'EDF', 'Ce script à été rédigé suite à la construction du MLD (Modèle Logique des Données) qui nous à permis de déterminé quelles seraient nos entités. Nous avons alors rédigé les requêtes permettant la création de chaque table avec leurs propriétés et la mise en relation des tables par la création des clés étrangères.'),
(12, 'MCD EDF.PNG', 'png', 'Modèle Conceptuel des Données de la SI d\'EDF', 'Cette image vous expose le schéma du MCD Avec ses entités et ses relations. Veuillez excuser la trivialité de ce dernier, en ce temps la notion d’héritage m\'était encore inconnu et mon analyse était limité, étant à mes débuts de développeur. :)'),
(13, 'Description textuelle du site et ses services.pdf', 'pdf', 'Description des spécifications de la solution web EDF', 'Ce document à été établie en reprenant tous les besoins exprimés par EDF à l’intérieur du sujet ("Cahier des charges") et décrit textuellement chaque composant et fonctionnalité présent à l’intérieur de la solution. Nous y trouvons également les ébauche de charte graphiques.'),
(14, 'Maquette integrale du site.pdf', 'pdf', 'Maquette complète du site web proposé à EDF', 'Cette maquette reprend l\'intégralité des pages dans un style qui n\'est pas voulu final mais qui reprends l\'ensembles des éléments propre à chaque espaces. Cette maquette à été réalisé grâce a l\'application web UxPin qui nous à également permis de la rendre dynamique et navigable.'),
(15, 'Code genere au maquettage UxPin.PNG', 'png', 'Maquette lancée dans un navigateur et code associé', ''),
(16, 'Code genere a la volee par UxPin.png', 'png', 'Système de fichier et codes exporté d\'UxPin', 'Ici le système de fichier et les différents fichiers généré par UxPin a partir de la maquette réalisé. C\'est un code généré à la volée permettant d\'ouvrir dans le navigateur une version du site fonctionnelle en apparence et dans sa navigabilité, ses éléments d\'interfaces et de style mais ne possède aucun traitements.'),
(17, 'Code genere a la volee par UxPin 2.PNG', 'png', 'Maquette lancée dans un navigateur et code associé - 2', ''),
(18, 'Code genere a la volee par UxPin 3.PNG', 'png', 'Maquette lancée dans un navigateur et code associé - 3', ''),
(19, 'Documentation Technique et Fonctionnelle.pdf', 'pdf', 'Documentation Technique du site AgrurProducer', 'Cette documentation reprend toutes les spécifications du site pouvant se révélé utile au client AGRUR et en particulier aux future administrateurs du site.'),
(20, 'Check de connexion.PNG', 'png', 'AppController de la partie Administrateur', 'Le constructeur de l\'AppController est appelé par l\'Autoloader du site lorsque toutes pages attachées à l\'index de la partie administrateur est appelé. Ce constructeur appelle la fonction logged() de la classe DBAuth qui renvoi true si un administrateur est connecté et false si non. Si aucun administrateur n\'est connecté alors la page ne s\'affichera pas, un header FORBIDDEN sera renvoyé (Erreur 403) par l\'appelle à une méthode de la classe parente "Controller".'),
(21, 'Classe Controller.PNG', 'png', 'Super Classe de tous les Controllers', 'Cette classe contient toutes les méthodes commune à tous les Controllers de l\'application. C\'est cette classe qui possède l\'une des fonction clé de notre MVC: La fonction "render()" qui permet de chargé la vue appelé dans l\'url, de récupérer toutes les variables passé par les Controllers et les envoyer à la vue, de stocker cette vue dans une variable $content et la passer au template où elle sera affiché.\r\nC\'est également dans cette classe que se trouve les header d\'erreur type 404 Not Found et 403 Forbidden.'),
(22, 'Classe DBAuth.PNG', 'png', 'Classe DBAuth chargé des authentifications', 'C\'est cette classe qui contient les méthodes essentiel à la gestion des connections. La méthode login() lance une requête préparé contenant l’identifiant rentré par l\'utilisateur. La BDD renverra donc l\'identifiant ET le mot de passe stockée crypté en sha1, ce mot est ensuite comparé au niveau de la méthode pour authentification. La méthode logged() est appelé à chaque fois qu\'une page dépendante de la partie administrateur est appelé. Elle vérifie qu\'une session à bien été ouverte (qu\'un utilisateur est bien connecté) avant de permettre l\'affichage de la page; cela permet de parer l\'éventualité où en renseignant un simple URL administrateur, une personne non connecté puisse afficher la page.'),
(23, 'Couche d\'acces aux donnees.PNG', 'png', 'Classe permettant les échanges avec MySQL', 'Cette classe contient toutes les méthodes utiles à la formulations de requêtes à une base de donnée MySQL. Elle use de l\'objet PDO qui offre une excellente interface vers la base de donnée. On y retrouve les méthodes tel que query() ou prepare() qui permettent la formulation de requêtes sécurisée à la BDD, et de formater les réponses selon les modèle du Framework pour se servir de retours sous la forme d\'objets. '),
(24, 'Choix des composants de la realisation.pdf', 'pdf', 'Récapitulatifs des choix et outils pour le projet AGRUR', 'Ce document reprend l\'intégralité des choix et directions prises pour la réalisation du projet de site Applicatif AgrurProducer. Certain de ses choix sont détaillé et justifié, accompagnés de leurs avantages et inconvénients. Il y figure également la liste des tous les outils avec lesquels nous avons pu être amené à travailler.');

-- --------------------------------------------------------

--
-- Structure de la table `meo`
--

CREATE TABLE `meo` (
  `id` int(11) NOT NULL,
  `commentaire` longtext CHARACTER SET utf8,
  `id_competence` int(11) DEFAULT NULL,
  `id_situation_pro` int(11) DEFAULT NULL,
  `enregistrement` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `meo`
--

INSERT INTO `meo` (`id`, `commentaire`, `id_competence`, `id_situation_pro`, `enregistrement`) VALUES
(1, 'Nous avons longuement pris connaissance du descriptif textuel des besoins de la "Situation professionnelle 1 - Mise en place d\'une solution Web". Nous avons alors pu recensé les acteurs impacté par cette solution: Les producteurs de noix (Fournisseurs d\'AGRUR) et les employé chargés d\'AGRUR chargé des commandes aux fournisseurs (Administrateurs de la solution technique). Les contextes d\'utilisation sont repertoriés dans le Diagramme de Cas d\'Utilisation. ', 1, 8, '2016-11-24 08:44:22'),
(2, 'Il ressort à la lecture des besoins liés la "Situation professionnelle 1 - Mise en place d\'un serveur web" qu\'en restant extrêmement proche du court descriptif, la solution informatique devra permettre à AGRUR de passer commande auprès de ses fournisseurs et à ses fournisseur de renseigner et tenir à jour leurs informations sur le SI. Les caractéristiques et fonctionnalité extraites du texte sont :\r\n- Renseignement et possibilité de mise à jour de ses informations pour le producteur\r\n- Authentification (Deux niveaux d\'administration)\r\n- Distribution des autorisations d\'accès par les admins\r\n- Edition de bons de commandes\r\n- Contrôle strict des saisies\r\n- Champs auto-complétés\r\n- Champs de contrôle modernes (ex: DatePicker)\r\n- Utilisation de Script JavaScript\r\n- Utilisation de solution libres\r\n- Adaptable selon le terminal (Responsive)', 2, 8, '2016-11-24 09:08:15'),
(3, 'L\'organisation VDEV comprend Maëlien Vanhorenbeek, Océane Vandaele et moi même, Thibault Moulin. Au moment de l\'organisation du projet nous avons convenu de l\'établissement de plusieurs réunion afin de rendre compte de notre travail et faire apparaître les nouveaux besoins et le dysfonctionnements éventuelles. Ces réunions ont nécessitées des préparations personnelles et ont fait l\'objet de compte rendu finaux.', 3, 6, '2016-11-24 09:46:16'),
(4, 'Afin de mettre en place la les différentes solutions souhaités par AGRUR, il nous à fallu comprendre la manière dont AGRUR fonctionnait potentiellement et comment la coopérative pourrait intégrer à son processus ces nouveaux outils. Il a également fallu réfléchir aux fournisseurs d\'AGRUR pour qui l\'utilisation devait être simple et rapide.', 4, 6, '2016-11-24 09:51:16'),
(5, 'Une liste des nouveaux composants ou services nécessaires à la mise en place du SI ainsi que les mises à jours à envisager à été produite. Celle ci comporte les possibilités techniques applicable selon les exigence d\'AGRUR ( SOLUTION WEB, TIRANT PROFIT DE TECHNOLOGIES LIBRES ) ainsi que les choix définitifs ayant été adoptés.\r\n! ! - Il a même été décidé de reprendre une partie de solution DEJA EXISTANTE de VDEV  afin de l\'intégrer au site web demandé par AGRUR. ', 5, 8, '2016-11-24 09:54:45'),
(6, 'Produire un service c\'est aussi justifier les choix que VDEV à fait pour réaliser la solution web attendu par AGRUR avec un certain niveau de qualité, pour cela nous avons monté un dossier argumentatif détaillant les raisons pour lesquels chaque composants logiciels et matériels on été adoptés.', 10, 7, '2016-11-24 10:08:13'),
(7, 'Nous avons recensé un document en interne reprenant tous les composants à la fois logiciel et matériel auxquels nous avons eu recours dans la réalisation de la solution retenue.', 11, 8, '2016-11-24 10:15:30'),
(8, 'Une parties des risques liés à une mauvaise utilisation du service on été envisagés et inscrit dans le Diagramme de Cas d\'Utilisation de l\'application web. Il en ressort que très peux de fausse manipulations peuvent se produire au seins de la solution même mais que des risques apparaissent si l\'admin doit un jour accéder directement à la base de donnée. ', 14, 8, '2016-11-24 10:21:48'),
(9, 'Le recensement des liés à un dysfonctionnement du service à fait l\'objet d\'un document technique reprenant, composant par composant, les problèmes pouvant survenir et ainsi produire des incidents voir de problèmes sur la solution. ', 15, 8, '2016-11-24 10:24:02'),
(10, 'Un court paragraphe dans le document relatif à la production du site fait apparaître les deux niveaux d\'utilisation de l\'application web (Producteur et Administrateur). Ils liste leurs droits, leurs accès ainsi que leurs privilèges.', 19, 8, '2016-11-24 11:00:49'),
(11, 'Durant la phase d\'analyse, des documents ont été produits tout au long des différentes séance, des recherches ont été menées, des choix ont du être fait et des décisions ont été prises. Les documents résultant de cette phases nous accompagneront pour la réalisation de chacune de missions.\r\nEn parallèle, comme tout au long de notre travail, chaque fin de séances a fait l\'objet d\'une compte-rendu d\'activité journalier.', 34, 6, '2016-11-24 11:14:22'),
(12, 'Chaque mercredi travaillé à fait l\'objet d\'un compte rendu personnel d\'activité et d\'une compte rendu de groupe sur l\'avancée du projet.', 34, 8, '2016-11-24 11:22:01'),
(13, 'Chaque mercredi travaillé ayant fait l\'objet d\'un compte rendu de groupe, tous les membre de l\'équipe avait la possibilité de suivre l\'avancé générale du projet. En plus du diagramme de Gantt prévisionnel réalisé lors de l\'organisation préliminaire du projet, un deuxième diagramme de Gantt effectif était tenu à jour de manière hebdomadaire.', 35, 8, '2016-11-24 11:26:45'),
(14, 'Un listing des choix définitifs des ressources matériels et logiciels à été rédigé, elle reprend tous les composant nécessaires à la conception de la soulution', 73, 8, '2016-11-24 11:41:09'),
(15, 'A l\'aide des documents produits durant l\'analyse préliminaire des besoins d\'AGRUR ainsi qu\'au terme de réflexions de groupe en matière caractéristiques et de fonctionnalités, nous avons pu répertorier l\'ensemble des spécifications de l\'interface utilisateur du SI souhaité. Grâce à ce travail, nous avons ensuite pu procéder au maquettage du site.', 77, 8, '2016-11-24 11:48:10'),
(16, 'Grâce à la définition des spécifications de l\'interface utilisateur et à l\'élaboration d\'une charte graphique, nous avons maquetter grâce à l\'outil en ligne UXpin la solution développé pour AGRUR. Nous avons voulu cette maquette la plus proche possible de la forme final du projet.', 78, 8, '2016-11-24 11:53:34'),
(17, 'Bien qu\'un Model Conceptuel des Données ait été établie lors de l\'analyse préliminaire au fonctionnement de l\'organisation, celui-ci reprenait L\'ENSEMBLE du fonctionnement du client AGRUR et aurait donc été trop généraliste, inefficient pour l\'applicatif web réalisé.\r\nEn s\'inspirant donc de ce premier MCD, une nouvelle modélisation des données à été réalisé, plus petite et adaptée aux besoins de la solution applicative qui viendra s\'appuyer dessus.', 80, 8, '2016-11-24 12:02:03'),
(18, 'Le MCD réalisé pour le site devant permettre à AGRUR de passer commande auprès de ses producteurs à été retranscrit en un Script SQL qui permet de construire la structure de la BDD (Tables, champs des tables, clés et index, etc.). Ce Script à été importé dans SGBDR pour créer pour enfin créer la base de donnée du site AgrurProducer. Puis, les Tables contenant des informations normalisés (fixes) comme les tables "variete" ou "cerftification" ont été remplis.', 81, 8, '2016-11-24 12:09:58'),
(19, 'Le site AgrurProduceur est de nature dynamique, il s\'adapte aux informations qu\'il gère; de plus, il est construit selon un model MVC (Model, View, Controller). En conséquence, toutes les pages sont des vues renseignées aux informations envoyées par leur contrôleur qui accède aux données grâce aux modèles. C\'est modèles dit autrement sont les requêtes SQL fournissant les données manipulés par le contrôleur.', 83, 8, '2016-11-24 12:15:54'),
(20, 'Une documentation relate tous les composants que nous avons pu utiliser afin de produire la solution applicative web pour AGRUR dans le respect du planning. On peut y retrouver l\'IDE PHPStorm ou encore le framework Bootstrap et d\'autres. ', 84, 8, '2016-11-24 12:21:02'),
(21, 'Afin de développer le site web d\'AGRUR, j\'ai, pour ma part, utilisé pour la première fois un IDE sur lequel j\'ai mené une étude et rédigé une documentation reprenant ses caractéristiques et détaillant ses possibilités d\'utilisation, il s\'agit de PHPStorm. Mettre en place et user de l\'environnement de cet IDE m\'a permis de gagner beaucoup de temps en matière de rapidité d\'écriture et de formalisme du code.\r\n', 88, 8, '2016-11-24 14:36:51'),
(22, 'La solution web AgrurProducer est programmé selon une architecture MVC. A chaque page appelées est associé une méthode présente dans le contrôleur correspondant au type de page affiché. Toutes les classes et les fichiers propres au projet se trouve dans le dossier "app" présent à la racine du site. Tandis que les classes génériques (Comme la couche d\'accès aux données, le model contenant les requêtes basiques, l\'autoloader, etc.) se trouve dans le dossier "core" provenant de projets antérieurs et pouvant resservir dans n\'importe quel projet respectant sa forme.\r\nCi-dessous sont joints quelques exemple de code qui sont accessible dans leur totalité sur le GitHub de VDEV [link].', 90, 8, '2016-11-24 15:09:16'),
(23, 'Dans le fichier core/database/MysqlDatabase.php se trouve la couche d\'accès aux données. Cette couche utilise l\'objet propre au PHP PDO. \r\nL\'extension PHP Data Objects (PDO) définit une excellent interface pour accéder à une base de données depuis PHP. PDO fournit une interface d\'abstraction à l\'accès de données, ce qui signifie que l\'on peut utiliser les mêmes fonctions pour exécuter des requêtes ou réupérer les données quelque soit la base de données utilisée.', 93, 8, '2016-11-24 15:37:01'),
(24, 'Différents éléments liés à la sécurités de l\'application web développé pour AGRUR ont été pensés et intégrés au code: Cryptage des mots de passe avec la méthode sha1, préparation des requêtes SQL comportant des saisies utilisateur, système d\'authentification, deux niveaux d\'administration, .htaccess, etc.', 94, 8, '2016-11-24 15:58:51'),
(25, 'Un bref PDF destinés aux futurs administrateur du site détaille les différentes fonctionnalités du site. C\'est une documentation détaillant tous les outils intégrés à la solution ainsi que les marches à suivre pour sa bonne utilisation.', 97, 8, '2016-11-24 16:04:40'),
(26, 'Dans le but d\'héberger le nouvel outil web d\'AGRUR "Agrur Producers" nous avons du mettre en place un nouveau serveur d\'hébergement web mais pas que. Le serveur mis en place est sous l\'OS Ubuntu Server 16.04 LTS; ce dernier intègre un service http (Apache2), un service d\'accès ssh (OpenSSH), un service ftp (proftp). Il comprend aussi des modules nécessaire au fonctionnement du site web: php, mySQL. Tous ces éléments ont fait l\'objet d\'une configuration afin de répondre au niveau de service attendu par AGRUR et exigé de VDEV.', 68, 7, '2016-11-25 21:40:36'),
(27, 'Afin d\'héberger les futures applications web du client AGRUR, nous avons décidez chez VDEV de mettre en place nous même un serveur web et d\'en gérer la maintenance. Nous avons pour cela imaginé une infrastructure matériel mais surtout logiciel intégrant tous les services nécessaire à son exploitation.\r\nPour cela nous avons réfléchis à plusieurs solutions répondant à notre besoin puis décidé de celle que nous allions exploiter.\r\nLe choix fut fait de mettre en place un serveur sous Ubuntu Serveur 16.04 LTS intégrant un service Http et https Apache2, un système de ssh pour des interventions ou des configurations distantes ainsi qu\'un FTP proFTP permettant les upload et download de fichiers.\r\nTous ces élément on été listés sur la documentation technique.', 136, 7, '2016-11-25 21:50:12'),
(28, 'Afin d\'héberger les futures applications web du client AGRUR, nous avons décidez chez VDEV de mettre en place nous même un serveur web et d\'en gérer la maintenance. Nous avons pour cela imaginé une infrastructure matériel mais surtout logiciel intégrant tous les services nécessaire à son exploitation.\r\nPour cela nous avons réfléchis à plusieurs solutions répondant à notre besoin puis décidé de celle que nous allions exploiter.\r\nLe choix fut fait de mettre en place un serveur sous Ubuntu Serveur 16.04 LTS intégrant un service Http et https Apache2, un système de ssh OpenSSH pour des interventions ou des configurations distantes ainsi qu\'un FTP proFTP permettant les upload et download de fichiers.\r\nTous ces éléments sont caractérisé dans la documentation technique du serveur.', 141, 7, '2016-11-25 21:51:48'),
(29, 'Pour assurer la qualité du service ainsi que sa sécurité, des éléments de configuration on été intégré aux modules clés du serveur (comme Apache ou encore MySQL et d\'autres). Pour cela des restrictions ont été configurés et nous avons apposé des contraintes à certain protocoles.', 138, 7, '2016-11-25 22:04:29'),
(30, 'PENC souhaitait disposer disposer d’un site vitrine pour décrire ses activités. Le site à terme devait servir pour les clients de PENC en leur permettant d’accéder aux différents plannings du personnel de PENC et de réserver des créneaux horaires. Afin de réaliser ce projet, un diagramme de GANTT fut établie.\r\nCe Gantt n\'a pas été réalisé sur un logiciel spécialisé mais sur Excel grâce à l\'exploitation des données relatives aux différentes étapes et leurs durée, leurs dépendances. Grâce à leur saisie, un jeu de paramétrage du graphique en résultant à permis de modéliser le diagramme de Gantt PREVISIONNEL du projet.', 33, 9, '2016-12-02 10:47:44'),
(31, 'Le "Besoin 4" de la "Mission 2 : Gestion des Plannings" énonçait :\r\n"Le service statistique et optimisation souhaite obtenir des informations suivantes:\r\n- Les dates des journées entièrement pleines des contrats de "Bayeux"?\r\n- Les noms des sous-traitants dont les contrats totalisent plus de 100 visites?\r\n- Le (ou les) sous-traitant(s) ayant des contrats dans toutes les ZEI?"\r\nAussi ai-je rédigé tout d\'abord le modèle logique des données sur lequel s\'appuie les requêtes, puis j\'ai formulé les requêtes renvoyant les données réclamé par le service "statistique et opérations".', 83, 11, '2016-12-08 15:49:10'),
(32, 'Le projet à fait l\'objet d\'une études préliminaire des fonctionnalités attendues du service à produire. Cet analyse est retranscrite dans la question 4 du document suivant dans laquelle il nous était demander de "Rédiger une mini cahier des charges du projet".', 2, 9, '2016-12-08 15:59:06'),
(33, 'Afin de mettre en place la solution applicative commandé par EDF, nous avons fait le choix d\'un stockage des donnée dans un SGBDR. Pour ce faire, nous avons du élaborer le Modèle Conceptuelle des données vouée à être intégré dans la base. Nous l\'avons réalisé sur JMerise puis à partir de ce schema nous avons élaboré les requêtes destinées à construise la BDD en SQL;', 80, 11, '2016-12-09 07:30:35'),
(34, 'Aux début du projet, nous avons minutieusement analysé le cahier des charges exprimant les besoins d\'EDF pour leur application. Nous avons alors rédiger un document reprenant toutes les spécifications et caractéristique des interfaces que nous avons imaginé afin de gérer efficacement les branchements et les plannings. Ce document reprend page par page toutes les composantes et fonctionnalités.', 77, 11, '2016-12-09 08:01:47'),
(35, 'Dans le but de présenter à EDF un "prototype" de la solution final, nous avons élaboré une maquette sur l\'applicatif web UxPin. Celui ci permet de nombreux choix d\'éléments d\'interfaces avec une très large possibilité de personnalisation de ces derniers dans la forme mais aussi leur comportement. Cette maquette à grâce à UxPin été rendu navigables, les champs de formulaire peuvent être renseigné et soumis pour faire jouer les redirections. UxPin permet également la génération et l\'exportation du code HTML associé à la maquettes, des feuilles CSS et même des scripts JavaScript rendant certain éléments de dynamisme possible.', 78, 11, '2016-12-09 08:21:20');

-- --------------------------------------------------------

--
-- Structure de la table `processus`
--

CREATE TABLE `processus` (
  `id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `processus`
--

INSERT INTO `processus` (`id`, `reference`, `libelle`) VALUES
(1, 'Processus 1', 'Production de services'),
(2, 'Processus 2', 'Fourniture de services'),
(3, 'Processus 3', 'Conception et maintenance de solutions d\'infrastructure'),
(4, 'Processus 4', 'Conception et maintenance de solutions applicatives'),
(5, 'Processus 5', 'Gestion du patrimoine informatique');

-- --------------------------------------------------------

--
-- Structure de la table `realisation`
--

CREATE TABLE `realisation` (
  `id` int(11) NOT NULL,
  `id_situation_pro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `realisation`
--

INSERT INTO `realisation` (`id`, `id_situation_pro`) VALUES
(1, 6),
(3, 6),
(3, 7),
(4, 7),
(1, 8),
(3, 8),
(3, 11);

-- --------------------------------------------------------

--
-- Structure de la table `situation_obli`
--

CREATE TABLE `situation_obli` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `situation_obli`
--

INSERT INTO `situation_obli` (`id`, `libelle`) VALUES
(1, 'Participer à un projet d\'évolution d\'un SI (solution applicative et d\'infrastructure portant prioritairement sur le domaine de spécialité du candidat'),
(2, 'Prise en charge d\'incidents et de demandes d\'assistance liés au domaine de spécialité du candidat'),
(3, 'Elaboration de documents relatifs à la production et à la fourniture de services'),
(4, 'Productions relatives à la mise en place d\'un dispositif de veille technologique et à l\'étude d\'une technologie, d\'un composant, d\'un outil ou d\'une méthode');

-- --------------------------------------------------------

--
-- Structure de la table `situation_pro`
--

CREATE TABLE `situation_pro` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_contexte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `situation_pro`
--

INSERT INTO `situation_pro` (`id`, `libelle`, `id_contexte`) VALUES
(6, 'Analyse du contexte et des besoins de la coopérative AGRUR et organisation du projet', 2),
(7, 'Mise en place d\'un nouveau serveur web VDEV', 2),
(8, 'Création d\'une SI Web de commande aux fournisseur d\'AGRUR', 2),
(9, 'Projet 3 - Cas PENC', 1),
(11, 'Cas EDF - Gestion Branchements & Plannings', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'moulinthibault', '428c29c74c417cb69688560d5ba495964e4f517a');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_processus` (`id_processus`);

--
-- Index pour la table `attachement`
--
ALTER TABLE `attachement`
  ADD PRIMARY KEY (`id`,`id_meo`),
  ADD KEY `fk_attachement_id_meo` (`id_meo`);

--
-- Index pour la table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_competence_id_activite` (`id_activite`);

--
-- Index pour la table `contexte`
--
ALTER TABLE `contexte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `meo`
--
ALTER TABLE `meo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_meo_idcomp_comp_id` (`id_competence`),
  ADD KEY `FK_meo_idpro_situapro_id` (`id_situation_pro`);

--
-- Index pour la table `processus`
--
ALTER TABLE `processus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisation`
--
ALTER TABLE `realisation`
  ADD PRIMARY KEY (`id`,`id_situation_pro`),
  ADD KEY `FK_realisation_id_situation_pro` (`id_situation_pro`);

--
-- Index pour la table `situation_obli`
--
ALTER TABLE `situation_obli`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `situation_pro`
--
ALTER TABLE `situation_pro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contexte_id` (`id_contexte`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `activite`
--
ALTER TABLE `activite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT pour la table `competence`
--
ALTER TABLE `competence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT pour la table `contexte`
--
ALTER TABLE `contexte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `meo`
--
ALTER TABLE `meo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `processus`
--
ALTER TABLE `processus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `situation_obli`
--
ALTER TABLE `situation_obli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `situation_pro`
--
ALTER TABLE `situation_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `activite`
--
ALTER TABLE `activite`
  ADD CONSTRAINT `fk_activite_id_processus` FOREIGN KEY (`id_processus`) REFERENCES `processus` (`id`);

--
-- Contraintes pour la table `attachement`
--
ALTER TABLE `attachement`
  ADD CONSTRAINT `fk_attachement_id_media` FOREIGN KEY (`id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_attachement_id_meo` FOREIGN KEY (`id_meo`) REFERENCES `meo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `competence`
--
ALTER TABLE `competence`
  ADD CONSTRAINT `FK_competence_id_activite` FOREIGN KEY (`id_activite`) REFERENCES `activite` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `meo`
--
ALTER TABLE `meo`
  ADD CONSTRAINT `FK_meo_idcomp_comp_id` FOREIGN KEY (`id_competence`) REFERENCES `competence` (`id`),
  ADD CONSTRAINT `FK_meo_idpro_situapro_id` FOREIGN KEY (`id_situation_pro`) REFERENCES `situation_pro` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `realisation`
--
ALTER TABLE `realisation`
  ADD CONSTRAINT `FK_realisation_id` FOREIGN KEY (`id`) REFERENCES `situation_obli` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_realisation_id_situation_pro` FOREIGN KEY (`id_situation_pro`) REFERENCES `situation_pro` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `situation_pro`
--
ALTER TABLE `situation_pro`
  ADD CONSTRAINT `fk_contexte_id` FOREIGN KEY (`id_contexte`) REFERENCES `contexte` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
