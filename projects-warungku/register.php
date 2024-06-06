<?php
include "koneksi.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register</title>
  <link rel="stylesheet" href="./admin/assets/css/admin.css">
</head>

<body>
  <!-- navbar   -->
  <?php include "menu.php"; ?>
  <!-- end -->
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">Daftar Pelanggan</h3>
          </div>
          <div class="panel-body">
            <form method="post">
              <div class="form-group">
                <label for="" class="control-label col-md-3">Nama</label>
                <div class="col-md-7">
                  <input type="text" class="form-control" name="nama" required>
                </div>
              </div>
              <div class="form-group">
                <label for="" class="control-label col-md-3">Email</label>
                <div class="col-md-7">
                  <input type="email" class="form-control" name="email" required>
                </div>
              </div>
              <div class="form-group">
                <label for="" class="control-label col-md-3">Password</label>
                <div class="col-md-7">
                  <input type="password" class="form-control" name="password" required>
                </div>
              </div>
              <div class="form-group">
                <label for="" class="control-label col-md-3">Alamat</label>
                <div class="col-md-7">
                  <textarea name="alamat" id="" class="form-control" required></textarea>
                </div>
              </div>
              <div class="form-group">
                <label for="" class="control-label col-md-3">No telepon</label>
                <div class="col-md-7">
                  <input type="text" class="form-control" name="telepon" required>
                </div>
              </div>
              <div class="form-group">
                <div class="col-md-7 col-md-offset-3">
                  <button type="submit" class="btn btn-primary" name="daftar">Daftar</button>
                </div>
              </div>

            </form>
            <?php
            //jk ada tbl daftar 
            if (isset($_POST["daftar"])) {
              //mengambil isi dari form
            
              $nama = $_POST["nama"];
              $email = $_POST["email"];
              $password = $_POST["password"];
              $alamat = $_POST["alamat"];
              $telepon = $_POST["telepon"];

              // cek apakah email sudah ada
              $ambil = $koneksi->query("SELECT * FROM pelanggan WHERE email_pelanggan='$email'");
              $yangcocok = $ambil->num_rows;
              if ($yangcocok == 1) {
                echo "<script>alert('daftar akun gagal,email sudah digunakan ');</script>";
                echo "<script>location='register.php';</script>";
              } else {
                //insert ke tabel pelanggan
                $koneksi->query("INSERT INTO pelanggan (email_pelanggan, password_pelanggan, nama_pelanggan, telepon_pelanggan, alamat_pelanggan)
    VALUES ('$email','$password','$nama','$telepon','$alamat')");
      echo "<script>alert('daftar akun berhasil,silahkan login ');</script>";
      echo "<script>location='login.php';</script>";
              }
            }

            ?>

          </div>
        </div>
      </div>
    </div>
  </div>
  
</body>

</html>