<?php 
$param = explode('/',$_SERVER['REQUEST_URI']);
$lien = $param[2];
$action = $param[3];

switch ($lien) {
    case 'films':
        require('film_controleur.php');
        break;

    case 'date':
        require('date_controleur.php');
        break;
    
    case 'genre':
        require('genre_controleur.php');
        break;

    case 'realisateur':
        require('realisateur_controleur.php');
        break;

    default:
    require('accueil_controleur.php');
        break;
}