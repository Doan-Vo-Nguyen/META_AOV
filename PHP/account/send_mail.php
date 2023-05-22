<?php
require 'connect.php';
if(isset($_POST['submit-feedback'])) {
    $name = $_POST['user_name'];
    $email = $_POST['user_email'];
    $subject = $_POST['subject'];
    $message = $_POST['feedback-text'];
    $sql = "INSERT INTO feedback (user_name, user_email, subject, message) VALUES ('$name', '$email', '$subject', '$message')";
    $result = mysqli_query($conn, $sql);
    if(!$result) {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    $to = "wwwdoanvonguyen@gmail.com";
    $subject = "Feedback";
    $message = "Thanks for your feedback, $name. We will contact you soon.";
    $from = $name;
    $header = "From:" . $from;
    mail($to, $subject, $message, $header);
}