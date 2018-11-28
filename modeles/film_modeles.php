<?php

require_once 'movies.php';


function bdd_filmList() {
    global $bdd;

    $request = "SELECT tbl_films.id, tbl_films.titre, tbl_films.description, 
    tbl_films.annee_de_sortie,
    GROUP_CONCAT(DISTINCT(`genre`) SEPARATOR ', ') AS Genre, 
    CONCAT(GROUP_CONCAT(DISTINCT tbl_realisateurs.prenom_realisateur 
    SEPARATOR ', '), ' ', tbl_realisateurs.nom_realisateur) AS realisateur 
    FROM tbl_films

    INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
    INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
    INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
    INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
    GROUP BY titre ORDER BY tbl_films.id";

    $response = $bdd->prepare($request);
    // $response->bindParam(':num', $num, PDO::PARAM_INT)
    $response->execute();
    return $response->fetchAll(PDO::FETCH_ASSOC);

}

function bdd_filmDetail($id = 1) {
    global $bdd;
    $request = "SELECT tbl_films.id as id, tbl_films.titre, tbl_films.description, tbl_films.annee_de_sortie, 
    GROUP_CONCAT(DISTINCT tbl_acteurs.prenom_acteur,' ', tbl_acteurs.nom_acteur SEPARATOR ', ') AS acteur,
    GROUP_CONCAT(DISTINCT(`genre`) SEPARATOR ', ') AS Genre, 
    CONCAT(GROUP_CONCAT(DISTINCT tbl_realisateurs.prenom_realisateur SEPARATOR ', '), ' ', tbl_realisateurs.nom_realisateur) AS realisateur 
    FROM tbl_films
    INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
    INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
    INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
    INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
    INNER JOIN tbl_films_acteurs ON tbl_films_acteurs.id_film = tbl_films.id
    INNER JOIN tbl_acteurs ON tbl_acteurs.id_acteur = tbl_films_acteurs.id_acteur
    WHERE tbl_films.id = $id
    GROUP BY titre ORDER BY tbl_films.id";

    $response = $bdd->prepare( $request );
    // $response->bindParam(':id', 1);
    $response->execute();
    return $response->fetchAll(PDO::FETCH_ASSOC);

}
