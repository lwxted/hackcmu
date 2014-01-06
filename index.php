<?php
session_start();

$_SESSION['title'] = "CMU Eats";
$_SESSION['site-description'] = "An online database for CMU's food and restaurants";

$_SESSION['page-body'] = "map-view.php";

header("Location: pages/template.php"); 
?>