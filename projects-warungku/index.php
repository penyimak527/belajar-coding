<?php
session_start();
//koneksi
$koneksi = new mysqli("localhost",'root','','warungku');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Warungku</title>
    <link rel="stylesheet" href="./admin/assets/css/admin.css">
    <link rel="shortcut icon" href="icon.png" type="png">
</head>

<body>
    <!-- navbar start -->
    <style>
        .nav{
           float: right;
           margin-top: -50px;
        }
        .logo h1{
            color: black;
            font-family: arial;
        }
        .logo h1:hover{
            color: grey;

        }
    </style>
    <div class="navbar">

        <nav class="navbar navbar-default">

            <div class="container">
                <div class="logo">              
                    <h1><img src="./icon.png" alt="" width="5%">Warungku</h1>
                </div>

                <ul class="nav navbar-nav" >
                    
                    <li><a href="keranjang.php">Keranjang</a></li>
                    <!-- jk sudah login mk ada sesion pelanggan -->
                    <?php if (isset($_SESSION["pelanggan"])): ?>
                        <li><a href="logout.php">Logout</a></li>
                        <!-- selain itu (blm login) atau (blm ada session pelanggan) -->
                    <?php else: ?>
                        <li><a href="login.php">Login</a></li>
                        <li><a href="register.php">daftar</a></li>

                    <?php endif; ?>
                    <li><a href="checkout.php">checkout</a></li>

                </ul>
            </div>
        </nav>
    </div>
    <!-- navbar end -->
    <section class="konten">
        <div class="container">
            <h1>Produk Terbaru</h1>
            <div class="row">
            <?php $ambil = $koneksi->query("SELECT * FROM produk");?>
            <?php while($perproduk = $ambil->fetch_assoc()){?>
            <div class="col-md-3" >
                    <div class="thumbnail">
                        <img src="/admin/foto-produk/<?php  echo $perproduk['foto_produk'];?>" alt="">
                        <div class="caption">
                            <h3><?php echo $perproduk['nama_produk'];?></h3>
                            <h5>Rp<?php echo number_format( $perproduk['harga_produk']);?></h5>
                            <a href="beli.php?id=<?php echo$perproduk['id_produk'];?>" class="btn btn-primary">Beli</a>
                        </div>
                    </div>             
                </div>
<?php }?>
    <video width="600" height="480" autoplay loop muted>
  <source src="toko.mp4" type="video/mp4">
  </video>
            </div>
        </div>
    </section>


    
</body>

</html>