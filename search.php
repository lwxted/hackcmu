<?php
session_start();

$_SESSION['title'] = "CMU Eats";
$_SESSION['site-description'] = "An online database for CMU's food and restaurants";

$_SESSION['page-body'] = "food-results-view.php?term=" . $_GET['term'];

header("Location: pages/template.php"); 
?>