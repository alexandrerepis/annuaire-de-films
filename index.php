<?php 
$param = explode('/',$_SERVER['REQUEST_URI']);
$lien = $param[2];
if(isset($param[3])){
    $action = $param[3];
}

switch ($lien) {
    case 'films':
        require('controleurs/film_controleur.php');
        break;

    case 'date':
        require('controleurs/date_controleur.php');
        break;
    
    case 'genre':
        require('controleurs/genre_controleur.php');
        break;

    case 'realisateur':
        require('controleurs/realisateur_controleur.php');
        break;

    default:
    require('movies.php');
        break;
}

