<?php 

    require_once 'vendor/autoload.php';
    $loader = new Twig_Loader_Filesystem('vue');
    $twig = new Twig_Environment($loader);


$requete = explode("/", trim($_SERVER['REQUEST_URI'], "/"));
$controller = (count($requete) === 1) ? "accueil" : $requete[1];
$action = (count($requete) < 3)? "list" : $requete[2];
$id = (count($requete) < 4) ? 0 : (int)$requete[3]; 

switch ($controller) {
    case 'films':
        require_once('controleurs/film_controleur.php');
        break;

    case 'date':
        require_once('controleurs/date_controleur.php');
        break;
    
    case 'genre':
        require_once('controleurs/genre_controleur.php');
        break;

    case 'realisateur':
        require_once('controleurs/realisateur_controleur.php');
        break;

    default:
        require_once('controleurs/film_controleur.php');
        break;
}