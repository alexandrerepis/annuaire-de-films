<?php

require 'movies.php';

$sql = 'SELECT tbl_genre.genre, tbl_films.titre, tbl_films.description, tbl_films.annee_de_sortie, \n"

. "CONCAT(GROUP_CONCAT(DISTINCT tbl_realisateurs.prenom_realisateur SEPARATOR \', \'), \' \', tbl_realisateurs.nom_realisateur) AS Réalisateur \n"

. "FROM tbl_films \n"

. "INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films \n"

. "INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres \n"

. "INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films \n"

. "INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur \n"

. "GROUP BY tbl_films.titre ORDER BY tbl_genre.genre';

openBDD ($sql);
