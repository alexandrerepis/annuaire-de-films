<?php

require_once 'vendor/autoload.php';
$loader = new Twig_Loader_Filesystem('vues');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));

require_once("modeles/film_modeles.php");

   
    
    function filmList() {
        global $twig;
        $films = bdd_filmList();
        // var_dump($films);
        $template = $twig->load('film.twig');
        echo $template->render(array('films' => $films));
    }

    function filmDetail() {
        global $twig;
        global $id;
        $films = bdd_filmDetail();
        // var_dump($films);
        $template = $twig->load('film.twig');
        for ($i = 0; $i < 13; $i++) {
            if ($id === $i) {
                $details = bdd_filmDetail($i);
            } elseif ($id < 1 || $id > 12) {
                $details = bdd_filmDetail(1);
            }
        }
        echo $template->render(array('details' => $details));

    }
    
switch ($action) {
    case 'list':
        filmList();
        break;

    case 'detail':
        filmDetail();
        break;
    
    default:
        filmList();
        break;
}