<?php

require_once 'movies.php';

echo $controller;
echo $action;
echo $id;
echo $tri;


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
    GROUP_CONCAT(DISTINCT tbl_acteurs.id_acteur SEPARATOR ',') AS actid,
    GROUP_CONCAT(DISTINCT(`genre`) SEPARATOR ', ') AS Genre, tbl_realisateurs.id_realisateur AS realid,
    CONCAT(GROUP_CONCAT(DISTINCT tbl_realisateurs.prenom_realisateur SEPARATOR ', '), ' ', tbl_realisateurs.nom_realisateur) 
    AS realisateur 
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
    // $response->bindParam(':id');
    $response->execute();
    return $response->fetchAll(PDO::FETCH_ASSOC);

}

function bdd_filmDateAsc() {
    global $bdd;

    $request = 'SELECT tbl_films.id, tbl_films.titre, tbl_films.description, tbl_films.annee_de_sortie,
    GROUP_CONCAT(DISTINCT(`genre`) SEPARATOR ", ") AS Genre, GROUP_CONCAT(DISTINCT(`prenom_realisateur`) SEPARATOR ", ") AS Réal, tbl_realisateurs.nom_realisateur FROM tbl_films
    INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
    INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
    INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
    INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
    GROUP BY titre ORDER BY tbl_films.annee_de_sortie';

    $response = $bdd->prepare( $request );
    // $response->bindParam(':num', $num, PDO::PARAM_INT)
    $response->execute();
    return $response->fetchAll(PDO::FETCH_ASSOC);

}

function bdd_filmDateDesc() {
    global $bdd;

    $request = 'SELECT tbl_films.id, tbl_films.titre, tbl_films.description, tbl_films.annee_de_sortie,
    GROUP_CONCAT(DISTINCT(`genre`) SEPARATOR ", ") AS Genre, GROUP_CONCAT(DISTINCT(`prenom_realisateur`) SEPARATOR ", ") AS Réal, tbl_realisateurs.nom_realisateur FROM tbl_films
    INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
    INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
    INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
    INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
    GROUP BY titre ORDER BY tbl_films.annee_de_sortie DESC';

    $response = $bdd->prepare( $request );
    // $response->bindParam(':num', $num, PDO::PARAM_INT)
    $response->execute();
    return $response->fetchAll(PDO::FETCH_ASSOC);

}

function bdd_filmGenre($id = 0) {
    global $bdd;
    $request = "SELECT tbl_films.id, tbl_films.titre, tbl_films.description, tbl_films.annee_de_sortie,
    GROUP_CONCAT(DISTINCT(`genre`) SEPARATOR ', ') AS Genre, GROUP_CONCAT(DISTINCT(`prenom_realisateur`) SEPARATOR ', ') AS Réal, tbl_realisateurs.nom_realisateur FROM tbl_films
    INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
    INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
    INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
    INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
    WHERE tbl_genre.id = $id
    GROUP BY titre ORDER BY tbl_films.id";

    $response = $bdd->prepare( $request );
    // $response->bindParam(':id');
    $response->bindParam(':id', $id, PDO::PARAM_INT);
    $response->execute();
    return $response->fetchAll(PDO::FETCH_ASSOC);

}
