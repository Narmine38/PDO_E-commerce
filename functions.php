<?php

function formatPrice(int $param): void
{
    $param = $param / 100;
    echo number_format($param, 2) . "€";
}

function priceExcludingVAT(int $prixTTC, int $tva = 20): int
{
    return ($prixTTC) / (1 + $tva / 100);
}

function discountedPrice(int $prixTTC, int $discount): int
{
    return ($prixTTC) / (1 + $discount / 100);
}

function total($prix, $quantity){

    return $prix * $quantity;

}

function selectAllCustomers(PDO $mysqlConnection){
    $query = "SELECT * FROM customers";
    $result = $mysqlConnection->query($query);
    return $result->fetchAll(PDO::FETCH_ASSOC);
}

function displayItem(Item $product): void
{
    ?>
    <img class="" src="<?= $product->getImage() ?>" alt="livre">
    <h2> <?= $product->getName() ?> </h2>
    <span>Poids: <?= $product->getWeight() ?><br></span>
    <span>Prix: <?= $product->getPrice() ?><br></span>
    <span>Promotion: <?= $product->getDiscount() ?><br></span>

<?php }

function displayClientsList(clientsListe $clients): void
{
    foreach ($clients->customers as $client) {
        displayClient($client);
    }


}

function displayCatalogue(Catalogue $catalogue) : void{ ?>

    <?php  foreach ($catalogue->items as $item)  {
        displayItem($item);
    } ?>
<?php }

function displayProduts(ItemSpec $itemSpec){







}




