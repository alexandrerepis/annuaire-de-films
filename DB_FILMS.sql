-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306



-- Généré le :  Lun 03 Décembre 2018 à 09:26

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

  `id_acteur` int(4) NOT NULL,
  `prenom_acteur` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nom_acteur` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bio_acteur` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `jour_naissance` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mois_naissance` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `annee_naissance` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbl_acteurs`
--


INSERT INTO `tbl_acteurs` (`id_acteur`, `prenom_acteur`, `nom_acteur`, `bio_acteur`, `jour_naissance`, `mois_naissance`, `annee_naissance`) VALUES
(1, 'Sam', 'Worthington', 'Samuel Henry John « Sam » Worthington naît à Godalming dans le comté de Surrey par l\'union de Ronald W. Worthington, un employé et Jeanne J. Worthington (née Martyn), femme au foyer. Il a une sœur aînée, Lucinda. Très vite, alors qu\'il est âgé de six mois, ses parents emménagent en Australie dans la banlieue de Perth Warnbro, commune de Rockingham.\n\nIl effectue ses études au John Curtin College of The Arts mais quitte l\'école à dix-sept ans. À dix-neuf ans, il accompagne sa petite amie de l\'époque pour son examen d\'entrée dans le prestigieux National Institute of Dramatic Art (NIDA) de Sydney qui a accueilli entre autres Mel Gibson, Cate Blanchett et Baz Luhrmann : elle se voit refuser l\'admission, mais lui est admis à sa grande surprise. Il sort diplômé du NIDA, en 1998, à l’âge de vingt-deux ans et est acclamé pour sa prestation d’Arthur Wellesley dans la pièce Judas Kiss montée au Belvoir Street Theatre.', '2', 'août', '1976'),
(2, 'Zoe', 'Saldana', 'Zoe Saldana Perego, née le 19 juin 1978 à Passaic (New Jersey), est une actrice, réalisatrice et productrice américano-dominicaine. ', '19', 'juin', '1978'),
(3, 'Sigourney', 'Weaver', 'Sigourney Weaver, née Susan Alexandra Weaver le 8 octobre 1949, à New York, est une actrice américaine. ', '8', 'octobre', '1949'),
(4, 'Stephen', 'Lang', 'Stephen Lang est un acteur américain né le 11 juillet 1952 à New York, (États-Unis). ', '11', 'juillet', '1952'),
(5, 'Leonardo', 'Dicaprio', 'Leonardo DiCaprio, né le 11 novembre 1974 à Los Angeles, est un acteur, scénariste et producteur de cinéma américain. Samuel Henry John « Sam » Worthington naît à Godalming dans le comté de Surrey par l\'union de Ronald W. Worthington, un employé et Jeanne J. Worthington (née Martyn), femme au foyer. Il a une sœur aînée, Lucinda. Très vite, alors qu\'il est âgé de six mois, ses parents emménagent en Australie dans la banlieue de Perth Warnbro, commune de Rockingham1,2,3.\n\nIl effectue ses études au John Curtin College of The Arts mais quitte l\'école à dix-sept ans. À dix-neuf ans, il accompagne sa petite amie de l\'époque pour son examen d\'entrée dans le prestigieux National Institute of Dramatic Art (NIDA) de Sydney qui a accueilli entre autres Mel Gibson, Cate Blanchett et Baz Luhrmann ', '11', 'novembre', '1974'),
(6, 'Kate', 'Winslet', 'Kate Winslet est une actrice britannique, née le 5 octobre 1975 à Reading (Angleterre).', '5', 'octobre', '1975'),
(7, 'Billy', 'Zane', 'Billy Zane est un acteur, producteur et réalisateur américain né le 24 février 1966 à Chicago. ', '24', 'février', '1966'),
(8, 'Kathy', 'Bates', 'Kathy Bates est une actrice, réalisatrice et productrice américaine née le 28 juin 1948 à Memphis (Tennessee).', '28', 'juin', '1948'),
(9, 'Chadwick', 'Boseman', 'Chadwick Boseman est un acteur américain né le 29 novembre 1977 à Anderson (Caroline du Sud). ', '29', 'novembre', '1977'),
(10, 'Michael', 'B.Jordan', 'Michael Bakari Jordan est un acteur américain, né le 9 février 1987 à Santa Ana (Californie). ', '9', 'février', '1987'),
(11, 'Lupita', 'Nyong\'o', 'Lupita Nyong\'o, née le 1er mars 1983 à Mexico, est une actrice et réalisatrice kényane. ', '1', 'mars', '1983'),
(12, 'Danai', 'Gurira', 'Danai Gurira est une actrice américaine, née le 14 février 1978 à Grinnell dans l\'Iowa. ', '14', 'février', '1978'),
(13, 'Tom', 'Hanks', 'Tom Hanks, né le 9 juillet 1956 à Concord (Californie), est un acteur, réalisateur et producteur de cinéma américain. ', '9', 'juillet', '1956'),
(14, 'Michael', 'Clarke Duncan', 'Michael Clarke Duncan, né le 10 décembre 1957 à Chicago, dans l\'Illinois (États-Unis), et mort le 3 septembre 2012 à Los Angeles, en Californie (États-Unis), était un acteur américain.', '10', 'décembre', '1957'),
(15, 'David', 'Morse', 'David Morse, né le 11 octobre 1953 à Hamilton, dans le Massachusetts aux États-Unis, est un acteur et scénariste américain.', '11', 'octobre', '1953'),
(16, 'Bonnie', 'Hunt', 'Bonnie Hunt est une actrice, scénariste, productrice et réalisatrice américaine née le 22 septembre 1961 à Chicago dans l\'Illinois aux États-Unis. ', '22', 'septembre', '1961'),
(17, 'Matthew', 'McConaughey', 'Matthew McConaughey est un acteur, réalisateur, scénariste et producteur de cinéma américain, né le 4 novembre 1969 à Uvalde (Texas). ', '4', 'novembre', '1969'),
(18, 'Anne', 'Hathaway', 'Anne Hathaway est une actrice américaine, née le 12 novembre 1982 à New York. ', '12', 'novembre', '1982'),
(19, 'Michael', 'Caine', 'Michael Caine est un acteur et producteur britannique, né le 14 mars 1933 à Londres. ', '14', 'mars', '1933'),
(20, 'John', 'Lithgow', 'John Lithgow est un acteur, producteur et musicien américain, né le 19 octobre 1945 à Rochester (État de New York). ', '19', 'octobre', '1945'),
(21, 'Tom', 'Skerritt', 'Tom Skerritt est un acteur et réalisateur américain, né le 25 août 1933 à Détroit. ', '25', 'août', '1933'),
(22, 'Veronica', 'Cartwright', 'Veronica Cartwright est une actrice britannique, née le 20 avril 1949 à Bristol. ', '20', 'avril', '1949'),
(23, 'Harry Dean ', 'Stanton', 'Harry Dean Stanton est un acteur américain né le 14 juillet 1926 à Irvine (Kentucky) et mort le 15 septembre 2017 à Los Angeles (Californie)1, connu en particulier pour son rôle dans Paris, Texas de Wim Wenders, palme d\'or au Festival de Cannes 1984. ', '14', 'juillet', '1926'),
(24, 'Tim', 'Robbins', 'Tim Robbins est un acteur, réalisateur et scénariste américain né le 16 octobre 1958 à West Covina (Californie).', '16', 'octobre', '1958'),
(25, 'Morgan', 'Freeman', 'Morgan Freeman, né le 1er juin 1937 à Memphis (Tennessee), est un acteur américain. ', '1', 'juin', '1937'),
(26, 'Bob', 'Gunton', 'Bob Gunton est un acteur américain, né le 15 novembre 1945 à Santa Monica, en Californie (États-Unis). ', '', '', ''),
(27, 'William', 'Sadler', 'William Sadler est un acteur américain, né le 13 avril 1950 à Buffalo dans l\'État de New York aux États-Unis. ', '', '', ''),
(28, 'Gary', 'Sinise', 'Gary Sinise est un acteur, producteur, réalisateur américain et occasionnellement musicien1, né le 17 mars 1955 à Blue Island (Illinois). ', '', '', ''),
(29, 'Robin', 'Wright', 'Robin Wright, née le 8 avril 1966 à Dallas (Texas), est une actrice, productrice et réalisatrice américaine. ', '', '', ''),
(30, 'Mykelti', 'Williamson', 'Mykelti Williamson est un acteur américain né le 4 mars 1957 à Saint-Louis (Missouri). ', '', '', ''),
(31, 'Christopher', 'Walken', 'Christopher Walken est un acteur et danseur américain né le 31 mars 1943 à New York. ', '', '', ''),
(32, 'Martin', 'Sheen', 'Ramón Estévez, dit Martin Sheen, est un acteur américain né le 3 août 1940 à Dayton (Ohio).', '', '', ''),
(33, 'Robert', 'Downey Jr.', 'Robert Downey Jr. est un acteur américain, né le 4 avril 1965 à New York.', '', '', ''),
(34, 'Chris', 'Hemsworth', 'Christopher Hemsworth, dit Chris Hemsworth, est un acteur australien, né le 11 août 1983 à Melbourne. ', '', '', ''),
(35, 'Mark', 'Ruffalo', 'Mark Ruffalo est un acteur, producteur de cinéma, scénariste et réalisateur américain, né le 22 novembre 1967 à Kenosha (Wisconsin). ', '', '', ''),
(36, 'Chris', 'Evans', 'Chris Evans est un acteur américain, né le 13 juin 1981 à Sudbury (Massachusetts). ', '', '', ''),
(37, 'Russel', 'Crowe', 'Russell Crowe est un acteur et réalisateur néo-zélandais, né le 7 avril 1964 à Wellington. ', '', '', ''),
(38, 'Joaquin', 'Phoenix', 'Joaquin Phoenix est un acteur américain né le 28 octobre 1974 à San Juan (Porto Rico). ', '', '', ''),
(39, 'Connie', 'Nielsen', 'Connie Nielsen, née le 3 juillet 1965 à Elling, Frederikshavn, est une actrice danoise. ', '', '', ''),
(40, 'Oliver', 'Reed', 'Oliver Reed est un acteur britannique né le 13 février 1938 à Londres dans le quartier de Wimbledon et mort le 2 mai 1999 à La Valette (Malte). ', '', '', ''),
(41, 'Liam', 'Neeson', 'Liam Neeson, de son vrai nom William John Neeson, né le 7 juin 1952 à Ballymena (Irlande du Nord), est un acteur britanno-américain. ', '', '', ''),
(42, 'Ben', 'Kingsley', 'Ben Kingsley est un acteur britannique d\'ascendance indienne, né le 31 décembre 1943 à Snainton (Yorkshire, Royaume-Uni). ', '', '', ''),
(43, 'Ralph', 'Fiennes', 'Ralph Fiennes (nom prononcé en anglais /faɪnz/) est un acteur, réalisateur et producteur de cinéma britannique et serbe1, né le 22 décembre 1962 à Ipswich (Suffolk). ', '', '', ''),
(44, 'Caroline', 'Goodall', 'Caroline Goodall est une actrice anglaise, née le 13 novembre 1959 à Londres (Royaume-Uni). ', '', '', '');


