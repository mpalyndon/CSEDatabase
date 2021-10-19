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

</body>
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}


h1 {
    font-size: 1.75em;
    font-weight: 900;
    color: #0a0918;
}

h2 {
    font-size: 1.25em;
    font-weight: 900;
    color: #0a0918;
}

input[type=submit] {
  width: 40%;
  background-color: #ffa500;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: 50px;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>    
<h1>
<body style="background-color:yellow;">

<h1>Login Form</h1>

<div>
  <form action="/action_page.php">
  <br> 
  <label for="fname">User Name:</label>
    <br>

    <input type="text" id="fname" name="firstname" placeholder="Username..">
    <br>
    <br>
    <label for="lname">Password:</label>
    <br>
    <input type="password" id="lname" name="lastname" placeholder="Password..">

    <br>
    <input type="submit" value="Submit">
    <br>
    <br>
  </form>
</div>

</body>
</html>
        </h1>
</body>
</html>
