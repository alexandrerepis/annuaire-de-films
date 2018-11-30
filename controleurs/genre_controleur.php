<?php

require_once 'vendor/autoload.php';
$loader = new Twig_Loader_Filesystem('vues');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));

require_once("modeles/genre_modeles.php");

   
    
    function genreList() {
        global $twig;
        $genres = bdd_genreList();
        // var_dump($genres);
        $template = $twig->load('genre.twig');
        echo $template->render(array('genres' => $genres, "base_url" => $base_url));
    }

    function genreDetail() {
        global $twig;
        global $id;
        $genres = bdd_genreDetail();
        
        $template = $twig->load('genre.twig');
        for ($i = 0; $i < 17; $i++) {
            if ($id === $i) {
                $details = bdd_genreDetail($i);
            } elseif ($id < 1 || $id > 16) {
                $details = bdd_genreDetail(1);
            }
        }
        echo $template->render(array('details' => $details, "base_url" => $base_url));

    }
    
switch ($action) {
    case 'list':
  genreList();
        break;

    case 'detail':
        genreDetail();
        break;
    
    default:
        genrelList();
        break;
}


