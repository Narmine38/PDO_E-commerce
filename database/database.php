<?php
function databaseConnect(){
    return new PDO(
        'mysql:host=localhost;dbname=ecommerce_php;charset=utf8',
        'cedric',
        '0818'
    );
}

function selectAllProducts(PDO $mysqlConnection): array {
    $query = "SELECT * FROM products";
    $result = $mysqlConnection->query($query);
    return $result->fetchAll();
}
