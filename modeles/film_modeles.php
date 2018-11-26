<?php

require_once 'movies.php';

$request = 'SELECT tbl_films.id, tbl_films.titre, tbl_films.description, tbl_films.annee_de_sortie,
GROUP_CONCAT(DISTINCT(`genre`) SEPARATOR ', ') AS Genre, GROUP_CONCAT(DISTINCT(`prenom_realisateur`) SEPARATOR ', ') AS Réal, tbl_realisateurs.nom_realisateur FROM tbl_films
INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
GROUP BY titre ORDER BY tbl_films.id';
openBDD ($request);
