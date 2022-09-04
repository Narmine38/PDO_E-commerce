<?php
include 'database/database.php';
include 'class/Client.php';
include 'class/ClientListe.php';
include 'functions.php';
//////////////////////////
$database = databaseConnect();
$customer = selectAllCustomers( $database);
//////////////////////////////////////
$clients = array();
foreach ($customer as $customer) {
    $clients[] = new Client($customer);
}
///////////////////////////////////
$clientListe = new ClientsListe($clients);
displayClientsList($clientListe);