-- --------------------------------------------------------

--
-- Structure de la table `tbl_films`
--

CREATE TABLE `tbl_films` (
  `id` int(4) NOT NULL,
  `titre` varchar(27) DEFAULT NULL,
  `description` varchar(1035) DEFAULT NULL,
  `annee_de_sortie` int(4) DEFAULT NULL,
  `id_genres` varchar(10) DEFAULT NULL,
  `id_realisateurs` varchar(17) DEFAULT NULL,
  `bande_annonce` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `tbl_films`
--

INSERT INTO `tbl_films` (`id`, `titre`, `description`, `annee_de_sortie`, `id_genres`, `id_realisateurs`, `bande_annonce`) VALUES
(1, 'Avatar', 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre. Parce que l\'atmosphère de Pandora est toxique pour les humains, ceux-ci ont créé le Programme Avatar, qui permet à des \" pilotes \" humains de lier leur esprit à un avatar, un corps biologique commandé à distance, capable de survivre dans cette atmosphère létale. Ces avatars sont des hybrides créés génétiquement en croisant l\'ADN humain avec celui des Na\'vi, les autochtones de Pandora.', 2009, '', '1', 'https://www.youtube.com/embed/O1CzgULNRGs'),
(2, 'Titanic', 'Southampton, 10 avril 1912. Le paquebot le plus grand et le plus moderne du monde, réputé pour son insubmersibilité, le \"Titanic\", appareille pour son premier voyage. Quatre jours plus tard, il heurte un iceberg. A son bord, un artiste pauvre et une grande bourgeoise tombent amoureux.', 1997, '', '1', 'https://www.youtube.com/embed/Quf4qIkD3KY'),
(3, 'Black Panther', 'Après les événements qui se sont déroulés dans Captain America : Civil War, T’Challa revient chez lui prendre sa place sur le trône du Wakanda, une nation africaine technologiquement très avancée. Mais lorsqu’un vieil ennemi resurgit, le courage de T’Challa est mis à rude épreuve, aussi bien en tant que souverain qu’en tant que Black Panther. Il se retrouve entraîné dans un conflit qui menace non seulement le destin du Wakanda, mais celui du monde entier…', 2018, '', '2', 'https://www.youtube.com/embed/vEFTbIh8Ki8'),
(4, 'La ligne verte', 'Paul Edgecomb, pensionnaire centenaire d\'une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforçant d\'adoucir les derniers moments des condamnés. Parmi eux se trouvait un colosse du nom de John Coffey, accusé du viol et du meurtre de deux fillettes. Intrigué par cet homme candide et timide aux dons magiques, Edgecomb va tisser avec lui des liens très forts.', 2000, '', '3', 'https://www.youtube.com/embed/xYM4wJJpR9M'),
(5, 'Interstellar', 'Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire. ', 2014, '', '4', 'https://www.youtube.com/embed/USns-G2mxoc'),
(6, 'Alien  le huitième passager', 'Le vaisseau commercial Nostromo et son équipage, sept hommes et femmes, rentrent sur Terre avec une importante cargaison de minerai. Mais lors d\'un arrêt forcé sur une planète déserte, l\'officier Kane se fait agresser par une forme de vie inconnue, une arachnide qui étouffe son visage.\nAprès que le docteur de bord lui retire le spécimen, l\'équipage retrouve le sourire et dîne ensemble. Jusqu\'à ce que Kane, pris de convulsions, voit son abdomen perforé par un corps étranger vivant, qui s\'échappe dans les couloirs du vaisseau...', 1979, '', '5', 'https://www.youtube.com/embed/cL5aAtL6Tok'),
(7, 'Les évadés', 'En 1947, Andy Dufresne, un jeune banquier, est condamné à la prison à vie pour le meurtre de sa femme et de son amant. Ayant beau clamer son innocence, il est emprisonné à Shawshank, le pénitencier le plus sévère de l\'Etat du Maine. Il y fait la rencontre de Red, un Noir désabusé, détenu depuis vingt ans. Commence alors une grande histoire d\'amitié entre les deux hommes...', 1994, '', '3', 'https://www.youtube.com/embed/2e8Otbbcowc'),
(8, 'Forrest Gump', 'Le film débute par la scène où une plume d\'oiseau, volant dans les airs, atterrit aux pieds de Forrest Gump, un jeune homme simplet, assis sur un banc dans la ville de Savannah, en Géorgie, attendant le bus. Au fil des différents interlocuteurs qui viennent s’asseoir tour à tour à côté de lui sur le banc, Forrest Gump va raconter la fabuleuse histoire de sa vie. Sa vie est à l\'image de la plume (que l\'on aperçoit au début et à la fin du film) qui se laisse porter par le vent, tout comme Forrest se laisse porter par les événements qu\'il traverse dans l\'Amérique de la seconde moitié du xxe siècle.', 1994, '', '7', 'https://www.youtube.com/embed/q2AP7dAeVhw'),
(9, 'Arrête-moi si tu peux', 'Dans les années soixante, le jeune Frank Abagnale Jr. est passé maître dans l\'art de l\'escroquerie, allant jusqu\'à détourner 2,5 millions de dollars et à figurer sur les listes du FBI comme l\'un des dix individus les plus recherchés des Etats-Unis. Véritable caméléon, Frank revêt des identités aussi diverses que celles de pilote de ligne, de médecin, de professeur d\'université ou encore d\'assistant du procureur. Carl Hanratty, agent du FBI à l\'apparence stricte, fait de la traque de Frank Abagnale Jr. sa mission prioritaire, mais ce dernier reste pendant longtemps insaisissable...', 2002, '', '6', 'https://www.youtube.com/embed/DqMJuzY_RB4'),
(10, 'Avengers infinity war', 'Père adoptif de Gamora et Nébula, Thanos a commencé à recueillir les six Pierres d\'Infinité : la Pierre du Pouvoir, la Pierre de l\'Espace, la Pierre de Réalité, la Pierre de l\'Âme, la Pierre du Temps et la Pierre de l\'Esprit. Son objectif est de réunir ces six artefacts sur le Gant d\'Infinité, forgé jadis par le nain Eitri sur Nidavellir, afin d\'utiliser leur immense puissance pour détruire la moitié de la population de l\'Univers et rétablir ainsi un certain équilibre. Dans sa quête le menant sur diverses planètes, la Terre, Knowhere et Vormir, Thanos est aidé par ses enfants adoptifs : Ebony Maw, Cull Obsidian, Corvus Glaive et Proxima Midnight. Face à cette nouvelle menace qui concerne l\'Univers entier, le groupe de super-héros des Avengers, divisé depuis 2 ans, doit se reformer, et s\'associer au Docteur Strange, aux Gardiens de la Galaxie et au peuple du Wakanda.', 2018, '', '7', 'https://www.youtube.com/embed/TLQeKn9Fce0'),
(11, 'Gladiator', 'e général romain Maximus est le plus fidèle soutien de l\'empereur Marc Aurèle, qu\'il a conduit de victoire en victoire avec une bravoure et un dévouement exemplaires. Jaloux du prestige de Maximus, et plus encore de l\'amour que lui voue l\'empereur, le fils de MarcAurèle, Commode, s\'arroge brutalement le pouvoir, puis ordonne l\'arrestation du général et son exécution. Maximus échappe à ses assassins mais ne peut empêcher le massacre de sa famille. Capturé par un marchand d\'esclaves, il devient gladiateur et prépare sa vengeance.', 2000, '', '8', 'https://www.youtube.com/embed/pPSESBQq'),
(12, 'La liste de Schindler', 'Evocation des années de guerre d\'Oskar Schindler, fils d\'industriel d\'origine autrichienne rentré à Cracovie en 1939 avec les troupes allemandes. Il va, tout au long de la guerre, protéger des juifs en les faisant travailler dans sa fabrique et en 1944 sauver huit cents hommes et trois cents femmes du camp d\'extermination de Auschwitz-Birkenau.', 1994, '', '9', 'https://www.youtube.com/embed/ExVa4y2zSIo');

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
  `prenom_realisateur` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `nom_realisateur` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `bio_realisateur` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbl_realisateurs`
--

INSERT INTO `tbl_realisateurs` (`id_realisateur`, `prenom_realisateur`, `nom_realisateur`, `bio_realisateur`) VALUES
(1, 'James', 'Cameron', 'James Francis Cameron est un réalisateur, scénariste, producteur et explorateur de fonds marins canadien, né le 16 août 1954 à Kapuskasing (Canada).'),
(2, 'Ryan', 'Coogler', 'Ryan Kyle Coogler, né à Oakland (Californie) le 23 mai 1986 (32 ans), est un réalisateur et scénariste américain.'),
(3, 'Frank', 'Darabont', 'Frank Darabont, né le 28 janvier 1959 à Montbéliard (Doubs), est un réalisateur, scénariste, producteur et acteur de cinéma américain d\'origine hongroise.'),
(4, 'Christopher', 'Nolan', 'Christopher Edward Nolan est un réalisateur, scénariste, monteur et producteur de cinéma britanno-américain, né le 30 juillet 1970 à Westminster (Londres). '),
(5, 'Ridley', 'Scott', 'Sir Ridley Scott, né le 30 novembre 1937 à South Shields dans le Tyne and Wear, est un réalisateur et producteur britannique. '),
(6, 'Steven', 'Spielberg', 'Steven Spielberg est un réalisateur, scénariste et producteur de cinéma américain, né le 18 décembre 1946 à Cincinnati (Ohio). '),
(7, 'Robert', 'Zemeckis', 'Robert Lee Zemeckis est un réalisateur, producteur et scénariste américain né le 14 mai 1952 à Chicago (Illinois). '),
(8, 'Anthony', 'Russo', 'Anthony Russo est un  réalisateur et scénariste américain né le 3 février 1970 (48 ans) à Cleveland, Ohio. '),
(9, 'Joe', 'Russo', 'Joe Russo est un  réalisateur et scénariste américain né le 8 juillet 1971 (47 ans) à Cleveland, Ohio.');

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
