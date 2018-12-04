<?php
require_once 'movies.php';

// echo $controller;
// echo $action;
// echo $id;
// echo $tri;


function bdd_filmList($order) {
    global $bdd;

    $request = "SELECT tbl_films.id, tbl_films.titre, tbl_films.description, 
    tbl_films.annee_de_sortie,
    GROUP_CONCAT(DISTINCT(`genre`) SEPARATOR ',') AS Genre,GROUP_CONCAT(DISTINCT tbl_films.id SEPARATOR ',') AS filmid, GROUP_CONCAT(DISTINCT tbl_genre.id SEPARATOR ',')AS gr,  
    CONCAT(GROUP_CONCAT(DISTINCT tbl_realisateurs.prenom_realisateur 
    SEPARATOR ','), ' ', tbl_realisateurs.nom_realisateur) AS realisateur 
    FROM tbl_films
    INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
    INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
    INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
    INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur";
    $request .= ($order === 'ASC')? " GROUP BY titre ORDER BY tbl_films.annee_de_sortie ASC" : " GROUP BY titre ORDER BY tbl_films.annee_de_sortie DESC";
    $response = $bdd->prepare($request);
    $response->execute();
    return $response->fetchAll(PDO::FETCH_ASSOC);

}

function bdd_filmDetail($id = 1) {
    global $bdd;
    $request = "SELECT tbl_films.id as id, tbl_films.titre, tbl_films.description, tbl_films.annee_de_sortie,
    GROUP_CONCAT(DISTINCT tbl_acteurs.prenom_acteur,' ', tbl_acteurs.nom_acteur SEPARATOR ',') AS acteur,
    GROUP_CONCAT(DISTINCT tbl_acteurs.id_acteur SEPARATOR ',') AS actid, tbl_films.bande_annonce,
    GROUP_CONCAT(DISTINCT(`genre`) SEPARATOR ',') AS Genre, tbl_realisateurs.id_realisateur AS realid,
    CONCAT(GROUP_CONCAT(DISTINCT tbl_realisateurs.prenom_realisateur SEPARATOR ', '), ' ', tbl_realisateurs.nom_realisateur)
    AS realisateur
    FROM tbl_films
    INNER JOIN tbl_genre_films ON tbl_films.id = tbl_genre_films.id_films
    INNER JOIN tbl_genre ON tbl_genre.id = tbl_genre_films.id_genres
    INNER JOIN tbl_realisateurs_films ON tbl_films.id = tbl_realisateurs_films.id_films
    INNER JOIN tbl_realisateurs ON tbl_realisateurs_films.id_realisateurs = tbl_realisateurs.id_realisateur
    INNER JOIN tbl_films_acteurs ON tbl_films_acteurs.id_film = tbl_films.id
    INNER JOIN tbl_acteurs ON tbl_acteurs.id_acteur = tbl_films_acteurs.id_acteur
    WHERE tbl_films.id = :id
    GROUP BY titre ORDER BY tbl_films.id";
    
    $response = $bdd->prepare( $request );
    $response->bindParam(':id', $id, PDO::PARAM_INT);
    $response->execute();
    return $response->fetchAll(PDO::FETCH_ASSOC);
}

function bdd_filmGenre($id = 0, $order) {
    global $bdd;

    $request = "SELECT f.id, f.titre, f.description, f.annee_de_sortie,
    (SELECT GROUP_CONCAT(DISTINCT g.genre SEPARATOR ',')
                 FROM tbl_genre g inner JOIN tbl_genre_films as gf ON g.id = gf.id_genres
                 WHERE gf.id_films = f.id) AS genres,
    
    (SELECT GROUP_CONCAT(DISTINCT concat(r.nom_realisateur, ' ', r.prenom_realisateur) SEPARATOR ',')
                 FROM tbl_realisateurs as r inner JOIN tbl_realisateurs_films as rf ON r.id_realisateur = rf.id_realisateurs 
                 WHERE rf.id_films = f.id) AS realisateurs 
    
    from tbl_films as f 
    inner join tbl_genre_films as gf on gf.id_films = f.id 
    inner join tbl_genre as g on  g.id = gf.id_genres 
    inner join tbl_realisateurs_films as rf on rf.id_realisateurs = f.id_realisateurs 
    inner join tbl_realisateurs as r on r.id_realisateur = rf.id_realisateurs 
    
    where g.id = :id" ;
    $request .= ($order === 'ASC')? " group by f.id
    order by f.annee_de_sortie ASC" : " group by f.id
    order by f.annee_de_sortie DESC";
 
    $response = $bdd->prepare( $request );
    $response->bindParam(':id', $id, PDO::PARAM_INT);
    $response->execute();
    return $response->fetchAll(PDO::FETCH_ASSOC);
}
