<?php
session_start();

$_SESSION['title'] = "About";
$_SESSION['site-description'] = "An online database for CMU's food and restaurants";

$_SESSION['page-body'] = "about-view.php";

header("Location: pages/template.php"); 
?>