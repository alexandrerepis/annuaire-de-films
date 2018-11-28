<?php

require_once 'vendor/autoload.php';
$loader = new Twig_Loader_Filesystem('vues');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));

require_once("modeles/acteur_modeles.php");

   
    
    function actList() {
        global $twig;
        $acteurs = bdd_actList();
        // var_dump($realisateurs);
        $template = $twig->load('acteur.twig');
        echo $template->render(array('acteurs' => $acteurs));
    }

    actList();