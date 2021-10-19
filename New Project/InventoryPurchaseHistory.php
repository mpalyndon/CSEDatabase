<?php require_once "components/layout_top.php"; ?>

<div>
    <h1 class="subheader">CSE | Inventory Purchase History Reports</h1>
    <p>Select the start and end date:<p>

    <p>Start date:   <input type="date" id="datemax" name="datemax" max="1979-12-31"><p>
    <p>End date:     <input type="date" id="datemax" name="datemax" max="1979-12-31"><p>

    <label for="fname">SearchString:</label>
    <input type="text" id="fname" name="fname">
    <br>
    <br>
    <a class="primary-button" >Search</a>
        <a class="primary-button" >Clear</a> 
        <a class="primary-button" href="/index.php">Home</a></h2>
    <?php require_once "components/layout_bottom.php"; ?>