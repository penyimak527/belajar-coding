<?php
session_start();
//koneksi
$koneksi = new mysqli("localhost", 'root', '', 'warungku');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login pelanggan</title>
    <link rel="stylesheet" href="admin/assets/css/admin.css">
</head>

<body>

    <!-- navbar start -->
    <?php 
include "menu.php";
?>
    <!-- navbar end -->
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="penel-title">Login Pelanggan</h3>
                    </div>
                    <div class="panel-body">
                        <form  method="post">
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="text" name="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Password</label>
                                <input type="password" name="password" class="form-control">
                            </div>
                            <button class="btn btn-primary" name="login">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php
    //jk logimtombol maka
    if (isset($_POST["login"])) {
        $email = $_POST["email"];
        $password = $_POST["password"];
        //query cek aku db pelanggan
        $ambil = $koneksi->query("SELECT * FROM pelanggan
        WHERE email_pelanggan='$email' AND password_pelanggan='$password'");

        //ngitung akun yang terambil
        $akunhitung = $ambil->num_rows;

        //jk 1 akun yg cocok mk boleh login
        if ($akunhitung == 1) { {
                //anda sukses login
                $akun = $ambil->fetch_assoc();
                // tersimpan di session pelanggan
                $_SESSION["pelanggan"] = $akun;
                echo "<script>alert('anda sukses login');</script>";
                echo "<script>location='checkout.php';</script>";
            }
        } else {
            echo "<script>alert('anda gagal login,periksa akun anda');</script>";
            echo "<script>location='login.php'</script>";
        }
    }
    ?>
    
</body>

</html>