<?php

require_once 'vendor/autoload.php';
$loader = new Twig_Loader_Filesystem('vues');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));

require_once("modeles/acteur_modeles.php");

   
    
    function actList() {
        global $twig, $base_url;
        $acteurs = bdd_actList();
        // var_dump($realisateurs);
        $template = $twig->load('acteur.twig');
        echo $template->render(array('acteurs' => $acteurs, "base_url" => $base_url));
    }

    function actDetail() {
        global  $twig, $id, $base_url;
        $acteurs = bdd_actDetail();
        
       
            if ($id != 0) {
                $details = bdd_actDetail($id);
            } elseif ($id < 1 || $id > 44) {
                $details = bdd_actDetail(1);
            
        }
        echo $twig->render("acteur.twig",array('details' => $details, "base_url" => $base_url));

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
    