-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Sam 01 Décembre 2018 à 18:29
-- Version du serveur :  10.3.11-MariaDB-1:10.3.11+maria~bionic
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
  `nom_acteur` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prenom_acteur` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bio_acteur` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_acteur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbl_acteurs`
--

INSERT INTO `tbl_acteurs` (`nom_acteur`, `prenom_acteur`, `bio_acteur`, `id_acteur`) VALUES
('Worthington', 'Sam', 'Sam Worthington est un acteur, réalisateur et scénariste australien, né le 2 août 1976 à Godalming dans le Surrey (Angleterre). ', 1),
('Saldana', 'Zoe', 'Zoe Saldana Perego1, née le 19 juin 1978 à Passaic (New Jersey), est une actrice, réalisatrice et productrice américano-dominicaine. ', 2),
('Weaver', 'Sigourney', 'Sigourney Weaver, née Susan Alexandra Weaver le 8 octobre 1949, à New York, est une actrice américaine. ', 3),
('Lang', 'Stephen', 'Stephen Lang est un acteur américain né le 11 juillet 1952 à New York, (États-Unis). ', 4),
('Dicaprio', 'Leonardo', 'Leonardo DiCaprio, né le 11 novembre 1974 à Los Angeles, est un acteur, scénariste et producteur de cinéma américain. ', 5),
('Winslet', 'Kate', 'Kate Winslet est une actrice britannique, née le 5 octobre 1975 à Reading (Angleterre).', 6),
('Zane', 'Billy', 'Billy Zane est un acteur, producteur et réalisateur américain né le 24 février 1966 à Chicago. ', 7),
('Bates', 'Kathy', 'Kathy Bates est une actrice, réalisatrice et productrice américaine née le 28 juin 1948 à Memphis (Tennessee).', 8),
('Boseman', 'Chadwick', 'Chadwick Boseman est un acteur américain né le 29 novembre 1977 à Anderson (Caroline du Sud). ', 9),
('B.Jordan', 'Michael', 'Michael Bakari Jordan est un acteur américain, né le 9 février 1987 à Santa Ana (Californie). ', 10),
('Nyong\'o', 'Lupita', 'Lupita Nyong\'o, née le 1er mars 1983 à Mexico, est une actrice et réalisatrice kényane. ', 11),
('Gurira', 'Danai', 'Danai Gurira est une actrice américaine, née le 14 février 1978 à Grinnell dans l\'Iowa. ', 12),
('Hanks', 'Tom', 'Tom Hanks, né le 9 juillet 1956 à Concord (Californie), est un acteur, réalisateur et producteur de cinéma américain. ', 13),
('Clarke Duncan', 'Michael', 'Michael Clarke Duncan, né le 10 décembre 1957 à Chicago, dans l\'Illinois (États-Unis), et mort le 3 septembre 2012 à Los Angeles, en Californie (États-Unis), était un acteur américain.', 14),
('Morse', 'David', 'David Morse, né le 11 octobre 1953 à Hamilton, dans le Massachusetts aux États-Unis, est un acteur et scénariste américain.', 15),
('Hunt', 'Bonnie', 'Bonnie Hunt est une actrice, scénariste, productrice et réalisatrice américaine née le 22 septembre 1961 à Chicago dans l\'Illinois aux États-Unis. ', 16),
('McConaughey', 'Matthew', 'Matthew McConaughey est un acteur, réalisateur, scénariste et producteur de cinéma américain, né le 4 novembre 1969 à Uvalde (Texas). ', 17),
('Hathaway', 'Anne', 'Anne Hathaway est une actrice américaine, née le 12 novembre 1982 à New York. ', 18),
('Caine', 'Michael', 'Michael Caine est un acteur et producteur britannique, né le 14 mars 1933 à Londres. ', 19),
('Lithgow', 'John', 'John Lithgow est un acteur, producteur et musicien américain, né le 19 octobre 1945 à Rochester (État de New York). ', 20),
('Skerritt', 'Tom', 'Tom Skerritt est un acteur et réalisateur américain, né le 25 août 1933 à Détroit. ', 21),
('Cartwright', 'Veronica', 'Veronica Cartwright est une actrice britannique, née le 20 avril 1949 à Bristol. ', 22),
('Stanton', 'Harry Dean ', 'Harry Dean Stanton est un acteur américain né le 14 juillet 1926 à Irvine (Kentucky) et mort le 15 septembre 2017 à Los Angeles (Californie)1, connu en particulier pour son rôle dans Paris, Texas de Wim Wenders, palme d\'or au Festival de Cannes 1984. ', 23),
('Robbins', 'Tim', 'Tim Robbins est un acteur, réalisateur et scénariste américain né le 16 octobre 1958 à West Covina (Californie).', 24),
('Freeman', 'Morgan', 'Morgan Freeman, né le 1er juin 1937 à Memphis (Tennessee), est un acteur américain. ', 25),
('Gunton', 'Bob', 'Bob Gunton est un acteur américain, né le 15 novembre 1945 à Santa Monica, en Californie (États-Unis). ', 26),
('Sadler', 'William', 'William Sadler est un acteur américain, né le 13 avril 1950 à Buffalo dans l\'État de New York aux États-Unis. ', 27),
('Sinise', 'Gary', 'Gary Sinise est un acteur, producteur, réalisateur américain et occasionnellement musicien1, né le 17 mars 1955 à Blue Island (Illinois). ', 28),
('Wright', 'Robin', 'Robin Wright, née le 8 avril 1966 à Dallas (Texas), est une actrice, productrice et réalisatrice américaine. ', 29),
('Williamson', 'Mykelti', 'Mykelti Williamson est un acteur américain né le 4 mars 1957 à Saint-Louis (Missouri). ', 30),
('Walken', 'Christopher', 'Christopher Walken est un acteur et danseur américain né le 31 mars 1943 à New York. ', 31),
('Sheen', 'Martin', 'Ramón Estévez, dit Martin Sheen, est un acteur américain né le 3 août 1940 à Dayton (Ohio).', 32),
('Downey Jr.', 'Robert', 'Robert Downey Jr. est un acteur américain, né le 4 avril 1965 à New York.', 33),
('Hemsworth', 'Chris', 'Christopher Hemsworth, dit Chris Hemsworth, est un acteur australien, né le 11 août 1983 à Melbourne. ', 34),
('Ruffalo', 'Mark', 'Mark Ruffalo est un acteur, producteur de cinéma, scénariste et réalisateur américain, né le 22 novembre 1967 à Kenosha (Wisconsin). ', 35),
('Evans', 'Chris', 'Chris Evans est un acteur américain, né le 13 juin 1981 à Sudbury (Massachusetts). ', 36),
('Crowe', 'Russel', 'Russell Crowe est un acteur et réalisateur néo-zélandais, né le 7 avril 1964 à Wellington. ', 37),
('Phoenix', 'Joaquin', 'Joaquin Phoenix est un acteur américain né le 28 octobre 1974 à San Juan (Porto Rico). ', 38),
('Nielsen', 'Connie', 'Connie Nielsen, née le 3 juillet 1965 à Elling, Frederikshavn, est une actrice danoise. ', 39),
('Reed', 'Oliver', 'Oliver Reed est un acteur britannique né le 13 février 1938 à Londres dans le quartier de Wimbledon et mort le 2 mai 1999 à La Valette (Malte). ', 40),
('Neeson', 'Liam', 'Liam Neeson, de son vrai nom William John Neeson, né le 7 juin 1952 à Ballymena (Irlande du Nord), est un acteur britanno-américain. ', 41),
('Kingsley', 'Ben', 'Ben Kingsley est un acteur britannique d\'ascendance indienne, né le 31 décembre 1943 à Snainton (Yorkshire, Royaume-Uni). ', 42),
('Fiennes', 'Ralph', 'Ralph Fiennes (nom prononcé en anglais /faɪnz/) est un acteur, réalisateur et producteur de cinéma britannique et serbe1, né le 22 décembre 1962 à Ipswich (Suffolk). ', 43),
('Goodall', 'Caroline', 'Caroline Goodall est une actrice anglaise, née le 13 novembre 1959 à Londres (Royaume-Uni). ', 44);

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
(7, 'Horreur'),
(8, 'Famille'),
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
-- Index pour la table `tbl_acteurs`
--
ALTER TABLE `tbl_acteurs`
  ADD PRIMARY KEY (`id_acteur`);

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
-- AUTO_INCREMENT pour la table `tbl_acteurs`
--
ALTER TABLE `tbl_acteurs`
  MODIFY `id_acteur` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
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
