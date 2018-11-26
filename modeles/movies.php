<?php


$username = 'root';
$password = 'online@2017';
$database ='DB_FILMS';
$host = 'localhost';

    try{

        $bdd = new PDO('mysql:host='.$host.';dbname='.$database.';charset=utf8',$username , $password);

    }catch (Exception $e){

        die('Erreur : ' . $e->getMessage());

    }



   