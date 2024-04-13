<?php include ("koneksi.php"); ?>
<!DOCTYPE html>
<head>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="style.css">
 
</head>

<div class="wrapper">
  <form class="login" action="koneksi.php" method="POST">

    <body class="body">
      <p class="title">Log in</p>
      <form action="koneksi.php" method="post">
      <input type="text" placeholder="Nama" autofocus />
      <i class="fa fa-user"></i>
      <input type="text" placeholder="Kelas" />
      <i class="fa fa-key"></i>
      <input type="text" placeholder="Jurusan" autofocus />
      <i class="fa fa-user"></i>
      <input type="text" placeholder="Tempat" />
      <i class="fa fa-key"></i>
      <a href="#">Masukkan Identitas Anda</a>
      <button>
        <i class="spinner"></i>
        <span class="state">Log in</span>
      </button>
    </body>
  </form>
  <p class="pe"><a target="blank" href="http://SmakensaGo/">SmakensaGo</a> By: X RPL</p>
</div>