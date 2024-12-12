<?php

// echo "<pre>";
// print_r($sql);
// echo "</pre>";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Detail Produk</title>
</head>
<body>
    <style>
        .content{
            display:flex;
        }
    </style>
    <?php
require "landingpage/includes/koneksi.php";
$idproduk = $_GET['id_produk'];
$sql = "SELECT * FROM list_content WHERE id_produk = '$idproduk'";
$pisah = $conn -> query($sql);
$data = $pisah -> fetch_assoc();
    ?>  
     <h1>Detail Produk</h1>
        <center>
            <h2>Nama Produk : <?php echo $data['judul_produk'];?></h2>
        </center>
    <div class="content">
        <img src="landingpage/asets/img/menu-kucing/<?php echo $data['img'];?>" alt="test" width="350px">
        <p>Produk ini adalah <?php echo $data['judul_produk'];?>.<?php echo $data['deskripsi'];?></p>
        
        
        
    </div>
</body>
</html>