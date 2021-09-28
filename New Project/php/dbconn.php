<?php

define("DB_HOST", "localhost"); // IP Address
define("DB_NAME", "csedatabase");
define("DB_USER", "cse_admin");
define("DB_PASS", "123");





/*

DON'T EDIT BELOW

*/


$conn = @mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

if (!$conn) {
    // Something went wrong...
    echo "Error: Unable to connect to database.<br>";
    echo "Debugging errno: " . mysqli_connect_errno() . "<br>";
    echo "Debugging error: " . mysqli_connect_error() . "<br>";
    exit;
}
