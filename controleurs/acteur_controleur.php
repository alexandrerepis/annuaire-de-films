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
        echo $template->render(array('acteurs' => $acteurs, "base_url" => $base_url));
    }

    function actDetail() {
        global $twig;
        global $id;
        $acteurs = bdd_actDetail();
        
        $template = $twig->load('acteur.twig');
        for ($i = 0; $i < 45; $i++) {
            if ($id === $i) {
                $details = bdd_actDetail($i);
            } elseif ($id < 1 || $id > 44) {
                $details = bdd_actDetail(1);
            }
        }
        echo $template->render(array('details' => $details, "base_url" => $base_url));

    }
    
switch ($action) {
    case 'list':
    actList();
        break;

    case 'detail':
        actDetail();
        break;
    
    default:
        actlList();
        break;
}
    