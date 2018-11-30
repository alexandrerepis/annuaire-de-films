<?php



require_once("modeles/genre_modeles.php");

   
    
    function genreList() {
        global $twig;
        $genres = bdd_genreList();
        echo $twig->render('genre.twig',array('genres' => $genres, "base_url" => $base_url));
    }

    function genreDetail() {
        global $twig;
        global $id;
        $genres = bdd_genreDetail();
        
            if ($id !=0){
                $details = bdd_genreDetail($id);
            } elseif ($id < 1 || $id > 16) {
                $details = bdd_genreDetail(1);
            }
        
        echo $twig->render('genre.twig',array('details' => $details, "base_url" => $base_url));

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


