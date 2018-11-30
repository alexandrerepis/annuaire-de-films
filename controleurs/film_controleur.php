<?php

require_once 'vendor/autoload.php';
$loader = new Twig_Loader_Filesystem('vues');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));

require_once("modeles/film_modeles.php");

       
    function filmList() {
        global $twig, $base_url;
        $films = bdd_filmList();
        // var_dump($films);
        $template = $twig->load('film.twig');
        echo $template->render(array('films' => $films, "base_url" => $base_url));
    }

    function filmDetail() {
        global $twig, $id, $base_url;
        $films = bdd_filmDetail();
        $template = $twig->load('film.twig');
        for ($i = 0; $i < 13; $i++) {
            if ($id === $i) {
                $details = bdd_filmDetail($i);
            } elseif ($id < 1 || $id > 12) {
                $details = bdd_filmDetail(1);
            }
        }
        echo $template->render(array('details' => $details, "base_url" => $base_url));
    }

    function filmDateAsc() {
        global $twig, $base_url;
        $films = bdd_filmDateAsc();
        $template = $twig->load('film.twig');
        echo $template->render(array('films' => $films, "base_url" => $base_url));
    }

    function filmDateDesc() {
        global $twig, $base_url;
        $films = bdd_filmDateDesc();
        $template = $twig->load('film.twig');
        echo $template->render(array('films' => $films, "base_url" => $base_url));
    }

    function filmGenre() {
        global $twig, $id, $base_url, $genres;
        $films = bdd_filmGenre();
        $template = $twig->load('film.twig');
        for ($j = 0; $j < 18; $j++) {
            if ($id === $j) {
                $genres = bdd_filmGenre($j);
            } elseif ($id < 1 || $id > 17) {
                $genres = bdd_filmList();
            }
        }
        // echo $genres !== "" ?: "Il n'y a pas de films de ce genre";
        echo $template->render(array('genres' => $genres, "base_url" => $base_url));
    }

    
switch ($action) {
    case 'list':
        filmList();
        break;

    case 'detail':
        filmDetail();
        break;
    
    case 'genre':
        // filmDateAsc();
        filmGenre();
        break;

    case '0':
        // filmDateDesc();
        break;

    default:
        filmList();
        break;
}