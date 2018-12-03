-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 03 Décembre 2018 à 12:53
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
  `annee_naissance` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lieu_naissance` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nationalite` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbl_acteurs`
--

INSERT INTO `tbl_acteurs` (`id_acteur`, `prenom_acteur`, `nom_acteur`, `bio_acteur`, `jour_naissance`, `mois_naissance`, `annee_naissance`, `lieu_naissance`, `nationalite`) VALUES
(1, 'Sam', 'Worthington', 'Samuel Henry John « Sam » Worthington naît par l\'union de Ronald W. Worthington, un employé et Jeanne J. Worthington (née Martyn), femme au foyer. Il a une sœur aînée, Lucinda. Très vite, alors qu\'il est âgé de six mois, ses parents emménagent en Australie dans la banlieue de Perth Warnbro, commune de Rockingham.\n\nIl effectue ses études au John Curtin College of The Arts mais quitte l\'école à dix-sept ans. À dix-neuf ans, il accompagne sa petite amie de l\'époque pour son examen d\'entrée dans le prestigieux National Institute of Dramatic Art (NIDA) de Sydney qui a accueilli entre autres Mel Gibson, Cate Blanchett et Baz Luhrmann : elle se voit refuser l\'admission, mais lui est admis à sa grande surprise. Il sort diplômé du NIDA, en 1998, à l’âge de vingt-deux ans et est acclamé pour sa prestation d’Arthur Wellesley dans la pièce Judas Kiss montée au Belvoir Street Theatre.', '2', 'août', '1976', 'Godalming (Surrey) ', 'Britannique'),
(2, 'Zoe', 'Saldana', 'Zoe Saldana Perego est une actrice, réalisatrice et productrice américano-dominicaine. Née de parents originaires de République dominicaine et de Porto Rico, elle grandit dans le Queens à New York. Quand elle a 9 ans, son père décède dans un accident de voiture. Elle repart alors avec sa mère et sa sœur en République dominicaine. Là, elle s\'inscrit dans une école de danse où elle s\'initie à un certain nombre de styles et notamment le ballet.\n\nÀ 17 ans, elle revient aux États-Unis avec sa famille, où elle s\'adonne alors au théâtre avec la troupe Faces ainsi que le New York Youth Theatre. ', '19', 'juin', '1978', 'Passaic (New Jersey)', 'Américano-dominicaine'),
(3, 'Sigourney', 'Weaver', 'Sigourney Weaver, née Susan Alexandra Weaver est une actrice américaine. Elle est surtout connue pour son rôle d\'Ellen Ripley dans la saga Alien, initiée en 1979 par le long-métrage Alien, le 8ème Passager, de Ridley Scott. En 1986, la suite Aliens, le retour, réalisée par James Cameron, connait un succès commercial supérieur et lui vaut une nomination à l\'Oscar de la meilleure actrice.\n\nElle doit ses deux autres nominations à la comédie Working Girl (1988), de Mike Nichols et au biopic Gorilles dans la brume (1989), de Michael Apted, où elle incarne la zoologiste Dian Fossey.\n\nDurant les années 1980, elle joue aussi dans L\'Œil du témoin (1981), de Peter Yates, L\'Année de tous les dangers (1982), de Peter Weir, et SOS Fantômes (1984), d\'Ivan Reitman. ', '8', 'octobre', '1949', 'New York', 'Américaine'),
(4, 'Stephen', 'Lang', 'Stephen Lang est né à New York. Il est le fils de Thérèse (née Volmer) et d\'Eugene Lang, un homme d\'affaires-philanthrope. Il est catholique et son père est issu d\'une famille juive-hongroise. Il est marié à Kristina Watson, créatrice de costumes et enseignante, depuis le 1er juin 1980. Ils ont cinq enfants : Lucy, Jane, Noah, Grace, et Daniel. Stephen Lang a fréquenté l\'école PS 178 à Jamaïque Estates. Il est diplômé de Swarthmore College en 1973, en littérature anglaise. Le 30 mai 2010, Swarthmore lui a décerné un diplôme honorifique en reconnaissance de sa brillante carrière au théâtre, à la télévision et au cinéma.', '11', 'juillet', '1952', 'New York', 'Américaine'),
(5, 'Leonardo', 'Dicaprio', 'Leonardo DiCaprio est un acteur, scénariste et producteur de cinéma américain. Samuel Henry John « Sam » Worthington naît à Godalming dans le comté de Surrey par l\'union de Ronald W. Worthington, un employé et Jeanne J. Worthington (née Martyn), femme au foyer. Il a une sœur aînée, Lucinda. Très vite, alors qu\'il est âgé de six mois, ses parents emménagent en Australie dans la banlieue de Perth Warnbro, commune de Rockingham1,2,3.\n\nIl effectue ses études au John Curtin College of The Arts mais quitte l\'école à dix-sept ans. À dix-neuf ans, il accompagne sa petite amie de l\'époque pour son examen d\'entrée dans le prestigieux National Institute of Dramatic Art (NIDA) de Sydney qui a accueilli entre autres Mel Gibson, Cate Blanchett et Baz Luhrmann ', '11', 'novembre', '1974', 'Los Angeles (Californie)', 'Américaine'),
(6, 'Kate', 'Winslet', 'Kate Winslet est une actrice britannique.Élevée dans le Berkshire, elle étudie le théâtre dès l\'enfance et commence sa carrière d\'actrice à la télévision britannique en 1991.\n\nElle fait ses débuts au cinéma en 1994, dans Créatures célestes, film pour lequel elle reçoit son premier éloge notable de la part de la critique et gagne la reconnaissance pour son interprétation dans Raison et Sentiments et Titanic, ce dernier film lui valant une consécration mondiale à 22 ans.\n\nDepuis 2000, les performances de Kate Winslet ont continué à attirer des commentaires positifs des critiques cinématographiques, étant nommée pour plusieurs prix pour ses prestations dans des films tels que Quills, la plume et le sang, Iris, Eternal Sunshine of the Spotless Mind, Neverland, Little Children, The Reader et Les Noces rebelles.', '5', 'octobre', '1975', 'Reading ', 'Britannique'),
(7, 'Billy', 'Zane', 'Billy Zane est un acteur, producteur et réalisateur américain. En 1966, à sa naissance, ses parents, tous deux d\'origine grecque (Zanikopoulos1), s\'occupent d\'une école technique médicale. Très jeune, il s\'intéresse au métier d\'acteur. Il participe au Harand Camp of the Theater Arts à Elkhart Lake, Wisconsin. En 1982, il va à l\'École américaine en Suisse, puis revient aux États-Unis où il s\'inscrit à l\'université de Chicago.', '24', 'février', '1966', 'Chicago (Illinois)', 'Américaine'),
(8, 'Kathy', 'Bates', 'Kathy Bates est une actrice, réalisatrice et productrice américaine. Kathy Bates est une actrice issue du théâtre, sa première passion. Elle apparaît pour la première fois au cinéma en 1971 dans Taking Off de Miloš Forman. Il faudra attendre plusieurs années avant de la revoir sur grand écran, la comédienne préférant se consacrer au théâtre dans un premier temps. À partir des années 1980, l\'actrice tente néanmoins sa chance au cinéma, et enchaîne les participations : Reviens Jimmy Dean, reviens avec Cher en 1982, Le Lendemain du crime avec Jane Fonda en 1986 ou encore Dick Tracy aux côtés de Warren Beatty et Madonna en 1990. La même année, l\'actrice se voit confier le rôle-titre du film Frankie et Johnny avant de se le faire ravir par Michelle Pfeiffer.', '28', 'juin', '1948', 'Memphis (Tennessee)', 'Américaine'),
(9, 'Chadwick', 'Boseman', 'Chadwick Boseman est révélé pour ses interprétations de Jackie Robinson dans le drame sportif 42 (2013), puis de James Brown dans le biopic musical Get on Up (2014), puis, il convainc dans les drames Message from the King et Marshall, tous deux sortis en 2017.\n\nIl rejoint ensuite l\'univers cinématographique Marvel pour prêter ses traits au personnage de La Panthère noire. Il endosse le costume pour la première fois dans le blockbuster à succès Captain America: Civil War (2016) d\'Anthony et Joe Russo, avant un film solo, Black Panther, réel plébiscite critique et public, suivi d\'Avengers: Infinity War.', '29', 'novembre', '1977', 'Anderson (Caroline du Sud)', 'Américaine'),
(10, 'Michael', 'B. Jordan', 'Michael Bakari Jordan est un acteur américain.Il se fait connaître dans un premier temps, à la télévision, notamment pour son rôle de Damon (en), un jeune dealer dans la série télévisée policière américaineSur écoute, et pour celui de Vince Howard, le quarterback des deux dernières saisons de la série dramatique Friday Night Lights.\n\nIl confirme, au cinéma, grâce à son interprétation d\'Adonis Creed, qui succède à Sylvester Stallone dans le film Creed : L\'Héritage de Rocky Balboa et par le rôle d\'Erik Killmonger, l\'ennemi de la Panthère noire dans le blockbuster à succès Black Panther.', '9', 'février', '1987', 'Santa Ana (Californie)', 'Américaine'),
(11, 'Lupita', 'Nyong\'o', 'Lupita Nyong\'o est une actrice et réalisatrice kényane.Elle accède à la notoriété grâce à son interprétation de Patsey dans le drame acclamé Twelve Years a Slave. Ce rôle lui vaut de nombreuses récompenses, dont, le 2 mars 2014, l\'Oscar du cinéma de la meilleure actrice dans un second rôle.\n\nElle a été désignée « Plus belle femme du monde » pour l\'année 2014 par le magazine américain People.\n\nElle poursuit dans la performance capture pour le personnage de Maz Kanata présent dans deux volets de la saga cinématographique Star Wars : Star Wars, épisode VII : Le Réveil de la Force (2015) et Star Wars, épisode VIII : Les Derniers Jedi (2017) ainsi que pour le personnage de Raksha dans Le Livre de la jungle (2016).\n\nEn 2018, elle intègre l\'univers cinématographique Marvel et incarne le personnage de Nakia, introduit dans le blockbuster à succès Black Panther.', '1', 'mars', '1983', 'Mexico', 'Mexicaine, Kényane'),
(12, 'Danai', 'Gurira', 'Danai Gurira est une actrice américaine. Elle est révélée, au grand public, grâce à son interprétation du personnage Michonne dans la série télévisée à succès The Walking Dead depuis 2012.\n\nForte d\'une nouvelle notoriété, elle intègre l\'univers cinématographique Marvel et joue dans les blockbusters : Black Panther et Avengers: Infinity War.', '14', 'février', '1978', 'Grinnell (Iowa)', 'Américaine'),
(13, 'Tom', 'Hanks', 'Tom Hanks est un acteur, réalisateur et producteur de cinéma américain. Il est devenu célèbre avec le film Splash, avant de connaître la consécration avec Philadelphia et Forrest Gump, qui lui valurent chacun l\'Oscar du meilleur acteur. La quasi-totalité de ses films suivants furent des grands succès, comme Apollo 13, Il faut sauver le soldat Ryan et La Ligne verte. Il est souvent comparé à James Stewart, et son talent reconnu lui a permis de devenir l\'un des acteurs fétiches des réalisateurs Steven Spielberg, Robert Zemeckis et Ron Howard.', '9', 'juillet', '1956', 'Concord (Californie)', 'Américaine'),
(14, 'Michael', 'Clarke Duncan', 'Michael Clarke Duncan, mort le 3 septembre 2012 à Los Angeles, en Californie (États-Unis), était un acteur américain. Au milieu des années 1980, Michael Clarke Duncan rencontre un producteur de théâtre qui l\'engage en tant qu\'agent de sécurité dans la tournée de la pièce Beauty Shop, Part 2.\n\nIl part pour Hollywood pour signer avec une petite agence et tourne dans des spots publicitaires. Peu à peu, son physique et sa stature hors norme (il mesure 1,96 m pour 142 kilos), lui valent d\'être recruté sur les plateaux des grands studios. Entre-temps, il travaille comme garde du corps pour Will Smith, Martin Lawrence, Jamie Foxx, LL Cool J et Notorious B.I.G. En 1997, quand Notorious B.I.G est assassiné, Duncan quitte le métier. En 1998, on le retrouve aux côtés de Bruce Willis et Ben Affleck dans Armageddon.', '10', 'décembre', '1957', 'Chicago (Illinois)', 'Américaine'),
(15, 'David', 'Morse', 'David Morse est un acteur et scénariste américain. En 1991, il décroche son premier grand rôle : il incarne Joe Roberts, frère de Frank Roberts (joué par Viggo Mortensen) dans le film The Indian Runner de Sean Penn. Ce film est inspiré de la chanson Highway patrolman de Bruce Springsteen.\n\nIl fut notamment nommé aux Emmy Awards pour ses prestations dans la série télévisée Dr House, pour le rôle de l\'inspecteur Michael Tritter, personnage récurrent de la saison 3, et dans le rôle de George Washington pour la minisérie John Adams.\n\nIl est en particulier connu pour des rôles secondaires dans des films bien placés au box-office comme Rock, La Ligne verte ou L\'Armée des douze singes', '11', 'octobre', '1953', 'Hamilton (Massachusetts)', 'Américaine'),
(16, 'Bonnie', 'Hunt', 'Bonnie Hunt est une actrice, scénariste, productrice et réalisatrice américaine. En 1988, elle obtient un rôle dans Rain Man, aux côtés de Dustin Hoffman et de Tom Cruise.\n\nMais c\'est dans des films destinés au jeune public comme Beethoven (et sa suite Beethoven 2), Jumanji et Treize à la douzaine (et sa suite Treize à la douzaine 2) qu\'elle se fait connaître du grand public.\n\nElle a aussi joué dans des films à registre moins familial et registre dramatique dans Only You, Jerry Maguire, La Ligne verte en 1999, où elle joue la femme de Tom Hanks et L\'Ombre d\'un soupçon, où elle joue aux côtés d\'Harrison Ford.\n\nElle a réalisé un film, Droit au cœur (2000) où elle dirige David Duchovny (Mulder dans X-Files) qu\'elle avait rencontré en 1992 sur le tournage de Beethoven.', '22', 'septembre', '1961', 'Chicago (Illinois)', 'Américaine'),
(17, 'Matthew', 'McConaughey', 'Matthew McConaughey est un acteur, réalisateur, scénariste et producteur de cinéma américain. Révélé par Génération rebelle en 1993, il est considéré dans les années 1990 comme un jeune espoir du cinéma américain et tourne avec des réalisateurs comme Steven Spielberg (Amistad), Robert Zemeckis (Contact) et Ron Howard (En direct sur Ed TV).\n\nÀ partir des années 2010, il se détourne des comédies romantiques en s\'orientant vers des films plus sombres ; il reçoit de nombreuses critiques positives pour ses performances dans Bernie, Magic Mike, Killer Joe, ou encore Mud : Sur les rives du Mississippi. Depuis 2011, le terme de « McConnaissance » est utilisé pour désigner l\'évolution de l\'acteur.', '4', 'novembre', '1969', 'Uvalde (Texas)', 'Américaine'),
(18, 'Anne', 'Hathaway', 'Anne Hathaway est une actrice américaine. Après plusieurs rôles sur scène, elle est apparue à la télévision dans la série La Famille Green (1999-2000), mais elle se fait connaître du grand public avec le rôle de Mia Thermopolis dans Princesse malgré elle (2001) et sa suite, Un mariage de princesse, deux films produits par Disney. Depuis lors, elle a joué dans des films dramatiques comme Havoc et Le Secret de Brokeback Mountain. En 2006, elle partage la vedette avec Meryl Streep dans la comédie Le Diable s\'habille en Prada, qui rencontre un énorme succès commercial dès sa sortie en salles.', '12', 'novembre', '1982', 'New York', 'Américaine'),
(19, 'Michael', 'Caine', 'Michael Caine est un acteur et producteur britannique. Oscar du meilleur second rôle en 1987 pour Hannah et ses sœurs et, en 2000, pour L\'Œuvre de Dieu, la Part du Diable, il est anobli la même année par la reine Élisabeth II.\nEn juillet 2016, il change de nom pour adopter officiellement le nom de scène qu\'il avait jusqu\'alors utilisé : Michael Caine.', '14', 'mars', '1933', 'Londres', 'Britannique'),
(20, 'John', 'Lithgow', 'John Lithgow est un acteur, producteur et musicien américain. On le remarque d\'abord dans des thrillers de Brian De Palma, Obsession, puis Blow Out. Dans les années 1980, il s\'impose dans une série de seconds rôles de composition, comme le transsexuel dans Le Monde selon Garp. Il apparaît également dans des films de pur divertissement comme Footloose, Les Aventures de Buckaroo Banzaï à travers la 8e dimension ou Bigfoot et les Henderson, où il alterne personnages sympathiques et rôles de méchants. C\'est dans ce dernier emploi qu\'il interprète, au début des années 1990, une série de rôles de tueurs en série ou de criminels dans Ricochet, L\'Esprit de Caïn ou Cliffhanger : Traque au sommet.', '19', 'octobre', '1945', 'Rochester (État de New York)', 'Américaine'),
(21, 'Tom', 'Skerritt', 'Tom Skerritt est un acteur et réalisateur américain. Au début des années 70, M.A.S.H. et Nous sommes tous des voleurs lui donnent l\'occasion de travailler pour Robert Altman. Il travaille également pour Blake Edwards (Deux hommes dans l\'Ouest) mais n\'accède à la reconnaissance qu\'en 1979, avec son rôle du Commandant Dallas dans Alien, le huitième passager de Ridley Scott. Suivent ensuite des prestations remarquées dans Dead Zone (David Cronenberg - 1983), Top gun (Tony Scott - 1986) et La Relève (Clint Eastwood - 1990). ', '25', 'août', '1933', 'Detroit (Michigan)', 'Américaine'),
(22, 'Veronica', 'Cartwright', 'Veronica Cartwright est une actrice britannique. Veronica est la sœur aînée de la célèbre actrice enfantine Angela Cartwright. Au début de sa carrière, Veronica a participé à plusieurs films populaires tels que La rumeur (1961), La montagne des neuf Spencer (1963) et Les oiseaux (1963) de Alfred Hitchcock. En tant que telle, elle a été choisie comme \"Jemima Boone\" dans la série télévisée populaire Daniel Boone (1964), qui a paru de 1964 à 66. Sa carrière après \"Daniel Boone\" a peut-être été influencée par Hitchcock, puisqu\'elle est apparue à la fois dans le remake de L\'invasion des profanateurs (1978) et du classique d\'horreur Alien - Le 8ème passager (1979).', '20', 'avril', '1949', 'Bristol', 'Britannique'),
(23, 'Harry Dean ', 'Stanton', 'Harry Dean Stanton est un acteur américain. Stanton a joué dans des films indépendants comme Macadam à deux voies, Cockfighter, New York 1997, La Mort en prime, et des films grand public comme Luke la main froide, Le Parrain 2, Alien, Red Dawn, Alpha Dog, Rose bonbon, Christine et La Ligne verte. Il a joué pour Sam Peckinpah, John Milius, David Lynch et Monte Hellman.\nSa carrière prend un tournant en 1984 lorsque le scénariste Sam Shepard le propose et qu\'il est choisi par Wim Wenders pour un des rôles principaux dans Paris, Texas.\n\nStanton a aussi joué dans des clubs en tant que chanteur et guitariste, principalement de musique country. Il a travaillé avec des musiciens comme Bob Dylan, Art Garfunkel ou Kris Kristofferson et a joué de l\'harmonica pour le groupe The Call sur l\'album Let the Day Begin en 1989.\nIl meurt à 91 ans, le 15 septembre 2017, à Los Angeles, peu après avoir interprété le rôle principal de Lucky, film qui s\'inspire de sa vie et de sa personnalité.', '14', 'juillet', '1926', 'Irvine (Kentucky)', 'Américaine'),
(24, 'Tim', 'Robbins', 'Tim Robbins est un acteur, réalisateur et scénariste américain.  Il tient le rôle principal dans The Player de Robert Altman (1991) qui lui vaut le Prix d\'interprétation masculine à Cannes et le Golden Globe. Il reçoit un Oscar et à nouveau un Golden Globe pour son interprétation dans Mystic River de Clint Eastwood (2003). Il est également connu pour des films tels que Top Gun, Duo à trois et Les Évadés.', '16', 'octobre', '1958', 'West Covina (Californie)', 'Américaine'),
(25, 'Morgan', 'Freeman', 'Morgan Freeman est un acteur américain. Ayant commencé sa carrière théâtrale et cinématographique en 1964, il fut habitué aux seconds rôles pendant plus de vingt ans. Il acquiert une large reconnaissance internationale après avoir été nommé aux Oscars pour La Rue en 1987, Miss Daisy et son chauffeur en 1989, Les Évadés en 1994 et Invictus en 2009 ; il a par ailleurs reçu l\'Oscar du meilleur acteur dans un second rôle pour Million Dollar Baby en 2004. ', '1', 'juin', '1937', 'Memphis (Tennessee)', 'Américaine'),
(26, 'Bob', 'Gunton', 'Bob Gunton est un acteur américain. Il est connu pour jouer des personnages strictes et autoritaires, avec ses rôles les plus connus en tant que gardien Samuel Norton dans le film The Shawshank Redemption de 1994, chef George Earle dans Demolition Man en 1993, le Dr Walcott, le doyen dominant de la Virginia Medical School à Patch Adams. et le président Juan Peron dans la production originale de Evita à Broadway, pour laquelle il a été nommé au Tony Award. Il apparaît également dans la série télévisée Daredevil en tant que Leland Owlsley.', '15', 'novembre', '1945', 'Santa Monica (Californie)', 'Américaine'),
(27, 'William', 'Sadler', 'William Sadler est un acteur américain. Ses rôles à la télévision et au cinéma incluent Chesty Puller dans le Pacifique, Luther Sloan dans Star Trek: Deep Space Nine, le shérif Jim Valenti à Roswell, le condamné Heywood dans The Shawshank Redemption, le sénateur Vernon Trent dans Hard to Kill et le Grim Reaper dans Bogus Journey de Bill & Ted, rôle pour lequel il remporte le Saturn Award du meilleur acteur dans un second rôle [1] et son rôle de colonel Stuart aux côtés de Bruce Willis dans Die Hard 2. Il incarne le personnage du président des États-Unis, Matthew Ellis , dans Iron Man 3, dans les agents Marvel of SHIELD et dans WHIH Newsfront. Il revient aussi dans le remake de la série télévisée Hawaii Five-O de 1968, en tant que père assassiné de Steve McGarrett, John McGarrett. En 2015, Sadler est apparu dans la série télévisée Z Nation.', '13', 'avril', '1950', 'Buffalo (État de New York)', 'Américaine'),
(28, 'Gary', 'Sinise', 'Gary Sinise est un acteur, producteur, réalisateur américain et occasionnellement musicien. Il est le fils de Mylles S. (née en 1932) et Robert L. Sinise (né en 1931). Son père était un monteur de film. Il est d\'ascendance italienne par son grand-père paternel.\n\nIl commence sa carrière par le théâtre à 17 ans. Et en 1974, Gary et deux amis, Terry Kinney et Jeff Perry fondent la Steppenwolf Theatre Company dans le sous-sol d\'une église de Highland Park2,3. Joan Allen, Gary Cole, Ethan Hawke, John Mahoney, John Malkovich, Laurie Metcalf, Martha Plimpton et plus récemment William Petersen, tous ces acteurs ont suivi les cours de la Steppenwolf Theatre Company.', '17', 'mars', '1955', 'Blue Island (Illinois)', 'Américaine'),
(29, 'Robin', 'Wright', 'Robin Wright est une actrice, productrice et réalisatrice américaine. Révélée par la série Santa Barbara puis par le film culte Princess Bride (1987) et le succès planétaire Forrest Gump (1994), elle ne revient sur le devant de la scène médiatique que quinze ans après : d\'abord en tête d\'affiche du film indépendant Les Vies privées de Pippa Lee (2009), puis grâce au rôle de Claire Underwood dans la série télévisée House of Cards, lancée en 2013. ', '8', 'avril', '1966', 'Dallas (Texas)', 'Américaine'),
(30, 'Mykelti', 'Williamson', 'Mykelti Williamson est un acteur américain. a carrière commence en 1981 dans la série télévisée The Righteous Apples, mais il tient son premier rôle important avec le personnage de Bubba (Benjamin Buford Blue) dans le film Forrest Gump de Robert Zemeckis, où il montre son talent d\'acteur. Il est nommé pour ce rôle aux MTV Movie Awards en 1995. ', '4', 'mars', '1957', 'Saint-Louis (Missouri)', 'Américaine'),
(31, 'Christopher', 'Walken', 'Christopher Walken est un acteur et danseur américain. Commençant sa carrière au théâtre, il devient célèbre au cinéma avec Voyage au bout de l\'enfer (1978) pour lequel il remporte l\'Oscar du meilleur acteur dans un second rôle.\n\nOn peut le voir dans de nombreux films, dont Annie Hall (1977), La Porte du paradis (1980), Dead Zone (1983), Dangereusement vôtre (1985), The King of New York (1990), Batman : Le Défi (1992), Pulp Fiction (1994), Sleepy Hollow (1999), Arrête-moi si tu peux (2002), Serial noceurs (2005) et Hairspray (2007).', '31', 'mars', '1943', 'New York', 'Américaine'),
(32, 'Martin', 'Sheen', 'Ramón Estévez, dit Martin Sheen, est un acteur américain. Grâce à Apocalypse Now, il obtient davantage de rôles dans les années 1980 : celui d\'un journaliste dans Gandhi (1982) de Richard Attenborough ou encore de Greg Stillson dans Dead Zone (1983) de David Cronenberg. Malgré cela, il reste un acteur engagé, apparaissant notamment dans le documentaire Broken Rainbow, qui revient sur la relocalisation forcée de milliers d\'indiens Navajo en raison de spéculations minières en Arizona. Il continue cependant d\'apparaître dans des grosses productions, comme Wall Street (1987) d\'Oliver Stone, où il joue pour la première fois aux côtés de son fils Charlie Sheen.', '3', 'août', '1940', 'Dayton (Ohio)', 'Américaine'),
(33, 'Robert', 'Downey Jr.', 'Robert Downey Jr. est un acteur américain. Révélé à la fin des années 1980, il est nommé à l\'Oscar du meilleur acteur en 1993 pour son interprétation de Charlie Chaplin dans Chaplin, mais connaît ensuite un passage à vide du fait de graves problèmes de drogue et d\'alcool. Rétabli, il opère un retour en force et devient, en 2008, l\'interprète d\'Iron Man dans les films des studios Marvel. Ce rôle, qu\'il interprète dans la trilogie Iron Man ainsi que dans les films des séries Avengers, Captain America et Spider-Man lui vaut de devenir l\'un des acteurs les mieux payés au monde.', '4', 'avril ', '1965', 'New York', 'Américaine'),
(34, 'Chris', 'Hemsworth', 'Christopher Hemsworth, dit Chris Hemsworth, est un acteur australien. Il débute dans la série télévisée australienne Summer Bay (2004-2007) avant de devenir mondialement reconnu grâce à l\'interprétation du super-héros Thor dans les films Marvel. Il est le frère de Luke et Liam Hemsworth.', '11', 'août', '1983', 'Melbourne', 'Australienne'),
(35, 'Mark', 'Ruffalo', 'Mark Ruffalo est un acteur, producteur de cinéma, scénariste et réalisateur américain. Il est connu pour ses performances dans les thrillers psychologiques Zodiac, Shutter Island et Foxcatcher, ainsi que depuis 2012, pour son interprétation du personnage de Hulk dans les adaptations de l\'univers cinématographique Marvel.\n\nIl a été nommé trois fois à l\'Oscar du meilleur acteur dans un second rôle, pour Tout va bien ! The Kids Are All Right, Foxcatcher et Spotlight.', '22', 'novembre', '1967', 'Kenosha (Wisconsin)', 'Américaine'),
(36, 'Chris', 'Evans', 'Chris Evans est un acteur américain. l est principalement connu pour avoir joué le rôle de Johnny Storm / Torche humaine dans Les Quatre Fantastiques ainsi que celui de Steve Rogers / Captain America dans l\'univers cinématographique Marvel depuis 2011.', '13', 'juin', '1981', 'Sudbury (Massachusetts)', 'Américaine'),
(37, 'Russel', 'Crowe', 'Russell Crowe est un acteur et réalisateur néo-zélandais. Après avoir commencé sa carrière en Australie, il la poursuit aux États-Unis avec L.A. Confidential et Révélations (The Insider), avant de devenir mondialement célèbre avec Gladiator (pour lequel il a gagné l\'Oscar du meilleur acteur) et Un homme d\'exception.', '7', 'avril', '1964', 'Wellington', 'Néo-zélandaise'),
(38, 'Joaquin', 'Phoenix', 'Joaquin Phoenix est un acteur américain. Joaquin Phoenix, de son vrai nom Joaquín Rafael Bottom, et crédité Leaf Phoenix dans certains films, a grandi dans une famille d’acteurs. Son père est natif de la Californie alors que sa mère est née dans le quartier du Bronx à New York de parents juifs venus de Russie et de Hongrie. Les parents de Joaquin faisaient partie de la secte des Enfants de Dieu, et déménageaient fréquemment. Il a vécu dans l’Oregon, au Mexique, en Amérique centrale et en Floride.\n\nIl a trois sœurs : Rain (1972), Liberty (1976) et Summer (1978). Son frère aîné, l\'acteur River Phoenix (1970), est mort en 1993 d\'une overdose.\n\nFrustré d\'être le seul de ses frères et sœurs à ne pas avoir un prénom en rapport avec la nature, il prit le surnom de « Leaf » (feuille), qu\'il abandonnera.', '28', 'octobre', '1974', 'San Juan (Porto Rico)', 'Américaine'),
(39, 'Connie', 'Nielsen', 'Connie Nielsen, est une actrice danoise. Révélée au monde entier en 2000 par son interprétation de Lucilla dans le péplum de Ridley Scott Gladiator, elle incarnera aussi un rôle de femme de pouvoir trouble et très complexe en interprétant Meredith Kane dans la série politique Boss, entre 2011 et 2012.', '3', 'juillet', '1965', 'Elling, Frederikshavn', 'Danoise'),
(40, 'Oliver', 'Reed', 'Oliver Reed est un acteur britannique né le 13 février 1938 à Londres dans le quartier de Wimbledon et mort le 2 mai 1999 à La Valette (Malte). ', '13', 'février', '1938', 'Londres ', 'Britannique'),
(41, 'Liam', 'Neeson', 'Liam Neeson, de son vrai nom William John Neeson est un acteur britanno-américain. Il est connu pour ses rôles d\'hommes courageux et révolutionnaires dans des films comme La Liste de Schindler, Michael Collins et Rob Roy ainsi que pour sa participation à des grosses productions telles que Star Wars, épisode I : La Menace fantôme, Taken et Batman Begins. Il a été dirigé par de grands réalisateurs comme George Lucas, Christopher Nolan, Steven Spielberg, Woody Allen, Ridley Scott ou encore Martin Scorsese.', '7', 'juin', '1952', 'Ballymena (Irlande du Nord)', 'Britanno-américaine'),
(42, 'Ben', 'Kingsley', 'Ben Kingsley est un acteur britannique d\'ascendance indienne. Ben Kingsley est né en Angleterre, d\'un père médecin, Rahimtulla Harji Bhanji, d\'ascendance gujarati mais né au Kenya (ses grands-parents paternels s\'étant préalablement installés à Zanzibar), tandis que sa mère Anna Lyna Mary (née Goodman) était une actrice et modèle anglaise.\n\nIl s\'intéresse très tôt au théâtre et devient pensionnaire de la Royal Shakespeare Company. Il joue entre autres Othello, Hamlet et The Merry Wives of Windsor de Shakespeare, ou La Cerisaie de Tchekhov. Puis en 1972, il débute au cinéma.', '31', 'décembre', '1943', 'Snainton (Yorkshire)', 'Britannique'),
(43, 'Ralph', 'Fiennes', 'Ralph Fiennes (nom prononcé en anglais /faɪnz/) est un acteur, réalisateur et producteur de cinéma britannique et serbe. Il a joué dans une trentaine de films parmi lesquels La Liste de Schindler, Quiz Show, Le Patient anglais, Dragon Rouge, The Constant Gardener, la saga Harry Potter, The Reader, Skyfall, 007 Spectre. Ralph Fiennes est célèbre pour le rôle de Lord Voldemort qu\'il incarne dans la saga Harry Potter. Il a également prêté sa voix à des films d\'animation, comme Wallace et Gromit : Le Mystère du lapin-garou.\n\nDeux fois nommé aux Oscars, il est le seul acteur de théâtre à avoir remporté le Tony Award pour avoir joué Hamlet de Shakespeare à Broadway. Ralph Fiennes est aussi l\'un des ambassadeurs britanniques pour l\'Unicef2 et est membre du conseil de la Royal Academy of Dramatic Art3.\n\nIl est le frère de la réalisatrice Martha Fiennes, du compositeur Magnus Fiennes et de l\'acteur Joseph Fiennes.', '22 ', 'décembre', '1962', 'Ipswich (Suffolk)', 'Britannique et Serbe'),
(44, 'Caroline', 'Goodall', 'Caroline Goodall est une actrice et scénariste anglaise. Elle a été nominée aux AFI Awards pour ses rôles dans la minisérie Cassidy de 1989 et dans le film Hotel Sorrento de 1995. Elle a également joué dans Hook (1991), Cliffhanger (1993), Schindler\'s List (1993), Disclosure (1994), White Squall (1996), The Princess Diaries (2001) et The Dressmaker (2015).', '13', 'novembre', '1959', 'Londres', 'Britannique');

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
  `bio_realisateur` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `jour_naissance` text COLLATE utf8_unicode_ci NOT NULL,
  `mois_naissance` text COLLATE utf8_unicode_ci NOT NULL,
  `annee_naissance` text COLLATE utf8_unicode_ci NOT NULL,
  `lieu_naissance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationalite` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbl_realisateurs`
