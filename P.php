<?php
    include 'config.php';

error_reporting(0);

session_start();

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $sql = "SELECT * FROM login WHERE username='$username' AND password='$password'";
    $result = mysqli_query($conn, $sql);
    if ($result->num_rows > 0) {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['username'] = $row['username'];
        header("Location: konsumen.php");
    } else {
        echo "<script>alert('Username atau password Anda salah. Silahkan coba lagi!')</script>";
    }
}

?>
<!DOCTYPE html>
<html>
<head>
    <title>SISTEM INFORMASI LAUNDRY NIKITA</title>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <script type="text/javascript" src="assets/js/jquery.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
</head>
<body style="background: #f0f0f0">
    <br/>
    <br/>
    <center>
        <h2>SISTEM INFORMASI LAUNDRY NIKITA</h2>
    </center>
    <br/>
    <br/>

    <div class="container">
        <div class="col-md-4 col-md-offset-4">
        <link rel="stylesheet" type="text/css" href="style.css">
            
            <form action="login.php" method="post">
                <div class="panel">
                    <br/>
                    <div class="panel-body">
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" class="form-control" name="username">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password">
                        </div>  

                        <input type="submit" class="btn btn-primary" value="Log In">                
                    </div>
                    <br/>
                </div>
            </form>

        </div>
    </div>
</body>
</html>