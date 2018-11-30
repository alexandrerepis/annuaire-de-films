<?php 

require_once 'vendor/autoload.php';
$loader = new Twig_Loader_Filesystem('vues');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));
// $index = $twig->load('accueil.twig');



$requete = explode("/", trim($_SERVER['REQUEST_URI'], "/"));
$controller = (count($requete) === 1) ? "films" : $requete[1];
$action = (count($requete) < 3)? "list" : $requete[2];
$id = (count($requete) < 4) ? 0 : (int)$requete[3]; 
$tri = (count($requete) < 6) ? 0 : (int)$requete[5]; 

switch ($controller) {
    case 'films':
        require_once('controleurs/film_controleur.php');
         break;

    case 'dates':
        require_once('controleurs/date_controleur.php');
        break;
    
    case 'genres':
        require_once('controleurs/genre_controleur.php');
        break;

    case 'realisateurs':
        require_once('controleurs/realisateur_controleur.php');
        break;

    case 'acteurs':
        require_once('controleurs/acteur_controleur.php');
        break;

    default:
        require_once('controleurs/film_controleur.php');
        break;
}

