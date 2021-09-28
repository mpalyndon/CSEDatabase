<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
<meta charset="utf-8" />
    <title>CSE Store</title>
    <meta charset="UTF-8" />
    <meta name="author" content="Keloth Justyn Dylan, Ben McIntyre, " /> <!-- add group members -->
    <meta name="description" content="CSE Datbase" />

    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"> <!-- Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"> <!-- Font -->

    <link rel="stylesheet" href="../styles/style.css"/>
    <link rel="icon" href="../images/favicon.png">
</head>
<body>
    <?php require_once "menu.php"; ?>

    <div style="display: flex;padding-top: 60px;">
        <?php require_once "sidemenu.php"; ?>

        <div id="content" style="flex-grow: 1; margin-left: 250px; overflow-y: hidden;">