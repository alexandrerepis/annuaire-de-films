<?php
require 'movies.php';

$request = 'SELECT * FROM tbl_films ORDER BY annee_de_sortie';
openBDD ($request);
