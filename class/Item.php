<?php

// la class Item correspond au squelette des objet de ma database
class Item
{
    private ?string $image, $description;
    private ?string $name;
    private ?int $price, $weight, $available, $category_id, $quantity;
    private ?int $discount;

///////////////////////////////////
    public function getName()
    {
        return $this->name;
    }

    public function getImage()
    {
        return $this->image;
    }

    //public function getAuthor()
   // {
   ///     return $this->author;
   // }

    public function getDescription()
    {
        return $this->description;
    }

    public function getPrice()
    {
        return $this->price;
    }

    public function getWeight()
    {
        return $this->weight;
    }

    public function getAvailable()
    {
        return $this->available;
    }

    public function getCategory_id()
    {
        return $this->category_id;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getDiscount()
    {
        return $this->discount;
    }

    public function getQuantity()
    {
        return $this->quantity;
    }

///////////////////////////////////

    public function __construct(array $product)
    {
        $this->name = $product['name'];
        $this->image = $product['image'];
       // $this->author = $product['author'];
        $this->price = $product['price'];
        $this->weight = $product['weight'];
        $this->available = $product['available'];
        $this->category_id = $product['category_id'];
        $this->quantity = $product['quantity'];
        $this->discount = $product['discount'];
        $this->description = $product['description'];
        $this->id = $product['id'];
    }
}

///////////////////////////////////


