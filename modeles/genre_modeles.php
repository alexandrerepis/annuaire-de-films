<?php

require_once 'movies.php';


function bdd_genreList() {
    global $bdd;

$request = "SELECT tbl_genre.genre AS genre, tbl_films.titre AS titre, tbl_films.annee_de_sortie AS annee, 
CONCAT(GROUP_CONCAT(DISTINCT tbl_realisateurs.prenom_realisateur SEPARATOR ', '), ' ', tbl_realisateurs.nom_realisateur) 
AS realisateur 
FROM tbl_films 
INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films 
INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres 
INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films 
INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur 
GROUP BY tbl_genre.genre ORDER BY tbl_genre.genre";

$response = $bdd->prepare( $request );
// $response->bindParam(':num', $num, PDO::PARAM_INT)
$response->execute();
return $response->fetchAll(PDO::FETCH_ASSOC);

}