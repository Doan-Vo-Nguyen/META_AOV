<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../../../../Images/Icon-Logo/Logo-team.png" type="image/x-icon">
    <title>Login</title>
    <link rel="stylesheet" href="../Login/Login.css">

<body>
    <div class="wrapper">
        <div class="form-box login">
            <h2>Login</h2>
            <form action="../xuly.php" method="post">
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="person-circle"></ion-icon>
                    </span>
                    <input class="email" type="email" name="email" required value="<?php if(isset($_COOKIE['email'])) { echo $_COOKIE['
                    email'];};?>">
                    <label for="email">Email</label>
                </div>
                <div class="input-box">
                    <span class="icon" id="lock">
                        <ion-icon name="lock-closed"></ion-icon>
                    </span>
                    <input class="password" type="password" name="password" required value="<?php if(isset($_COOKIE['password'])) { echo $_COOKIE['
                    password'];};?>">
                    <label for="password">Password</label>
                </div>
                <div class="remember">
                    <label><input type="checkbox" name="remember-checkbox" value="<?php if(isset($_COOKIE['remember'])) { echo
                    "checked";}?>">Remember me</label>
                    <a href="reset-pass-main.php">Forgot Password</a>
                </div>
                <button type="submit" name="submit" class="btn-submit">Login</button>
                <div class="login-reg">
                    <p>Dont' have an account?
                        <a href="../Register/Register.php" class="reg-link">Register</a>
                    </p>
                </div>
                <div class="home-back">
                    <a href="../../5v5/Home.php">Back to Home</a>
                </div>
            </form>
        </div>
    </div>
    <script src="Login.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>

</html>