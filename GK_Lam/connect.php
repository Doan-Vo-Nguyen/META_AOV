<?php

$servername = "localhost";
$username = "root";
$password = "Vonguyen123@";
$dbname = "test";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname) or die("Không thể kết nối đến database");

mysqli_select_db($conn, $dbname);

mysqli_query($conn, "SET NAMES 'utf8'");
