<?php

class Product {
    public $id = -1;
    public $name = "Unknown";

    function __construct($row, $conn) {
        $this->id = $row["productID"];
        $this->name = $row["name"];
    }

    function CreateListingHTML() {
        echo '
        <div class="product-listing">
            <a href="product.php?id='. $this->id .'">

            </a>
        </div>';
    }
}

function PopulateList($conn, $category, $limit, $exclude) {
    if ($category == null) {
        $sql = "SELECT productID, name, summary, description, category, price, discount FROM Product LIMIT $limit;";
    }
    else {
        if ($exclude == null) {
            $sql = "SELECT productID, name, summary, description, category, price, discount FROM Product WHERE category = '$category' LIMIT $limit;";
        }
        else {
            $sql = "SELECT productID, name, summary, description, category, price, discount FROM Product WHERE category = '$category' AND productID != $exclude LIMIT $limit;";
        }
        
    }

    $result = mysqli_query($conn, $sql);
    if ($result) {
        if (mysqli_num_rows($result) > 0) {
            echo '<div id="grid">';
            while ($row = mysqli_fetch_assoc($result)) {
                $product = new Product($row,$conn);
    
                $product->CreateListingHTML();
            }
            echo "</div>";
        }

        mysqli_free_result($result);
    }
}