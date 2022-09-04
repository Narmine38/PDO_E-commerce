<?php
include 'database/database.php';
include 'class/Item.php';
include 'class/Catalogue.php';
include 'functions.php';
////////////////////////////
$database = databaseConnect();
$products = selectAllProducts($database);
//////////////////////
$items = array();
foreach($products as $product){
    $items[] = new Item($product);
}
//////////////////////////////
$catalogue = new Catalogue($items);
displayCatalogue($catalogue);














