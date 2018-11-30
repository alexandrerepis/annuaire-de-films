<?php

$maxFilm = 12;

require_once 'vendor/autoload.php';
$loader = new Twig_Loader_Filesystem('vues');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));

require_once("modeles/film_modeles.php");

       
    function filmList() {
        global $twig, $base_url;
        $films = bdd_filmList();
        echo $twig->render('film.twig', array('films' => $films, "base_url" => $base_url));
    }

    function filmDetail() {
        global $twig, $id, $base_url;
        $films = bdd_filmDetail();
       
            if ($id !=0) {
                $details = bdd_filmDetail($id);
            } elseif ($id < 1 || $id > 12) {
                $details = bdd_filmDetail(1);
            }
        
        echo $twig->render('film.twig', array('details' => $details, "base_url" => $base_url));
    }

    function filmDateAsc() {
        global $twig, $base_url;
        $films = bdd_filmDateAsc();
        echo $twig->render('film.twig',array('films' => $films, "base_url" => $base_url));
    }

    function filmDateDesc() {
        global $twig, $base_url;
        $films = bdd_filmDateDesc();
        echo $twig->render('film.twig',array('films' => $films, "base_url" => $base_url));
    }

    function filmGenre() {
        global $twig, $id, $base_url, $genres;
        $films = bdd_filmGenre();
        $template = $twig->load('film.twig');
        
            if ($id !=0) {
                $genres = bdd_filmGenre($id);
            } elseif ($id < 1 || $id > 17) {
                $genres = bdd_filmList();
            }
        
       
        echo $twig->render('film.twig',array('genres' => $genres, "base_url" => $base_url));
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