-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 26 Novembre 2018 à 11:51
-- Version du serveur :  10.3.11-MariaDB-1:10.3.11+maria~bionic-log
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
-- Structure de la table `tbl_acteurs`
--

CREATE TABLE `tbl_acteurs` (
  `id_acteur` int(4) NOT NULL,
  `nom_acteur` varchar(255) NOT NULL,
  `prenom_acteur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbl_acteurs`
--

INSERT INTO `tbl_acteurs` (`id_acteur`, `nom_acteur`, `prenom_acteur`) VALUES
(1, 'Worthington', 'Sam'),
(2, 'Saldana', 'Zoe'),
(3, 'Weaver', 'Sigourney'),
(4, 'Lang', 'Stephen'),
(5, 'Dicaprio', 'Leonardo'),
(6, 'Winslet', 'Kate'),
(7, 'Zane', 'Billy'),
(8, 'Bates', 'Kahty'),
(9, 'Boseman', 'Chadwick'),
(10, 'B.Jordan', 'Michael'),
(11, 'Nyong\'o', 'Lupita'),
(12, 'Gurira', 'Danai'),
(13, 'Hanks', 'Tom'),
(14, 'Clarke duncan', 'Michael'),
(15, 'Morse', 'David'),
(16, 'Hunt', 'Bonnie'),
(17, 'McConaughey', 'Matthew'),
(18, 'Hathaway', 'Anne'),
(19, 'Caine', 'Michael'),
(20, 'Lithgow', 'John'),
(21, 'Skerritt', 'Tom'),
(22, 'Cartwright', 'Veronica'),
(23, 'Dean stanton', 'Harry'),
(24, 'Robbins', 'Tim'),
(25, 'Freeman', 'Morgan'),
(26, 'Gunton', 'Bob'),
(27, 'Sadler', 'William'),
(28, 'Sinise', 'Gary'),
(29, 'Wright', 'Robin'),
(30, 'Williamson', 'Mykelti'),
(31, 'Walken', 'Christopher'),
(32, 'Sheen', 'Marin'),
(33, 'Downey Jr.', 'Robert'),
(34, 'Hemsworth', 'Chris'),
(35, 'Ruffalo', 'Mark'),
(36, 'Evans', 'Chris'),
(37, 'Crowe', 'Russel'),
(38, 'Phoenix', 'Joaquin'),
(39, 'Nielsen', 'Connie'),
(40, 'Reed', 'Olivier'),
(41, 'Neeson', 'Liam'),
(42, 'Kingsley', 'Ben'),
(43, 'Fiennes', 'Ralph'),
(44, 'Goodall', 'Caroline');

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
  `id_realisateurs` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `tbl_films`
--

INSERT INTO `tbl_films` (`id`, `titre`, `description`, `annee_de_sortie`, `id_genres`, `id_realisateurs`) VALUES
(1, 'Avatar', 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre.', 2009, '', '1'),
(2, 'Titanic', 'Southampton, 10 avril 1912. Le paquebot le plus grand et le plus moderne du monde, réputé pour son insubmersibilité, le \"Titanic\", appareille pour son premier voyage. Quatre jours plus tard, il heurte un iceberg. A son bord, un artiste pauvre et une grande bourgeoise tombent amoureux.', 1997, '', '1'),
(3, 'Black Panther', 'Après les événements qui se sont déroulés dans Captain America : Civil War, T’Challa revient chez lui prendre sa place sur le trône du Wakanda, une nation africaine technologiquement très avancée. Mais lorsqu’un vieil ennemi resurgit, le courage de T’Challa est mis à rude épreuve, aussi bien en tant que souverain qu’en tant que Black Panther. ', 2018, '', '2'),
(4, 'La ligne verte', 'Paul Edgecomb, pensionnaire centenaire d\'une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforçant d\'adoucir les derniers moments des condamnés', 2000, '', '3'),
(5, 'Interstellar', 'Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire.', 2014, '', '4'),
(6, 'Alien  le huitième passager', 'Le vaisseau commercial Nostromo et son équipage, sept hommes et femmes, rentrent sur Terre avec une importante cargaison de minerai. Mais lors d\'un arrêt forcé sur une planète déserte, l\'officier Kane se fait agresser par une forme de vie inconnue, une arachnide qui étouffe son visage.', 1979, '', '5'),
(7, 'Les évadés', 'Un homme injustement condamné pour les meurtres de sa femme et de son amant va passer près de vingt ans au pénitencier de Shawshank.', 1994, '', '3'),
(8, 'Forrest Gump', 'Le film relate l\'histoire mouvementée des Etats-Unis au travers du regard d\'un « simple d\'esprit », Forrest Gump.', 1994, '', '7'),
(9, 'Arrête-moi si tu peux', 'Dans les années 1960, Frank Abagnale est l’as de la mystification : en se faisant passer pour pilote de ligne, médecin ou avocat, il ramassa des millions de dollars.', 2002, '', '6'),
(10, 'Avengers infinity war', 'Les Avengers et leurs alliés devront être prêts à tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque éclair ne conduise à la destruction complète de l’univers. ', 2018, '', '7'),
(11, 'Gladiator', 'Le général romain Maximus est le plus fidèle soutien de l\'empereur Marc Aurèle, qu\'il a conduit de victoire en victoire avec une bravoure et un dévouement exemplaires. Jaloux du prestige de Maximus, et plus encore de l\'amour que lui voue l\'empereur, le fils de MarcAurèle, Commode, s\'arroge brutalement le pouvoir, puis ordonne l\'arrestation du général et son exécution. Maximus échappe à ses assassins mais ne peut empêcher le massacre de sa famille. Capturé par un marchand d\'esclaves, il devient gladiateur et prépare sa vengeance. ', 2000, '', '8'),
(12, 'La liste de Schindler', 'Evocation des années de guerre d\'Oskar Schindler, industriel autrichien rentré à Cracovie en 1939 avec les troupes allemandes. Il va, tout au long de la guerre, protéger des juifs en les faisant travailler dans sa fabrique. ', 1994, '', '9');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_films_acteurs`
--

CREATE TABLE `tbl_films_acteurs` (
  `id_film` int(4) NOT NULL,
  `id_acteur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbl_films_acteurs`
--

INSERT INTO `tbl_films_acteurs` (`id_film`, `id_acteur`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(6, 3),
(6, 21),
(6, 22),
(6, 23),
(7, 24),
(7, 25),
(7, 26),
(7, 27),
(8, 13),
(8, 28),
(8, 29),
(8, 30),
(9, 5),
(9, 13),
(9, 31),
(9, 32),
(10, 33),
(10, 34),
(10, 35),
(10, 36),
(11, 37),
(11, 38),
(11, 39),
(11, 40),
(12, 41),
(12, 42),
(12, 43),
(12, 44);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `id` int(4) NOT NULL,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbl_genre`
--

INSERT INTO `tbl_genre` (`id`, `genre`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Aventure'),
(4, 'Biopic'),
(5, 'Comedie'),
(6, 'Drame'),
(7, 'horreur'),
(8, 'Gamille'),
(9, 'Fantastique'),
(10, 'Guerre'),
(11, 'Histoire'),
(12, 'Musical'),
(13, 'Policier'),
(14, 'Romance'),
(15, 'Science-fiction'),
(16, 'Thriller'),
(17, 'Western');

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

-- --------------------------------------------------------

--
-- Structure de la table `tbl_realisateurs`
--

CREATE TABLE `tbl_realisateurs` (
  `id_realisateur` int(2) NOT NULL,
  `nom_realisateur` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `prenom_realisateur` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `bio_realisateur` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbl_realisateurs`
--

INSERT INTO `tbl_realisateurs` (`id_realisateur`, `nom_realisateur`, `prenom_realisateur`, `bio_realisateur`) VALUES
(1, 'Cameron', 'James', 'James Francis Cameron est un réalisateur, scénariste, producteur et explorateur de fonds marins canadien, né le 16 août 1954 à Kapuskasing (Canada).'),
(2, 'Coogler', 'Ryan', 'Ryan Kyle Coogler, né à Oakland (Californie) le 23 mai 1986 (32 ans), est un réalisateur et scénariste américain.'),
(3, 'Darabont', 'Frank', 'Frank Darabont, né le 28 janvier 1959 à Montbéliard (Doubs), est un réalisateur, scénariste, producteur et acteur de cinéma américain d\'origine hongroise.'),
(4, 'Nolan', 'Christopher', 'Christopher Edward Nolan est un réalisateur, scénariste, monteur et producteur de cinéma britanno-américain, né le 30 juillet 1970 à Westminster (Londres). '),
(5, 'Scott', 'Ridley', 'Sir Ridley Scott, né le 30 novembre 1937 à South Shields dans le Tyne and Wear, est un réalisateur et producteur britannique. '),
(6, 'Spielberg', 'Steven', 'Steven Spielberg est un réalisateur, scénariste et producteur de cinéma américain, né le 18 décembre 1946 à Cincinnati (Ohio). '),
(7, 'Zemeckis', 'Robert', 'Robert Lee Zemeckis est un réalisateur, producteur et scénariste américain né le 14 mai 1952 à Chicago (Illinois). '),
(8, 'Russo', 'Anthony', 'Anthony Russo est un  réalisateur et scénariste américain né le 3 février 1970 (48 ans) à Cleveland, Ohio. '),
(9, 'Russo', 'Joe', 'Joe Russo est un  réalisateur et scénariste américain né le 8 juillet 1971 (47 ans) à Cleveland, Ohio.');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_realisateurs_films`
--

CREATE TABLE `tbl_realisateurs_films` (
  `id_realisateurs` int(6) NOT NULL,
  `id_films` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbl_realisateurs_films`
--

INSERT INTO `tbl_realisateurs_films` (`id_realisateurs`, `id_films`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(3, 7),
(7, 8),
(6, 9),
(8, 10),
(9, 10),
(5, 11),
(6, 12);

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
-- Index pour la table `tbl_realisateurs`
--
ALTER TABLE `tbl_realisateurs`
  ADD PRIMARY KEY (`id_realisateur`) USING BTREE;

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
--
-- AUTO_INCREMENT pour la table `tbl_realisateurs`
--
ALTER TABLE `tbl_realisateurs`
  MODIFY `id_realisateur` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
