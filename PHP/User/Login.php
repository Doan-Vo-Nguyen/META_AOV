<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="Login.css">

<body>
    <div class="wrapper">
        <div class="form-box login">
            <h2>Login</h2>
            <form action="#" method="post">
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="person-circle"></ion-icon>
                    </span>
                    <input class="username" type="text" name="username">
                    <label for="username">Username</label>
                    <p class="valid vl-username">Invalid username</p>
                </div>
                <div class="input-box">
                    <span class="icon" id="lock">
                        <ion-icon name="lock-closed"></ion-icon>
                    </span>
                    <input class="password" type="password" name="password">
                    <label for=" password">Password</label>
                    <p class="valid vl-password">Invalid password</p>
                </div>
                <div class="remember-pass">
                    <label><input type="checkbox">Remember me</label>
                    <a href="#">Forgot Password</a>
                </div>
                <button type="submit" name="submit" class="btn-submit">Login</button>
                <div class="login-reg">
                    <p>Dont' have an account?
                        <a href="../User/Register.php" class="reg-link">Register</a>
                    </p>
                </div>
                <div class="home-back">
                    <a href="../5v5/Home.php">Back to Home</a>
                </div>
            </form>
        </div>
    </div>
    <script src="Login.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <?php
    include 'xuly.php';
    ?>
</body>

</html>