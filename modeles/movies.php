<?php

$base_url = (strstr($_SERVER["HTTP_HOST"],"8080")=== false)?"https://abdelkrimn.promo-23.codeur.online/annuaire-de-films/":"https://abdelkrimn.promo-23.codeur.online:8080/annuaire-de-films/";

$username = 'abdelkrimn';
$password = 'qyyvy7F9wjO+nA==';
$database ='abdelkrimn_film';
$host = 'localhost';

    try{

        $bdd = new PDO('mysql:host='.$host.';dbname='.$database.';charset=utf8',$username , $password);

    }catch (Exception $e){

        die('Erreur : ' . $e->getMessage());

    }
