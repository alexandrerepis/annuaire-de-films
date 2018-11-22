<?php
$username = 'root';
$password = 'online@2017';
$database ='formation';
$host = 'localhost';

    try{

        $bdd = new PDO('mysql:host='.$host.';dbname='.$database.';charset=utf8',$username , $password);

    }catch (Exception $e){

        die('Erreur : ' . $e->getMessage());

    }
    
    $sql = 'select * from Tab WHERE id=:num';
    $response = $bdd->prepare( $sql );
    // $response->bindParam(':num', $num, PDO::PARAM_INT)
    $response->execute();
    $list =     $response->fetchAll(PDO::FETCH_ASSOC);

    foreach( $list as $row ){
        echo $row['id'].'<br/>';
    }