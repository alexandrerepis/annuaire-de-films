<?php


require_once("modeles/realisateur_modeles.php");

   
    
    function realList() {
        global $twig, $base_url;
        $realisateurs = bdd_realList();
        echo $twig->render('realisateur.twig',array('realisateurs' => $realisateurs, "base_url" => $base_url));
    }

    function realDetail() {
        global  $twig, $id, $base_url;
        $details = bdd_realDetail();
        
        $template = $twig->load('realisateur.twig');
        
            if ($id !=0) {
                $details = bdd_realDetail($id);
            } elseif ($id < 1 || $id > 9) {
                $details = bdd_realDetail(1);
              
              
            }
        echo $twig->render('realisateur.twig',array('details' => $details, "base_url" => $base_url));

    }
    
switch ($action) {
    case 'list':
        realList();
        break;

    case 'detail':
        realDetail();
        break;
    
    default:
        realList();
        break;
}