--

INSERT INTO `tbl_realisateurs` (`id_realisateur`, `prenom_realisateur`, `nom_realisateur`, `bio_realisateur`, `jour_naissance`, `mois_naissance`, `annee_naissance`, `lieu_naissance`, `nationalite`) VALUES
(1, 'James', 'Cameron', 'James Francis Cameron est un réalisateur, scénariste, producteur et explorateur de fonds marins canadien. Il a réalisé et écrit les films, Terminator (1984), Aliens, le retour (1986), Abyss (1989), Terminator 2 : Le Jugement dernier (1991), True Lies (1994), Titanic (1997) et Avatar (2009).\n\nEn 1997, il bat un record avec Titanic, film consacré au naufrage de 1912. Le film est resté pendant onze ans le plus gros succès du box-office mondial et reçoit en 1998 l\'Oscar du meilleur film et Cameron remporte la même année l\'Oscar du meilleur réalisateur. Le film remporte également neuf autres Oscars. Le budget du film est de quelque 200 millions de dollars.', '16', 'août', '1954', 'Kapuskasing', 'Canadienne'),
(2, 'Ryan', 'Coogler', 'Ryan Kyle Coogler est un réalisateur et scénariste américain. Son premier long métrage, Fruitvale Station, a remporté le Grand prix du jury et le Prix du public dans la catégorie \"film dramatique américain\" au Festival du film de Sundance 2013.', '23', 'mai', '1986', 'Oakland (Californie)', 'Américaine'),
(3, 'Frank', 'Darabont', 'Frank Darabont, né le 28 janvier 1959 à Montbéliard (Doubs), est un réalisateur, scénariste, producteur et acteur de cinéma américain d\'origine hongroise. Il s\'est surtout illustré en réalisant trois longs métrages adaptés d\'œuvres de Stephen King : Les Évadés (1994), La Ligne verte (1999), et The Mist (2007). Il est par ailleurs à l\'origine du développement des séries télévisées The Walking Dead et Mob City et travaille régulièrement comme script doctor sur des scénarios de films.', '28', 'janvier', '1959', 'Montbéliard (Doubs)', 'Américaine'),
(4, 'Christopher', 'Nolan', 'Christopher Edward Nolan est un réalisateur, scénariste, monteur et producteur de cinéma britanno-américain. Il se fait connaître à la fin des années 1990 par un premier long métrage, Following (1998), tourné en noir et blanc. Son deuxième film, Memento (2000), lui apporte une renommée, qui lui permet d\'obtenir pour le troisième, Insomnia (2002), la collaboration d\'Al Pacino et Robin Williams. Il est choisi ensuite pour réaliser la trilogie des Batman : Batman Begins (2005), The Dark Knight : Le Chevalier noir (2008) et The Dark Knight Rises (2012). Tout en travaillant sur cette saga, il met en scène Le Prestige (2006), et deux films de science-fiction, Inception (2010) et Interstellar (2014).', '30', 'juillet', '1970', 'Westminster (Londres)', 'Britanno-américaine'),
(5, 'Ridley', 'Scott', 'Sir Ridley Scott est un réalisateur et producteur britannique. Il est révélé à la fin des années 1970 et durant les années 1980 par trois blockbusters : Alien, le huitième passager (1979), Blade Runner (1982) et Legend (1985).\n\nDurant les années 1990, ses films connaissent moins de succès. Se détachent en 1992 Thelma et Louise et 1492 : Christophe Colomb. Mais au début des années 2000, il fait un retour au premier plan remarqué en relançant le péplum avec Gladiator (2000).', '30', 'novembre', '1937', 'South Shields (Tyne and Wear)', 'Britannique'),
(6, 'Steven', 'Spielberg', 'Steven Spielberg est un réalisateur, scénariste et producteur de cinéma américain. Issu de la deuxième génération du Nouvel Hollywood dans les années 1970, il réalise le premier blockbuster de l\'histoire du cinéma : Les Dents de la mer. Il enchaîne les succès (E.T., l\'extra-terrestre, série Indiana Jones, Jurassic Park, Ready Player One) tout en développant ses activités de gestionnaire. Fondateur de la société de production Amblin Entertainment et cofondateur du studio DreamWorks SKG, il produit de nombreux films à succès (Poltergeist, Gremlins, Retour vers le futur, Qui veut la peau de Roger Rabbit ou encore la trilogie Men in Black et Transformers). Il a également financé et distribué des œuvres plus exigeantes ou moins grand public telles que Lettres d\'Iwo Jima de Clint Eastwood, American Beauty de Sam Mendes et Hollywood Ending de Woody Allen.', '18', 'décembre', '1946', 'Cincinnati (Ohio)', 'Américaine'),
(7, 'Robert', 'Zemeckis', 'Robert Lee Zemeckis est un réalisateur, producteur et scénariste américainIssu de la deuxième génération du Nouvel Hollywood dans les années 1970, il réalise le premier blockbuster de l\'histoire du cinéma : Les Dents de la mer. Il enchaîne les succès (E.T., l\'extra-terrestre, série Indiana Jones, Jurassic Park, Ready Player One) tout en développant ses activités de gestionnaire. Fondateur de la société de production Amblin Entertainment et cofondateur du studio DreamWorks SKG, il produit de nombreux films à succès (Poltergeist, Gremlins, Retour vers le futur, Qui veut la peau de Roger Rabbit ou encore la trilogie Men in Black et Transformers). Il a également financé et distribué des œuvres plus exigeantes ou moins grand public telles que Lettres d\'Iwo Jima de Clint Eastwood, American Beauty de Sam Mendes et Hollywood Ending de Woody Allen.. ', '14', 'mai', '1952', 'Chicago (Illinois)', 'Américaine'),
(8, 'Anthony', 'Russo', 'Anthony et Joe Russo sont deux frères réalisateurs et scénaristes américains. Ils ont travaillé sur plusieurs séries télévisées. En 2014 et 2016, ils réalisent respectivement Captain America : Le Soldat de l\'hiver et Captain America: Civil War, les deux suites du film Captain America: First Avenger sorti en 2011 ainsi que Avengers: Infinity War troisième opus réunissant l\'équipe de super-héros des Avengers, sorti en 2018.', '3', 'février', '1970', 'Cleveland (Ohio)', 'Américaine'),
(9, 'Joe', 'Russo', 'Joe Russo est un  réalisateur et scénariste américain né le 8 juillet 1971 (47 ans) à Cleveland, Ohio.', '8', 'juillet', '1971', 'Cleveland (Ohio)', 'Américaine');

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
