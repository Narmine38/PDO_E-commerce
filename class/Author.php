<?php

class Author {
    protected array $product_author;

    public function __construct($database) {
        $product_authorStatement = $database->prepare('SELECT * FROM author');

        $product_authorStatement->execute();
        $this->product_author = $product_authorStatement->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getProductauthor()
    {
        return $this->product_author;
    }
}