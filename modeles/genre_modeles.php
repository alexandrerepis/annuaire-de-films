<?php

require_once 'movies.php';


function bdd_genreList() {
    global $bdd;

$request = "SELECT tbl_genre.genre, GROUP_CONCAT(DISTINCT tbl_films.titre, ' de ', 
tbl_films.annee_de_sortie, ' par ', tbl_realisateurs.prenom_realisateur, ' ', 
tbl_realisateurs.nom_realisateur SEPARATOR ', ') AS films
     
FROM tbl_films

INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
GROUP BY tbl_genre.id";



$response = $bdd->prepare( $request );
// $response->bindParam(':num', $num, PDO::PARAM_INT)
$response->execute();
return $response->fetchAll(PDO::FETCH_ASSOC);

}

function bdd_genreDetail($id=1) {
    global $bdd;

$request = "SELECT tbl_genre.id AS id, tbl_genre.genre, GROUP_CONCAT(DISTINCT tbl_films.titre, ' de ', 
tbl_films.annee_de_sortie, ' par ', tbl_realisateurs.prenom_realisateur, ' ', 
tbl_realisateurs.nom_realisateur SEPARATOR ', ') AS films
     
FROM tbl_films

INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
WHERE tbl_genre.id = $id
GROUP BY tbl_genre.id";



$response = $bdd->prepare( $request );
// $response->bindParam(':num', $num, PDO::PARAM_INT)
$response->execute();
return $response->fetchAll(PDO::FETCH_ASSOC);

}













































































































































































INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur

GROUP BY titre ORDER BY tbl_films.annee_de_sortie ASC