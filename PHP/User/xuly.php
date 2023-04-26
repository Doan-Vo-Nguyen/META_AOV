<?php
require '../connect.php';
session_start();
if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $query = "SELECT user_name, user_pass FROM `user` WHERE `user_name` = '$username'";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($result);
    if ($username == $row['user_name'] && $password == $row['user_pass']) {
        $_SESSION['user'] = $row['user_name'];
        echo "<script>alert('Login successfully')</script>";
        header("Location: ../Home.php");
        exit;
    } else {
        echo "<script>alert('Invalid email or password')</script>";
    }
}
