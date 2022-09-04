<?php
class Client{
    public int $id;
    public string $first_name, $last_name, $address, $postal_code, $city;

    function __construct(array $customers){
        $this->id = $customers["id"];
        $this->first_name = $customers["first_name"];
        $this->last_name = $customers["last_name"];
        $this->address = $customers["address"];
        $this->postal_code = $customers["postal_code"];
        $this->city = $customers["city"];
    }
}

function displayClient(Client $client): void
{
    ?>
    <div class="card" style="width: 18rem;">
        <div class="card-body">
            <h3 class="card-title"><?php echo $client->first_name ?></h3>
            <p class="card-text"><?php echo $client->last_name ?></p>
            <p class="card-text"><?php echo $client->address ?></p>
            <p class="card-text"><?php echo $client->city ?></p>
            <p class="card-text"><?php echo $client->postal_code ?></p>
        </div>
    </div>
<?php }


