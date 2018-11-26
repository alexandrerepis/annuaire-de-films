<?php

function openBDD ($sql) {


$username = 'root';
$password = 'online@2017';
$database ='DB_FILMS';
$host = 'localhost';

    try{

        $bdd = new PDO('mysql:host='.$host.';dbname='.$database.';charset=utf8',$username , $password);

    }catch (Exception $e){

        die('Erreur : ' . $e->getMessage());

    }
    
    $response = $bdd->prepare( $sql );
    // $response->bindParam(':num', $num, PDO::PARAM_INT)
    $response->execute();
    $list = $response->fetchAll(PDO::FETCH_ASSOC);

    // foreach( $list as $row ){
    //     echo $row['titre']. $row['annee_de_sortie'] . "<br/>";
    // }

}


   