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
        echo $template->render(array('genres' => $genres));
    }

    genreList();

