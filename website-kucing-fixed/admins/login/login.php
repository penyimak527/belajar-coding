<?php
session_start();    //memulai sesi untuk menyimpan
require "../includes/koneksi1.php";

if($_SERVER['REQUEST_METHOD'] == "POST"){   //memeriksa post atau ga
$username = $_POST['nama'];   //mengambil  mengambil dari tabel
$password = $_POST['pass'];       //mengambil

//mencegah sql injection
$stmt = $conn ->prepare("SELECT * FROM admins WHERE nama = ?");    //menyiapkan query
$stmt -> bind_param("s",$username);   //mengikat parameter

$stmt->execute();     //menjalankan query
$result = $stmt ->get_result();   //mengambil hasil

if($result ->num_rows > 0 ){    //memeriksa apakah pengguna ditemuka
$user = $result ->fetch_assoc();  //mengambil hasil data data

//verifikasi password
if(password_verify($password, $user['password']) ) {   //memeriksa kecocokan pass

  //login sukses
  $_SESSION['id_admin'] = $user['id_admin'];    //menyimpan id 
  $_SESSION['nama'] = $user['nama'];      //menyimpan nama
  header("Location: ../index.php");   //arah ke halaman index tujuan
  exit();

}else{
  $error = "password salah !";    //jika pw tidak cocok
}

}else{
  $error = "pengguna tidak ditemukan";
}
}


?>

<!DOCTYPE html>
<html>
<head>
  <title>Admin Login</title>
  <link rel="stylesheet" href="../asets/style.css">
</head>
<body>
  <div class="container">
    <div class="login-form">
      <h2>Admin Login</h2>
      <form action="login.php" method="post">
        <label for="username">Username:</label>
        <input type="text" id="nama" name="nama"><br><br>
        <label for="password">Password:</label>
        <input type="password" id="pass" name="pass"><br><br>
        <input type="submit" value="Login">
      </form>
      <?php 
      if(isset($error)) echo "<p>$error</p>";     //tampil error jika error
      ?>
    </div>
  </div>
</body>
</html>
<!-- <p>username untuk masuk ke dalam admin : zaki</p>
<p>password untuk loginnya adalah : moca</p> -->