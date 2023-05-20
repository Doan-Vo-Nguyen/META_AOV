<?php
session_start();
require 'connect.php';
if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    // check user
    $query_user = "SELECT user_name, user_pass FROM user WHERE user_name = '$username'";
    $result = mysqli_query($conn, $query_user);
    $row = mysqli_fetch_assoc($result);
    error_reporting(E_ERROR | E_PARSE);
    if ($username == $row['user_name'] && $password == $row['user_pass']) {
        $_SESSION['user'] = $row['user_name'];
        echo "<script>alert('Login successfully')</script>";
        header("Location: ../../5v5/Home.php");
        exit;
    } else {
        echo "<script>alert('Invalid email or password')</script>";
    }

    // check admin
    $query_admin = "SELECT admin_name, admin_pass FROM admin WHERE admin_name = '$username'";
    $result = mysqli_query($conn, $query_admin);
    $row = mysqli_fetch_assoc($result);
    error_reporting(E_ERROR | E_PARSE);
    if ($username == $row['admin_name'] && $password == $row['admin_pass']) {
        $_SESSION['admin'] = $row['admin_name'];
        echo "<script>alert('Login successfully')</script>";
        header("Location: ../../Admin/admin.php");
        exit;
    } else {
        echo "<script>alert('Invalid email or password')</script>";
    }
}