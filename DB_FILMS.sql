-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 22 Novembre 2018 à 12:45
-- Version du serveur :  10.3.10-MariaDB-1:10.3.10+maria~bionic-log
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `DB_FILMS`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_films`
--

CREATE TABLE `tbl_films` (
  `id` int(4) NOT NULL,
  `titre` varchar(27) DEFAULT NULL,
  `description` varchar(535) DEFAULT NULL,
  `annee_de_sortie` int(4) DEFAULT NULL,
  `id_genres` varchar(10) DEFAULT NULL,
  `realisateur` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `tbl_films`
--

INSERT INTO `tbl_films` (`id`, `titre`, `description`, `annee_de_sortie`, `id_genres`, `realisateur`) VALUES
(1, 'avatar', 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre.', 2009, '', 'James Cameron'),
(2, 'titanic', 'Southampton, 10 avril 1912. Le paquebot le plus grand et le plus moderne du monde, réputé pour son insubmersibilité, le \"Titanic\", appareille pour son premier voyage. Quatre jours plus tard, il heurte un iceberg. A son bord, un artiste pauvre et une grande bourgeoise tombent amoureux.', 1997, '', 'James Cameron'),
(3, 'black panther', 'Après les événements qui se sont déroulés dans Captain America : Civil War, T’Challa revient chez lui prendre sa place sur le trône du Wakanda, une nation africaine technologiquement très avancée. Mais lorsqu’un vieil ennemi resurgit, le courage de T’Challa est mis à rude épreuve, aussi bien en tant que souverain qu’en tant que Black Panther. ', 2018, '', 'Ryan Coogler'),
(4, 'La ligne verte', 'Paul Edgecomb, pensionnaire centenaire d\'une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforçant d\'adoucir les derniers moments des condamnés', 2000, '', 'Frank Darabont'),
(5, 'Interstellar', 'Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire.', 2014, '', 'Christopher Nolan'),
(6, 'Alien  le huitième passager', 'Le vaisseau commercial Nostromo et son équipage, sept hommes et femmes, rentrent sur Terre avec une importante cargaison de minerai. Mais lors d\'un arrêt forcé sur une planète déserte, l\'officier Kane se fait agresser par une forme de vie inconnue, une arachnide qui étouffe son visage.', 1979, '', 'Ridley Scott'),
(7, 'Les évadés', 'Un homme injustement condamné pour les meurtres de sa femme et de son amant va passer près de vingt ans au pénitencier de Shawshank.', 1994, '', 'Frank Darabon'),
(8, 'Forrest Gump', 'Le film relate l\'histoire mouvementée des Etats-Unis au travers du regard d\'un « simple d\'esprit », Forrest Gump.', 1994, '', 'Robert Zemeckis'),
(9, 'Arrête-moi si tu peux', 'Dans les années 1960, Frank Abagnale est l’as de la mystification : en se faisant passer pour pilote de ligne, médecin ou avocat, il ramassa des millions de dollars.', 2002, '', 'Steven Spielberg'),
(10, 'Avengers infinity war', 'Les Avengers et leurs alliés devront être prêts à tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque éclair ne conduise à la destruction complète de l’univers. ', 2018, '', 'Frère Russo'),
(11, 'Gladiator', 'Le général romain Maximus est le plus fidèle soutien de l\'empereur Marc Aurèle, qu\'il a conduit de victoire en victoire avec une bravoure et un dévouement exemplaires. Jaloux du prestige de Maximus, et plus encore de l\'amour que lui voue l\'empereur, le fils de MarcAurèle, Commode, s\'arroge brutalement le pouvoir, puis ordonne l\'arrestation du général et son exécution. Maximus échappe à ses assassins mais ne peut empêcher le massacre de sa famille. Capturé par un marchand d\'esclaves, il devient gladiateur et prépare sa vengeance. ', 2000, '', 'Ridley Scott '),
(12, 'La liste de Schindler', 'Evocation des années de guerre d\'Oskar Schindler, industriel autrichien rentré à Cracovie en 1939 avec les troupes allemandes. Il va, tout au long de la guerre, protéger des juifs en les faisant travailler dans sa fabrique. ', 1994, '', 'Steven Spielberg');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `id` int(4) NOT NULL,
  `genre` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbl_genre`
--

INSERT INTO `tbl_genre` (`id`, `genre`) VALUES
(1, 'action'),
(2, 'animation'),
(3, 'aventure'),
(4, 'biopic'),
(5, 'comedie'),
(6, 'drame'),
(7, 'horreur'),
(8, 'famille'),
(9, 'fantastique'),
(10, 'guerre'),
(11, 'histoire'),
(12, 'musical'),
(13, 'policier'),
(14, 'romance'),
(15, 'science-fiction'),
(16, 'thriller'),
(17, 'western');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_genre_films`
--

CREATE TABLE `tbl_genre_films` (
  `id_genres` int(11) NOT NULL,
  `id_films` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbl_genre_films`
--

INSERT INTO `tbl_genre_films` (`id_genres`, `id_films`) VALUES
(1, 1),
(2, 1),
(15, 1),
(6, 2),
(11, 2),
(14, 2),
(15, 3),
(9, 4),
(13, 4),
(15, 5),
(6, 5),
(15, 6),
(7, 6),
(6, 7),
(6, 8),
(14, 8),
(6, 9),
(16, 9),
(1, 10),
(3, 10),
(3, 11),
(10, 12),
(11, 12);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `tbl_films`
--
ALTER TABLE `tbl_films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `tbl_films`
--
ALTER TABLE `tbl_films`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
