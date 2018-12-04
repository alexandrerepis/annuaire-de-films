<?php

require 'connexion-bdd.php';

function bdd_realList() {
    global $bdd;

    $request = "SELECT tbl_realisateurs.id_realisateur AS id, CONCAT(GROUP_CONCAT(DISTINCT tbl_realisateurs.prenom_realisateur SEPARATOR ', '), ' ', tbl_realisateurs.nom_realisateur) 
    AS realisateur, tbl_realisateurs.bio_realisateur,
    GROUP_CONCAT(DISTINCT CONCAT( tbl_films.titre , ' ', tbl_films.annee_de_sortie)SEPARATOR ', ') 
    AS filmographie FROM tbl_films
    INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
    INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
    INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
    INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
    GROUP BY tbl_realisateurs.id_realisateur ORDER BY tbl_realisateurs.nom_realisateur";

$response = $bdd->prepare( $request );
$response->execute();
return $response->fetchAll(PDO::FETCH_ASSOC);

}

function bdd_realDetail($id = 1) {
    global $bdd;

$request = "SELECT tbl_realisateurs.id_realisateur AS id, CONCAT(GROUP_CONCAT(DISTINCT tbl_realisateurs.prenom_realisateur SEPARATOR ', '), ' ', tbl_realisateurs.nom_realisateur) 
AS realisateur, tbl_realisateurs.bio_realisateur AS biographie, tbl_films.id AS filmid, tbl_realisateurs.jour_naissance, 
tbl_realisateurs.mois_naissance, 
tbl_realisateurs.annee_naissance, tbl_realisateurs.lieu_naissance, tbl_realisateurs.nationalite,
GROUP_CONCAT(DISTINCT CONCAT( tbl_films.titre , ' de ', tbl_films.annee_de_sortie)SEPARATOR ', ') AS filmographie, 
GROUP_CONCAT(DISTINCT tbl_films.id SEPARATOR ',') AS filmid
FROM tbl_films
INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
WHERE tbl_realisateurs.id_realisateur = $id
GROUP BY tbl_realisateurs.id_realisateur ORDER BY tbl_realisateurs.nom_realisateur";

$response = $bdd->prepare( $request );
$response->bindParam(':id', $id, PDO::PARAM_INT);
$response->execute();
return $response->fetchAll(PDO::FETCH_ASSOC);
}