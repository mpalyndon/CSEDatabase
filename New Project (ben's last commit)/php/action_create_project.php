<?php

if (isset($_POST["managercode"]) && isset($_POST["projectmanager"]) && isset($_POST["description"])) {
    require_once "dbconn.php"; // Create Database connection for SQL Queries

    /****************************************************************
    *                          Projects
    ****************************************************************/


    $sql = "INSERT INTO projects (storeID, code, description, manager) VALUES(?,?,?,?);";

    $statement = mysqli_stmt_init($conn);
    mysqli_stmt_prepare($statement, $sql);

    $storeid = 1;

    // s = String, d = Decimal Number
    mysqli_stmt_bind_param($statement, 'dsss', 
        htmlspecialchars($storeid),
        htmlspecialchars($_POST["managercode"]),
        htmlspecialchars($_POST["description"]),
        htmlspecialchars($_POST["projectmanager"])
    );
    $id = -1;

    if (mysqli_stmt_execute($statement)) {
        $id = $conn->insert_id;
    } else {
        echo mysqli_error($conn);
        return;
    }

    mysqli_stmt_close($statement);


    /****************************************************************
    *                          Processed
    ****************************************************************/

    header("location: ../index.php"); // Redirect after processing
}