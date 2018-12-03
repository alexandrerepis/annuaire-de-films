<?php

require 'movies.php';

function bdd_actList() {
global $bdd;

$request = "SELECT tbl_acteurs.id_acteur AS id, CONCAT(tbl_acteurs.prenom_acteur,' ', tbl_acteurs.nom_acteur) 
AS acteur, GROUP_CONCAT(DISTINCT CONCAT( tbl_films.titre , ' ', tbl_films.annee_de_sortie)SEPARATOR ', ') 
AS filmographie
FROM tbl_films

INNER JOIN tbl_films_acteurs ON tbl_films_acteurs.id_film = tbl_films.id
INNER JOIN tbl_acteurs ON tbl_acteurs.id_acteur = tbl_films_acteurs.id_acteur
GROUP BY tbl_acteurs.nom_acteur ORDER BY tbl_acteurs.nom_acteur";

$response = $bdd->prepare( $request );
// $response->bindParam(':num', $num, PDO::PARAM_INT)
$response->execute();
return $response->fetchAll(PDO::FETCH_ASSOC);

}

function bdd_actDetail($id = 1) {
global $bdd;

$request = "SELECT tbl_acteurs.id_acteur AS id, 
GROUP_CONCAT(DISTINCT tbl_films.id SEPARATOR ',') AS filmid, tbl_acteurs.jour_naissance, tbl_acteurs.mois_naissance, 
tbl_acteurs.annee_naissance, tbl_acteurs.lieu_naissance, tbl_acteurs.nationalite,
CONCAT(tbl_acteurs.prenom_acteur,' ', tbl_acteurs.nom_acteur) AS acteur, GROUP_CONCAT(DISTINCT 
CONCAT( tbl_films.titre , ' de ', tbl_films.annee_de_sortie)SEPARATOR ', ') AS filmographie, 
tbl_acteurs.bio_acteur AS biographie
FROM tbl_films
INNER JOIN tbl_films_acteurs ON tbl_films_acteurs.id_film = tbl_films.id
INNER JOIN tbl_acteurs ON tbl_acteurs.id_acteur = tbl_films_acteurs.id_acteur
WHERE tbl_acteurs.id_acteur = $id
GROUP BY tbl_acteurs.nom_acteur ORDER BY tbl_acteurs.nom_acteur";

$response = $bdd->prepare( $request );
// $response->bindParam(':num', $num, PDO::PARAM_INT)
$response->execute();
return $response->fetchAll(PDO::FETCH_ASSOC);

}