<?php
session_start();

$_SESSION['title'] = "CMU Eats";
$_SESSION['site-description'] = "An online database for CMU's food and restaurants";

$_SESSION['page-body'] = "restaurant_view.php?name=" . $_GET['name'];

header("Location: pages/template.php"); 
?>