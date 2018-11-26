<?php


require_once("modeles/film_modeles");


function showList () {
    echo $template->render(array('the' => 'variables', 'go' => 'here'));
}