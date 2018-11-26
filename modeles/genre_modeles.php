<?php

require 'movies.php';

$sql = "SELECT tbl_genre.genre, tbl_films.titre, tbl_films.description, tbl_films.annee_de_sortie, 
CONCAT(GROUP_CONCAT(DISTINCT tbl_realisateurs.prenom_realisateur SEPARATOR ', '), ' ', tbl_realisateurs.nom_realisateur) 
AS Réalisateur 
FROM tbl_films 
INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films 
INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres 
INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films 
INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur 
GROUP BY tbl_films.titre ORDER BY tbl_genre.genre";

openBDD ($sql);

// foreach( $list as $row ){
    //     echo $row['titre']. $row['annee_de_sortie'] . "<br/>";
    // }
