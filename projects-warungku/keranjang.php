<?php
session_start();
//mendapatkan id produk sesuai

//mengambil data produk

echo "<pre>";
print_r($_SESSION['keranjang']);
echo "</pre>";

$koneksi = new mysqli("localhost", "root", "", "warungku");

//jk tabel checkout habis
if (empty($_SESSION["keranjang"])) {
    echo "<script>alert('Keranjang Kosong');</script>";
    echo "<script>location='index.php';</script>";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>keranjang belanja</title>
    <link rel="stylesheet" href="./admin/assets/css/admin.css">
</head>

<body>
    <!-- navbar start -->
    <?php
    include "menu.php";
    ?>
    <!-- navbar end -->
    <section class="konten">
        <div class="container">
            <h1>keranjang belanja</h1>
            <hr>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Produk</th>
                        <th>Harga</th>
                        <th>Jumlah</th>
                        <th>Subharga</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $nomor = 1; ?>
                    <?php foreach ($_SESSION["keranjang"] as $id_produk => $jumlah): ?>
                        <!-- tampil produk berdasar id_produk -->
                        <?php $ambil = $koneksi->query("SELECT * FROM produk WHERE id_produk='$id_produk'"); ?>
                        <?php $pecah = $ambil->fetch_assoc();
                        $subharga = $pecah["harga_produk"] * $jumlah;
                        echo "<pre>";
                        print_r($pecah);
                        echo "</pre>";
                        ?>
                        <tr>
                            <td><?php echo $nomor; ?></td>
                            <td><?php echo $pecah["nama_produk"]; ?></td>
                            <td>Rp.<?php echo number_format($pecah["harga_produk"]); ?></td>
                            <td><?php echo $jumlah; ?></td>
                            <td><?php echo number_format($subharga); ?></td>
                            <td>
                                <a href="hapuskeranjang.php?id=<?php echo $id_produk; ?>"
                                    class="btn btn-danger btn-xs">Hapus</a>

                            </td>
                            <?php $nomor++; ?>
                        <?php endforeach ?>
                    </tr>
                </tbody>
            </table>


            <a href="index.php" class="btn btn-default">Lanjutkan Belanja</a>
            <a href="checkout.php" class="btn btn-primary">Checkout</a>
        </div>
    </section>


</body>

</html>