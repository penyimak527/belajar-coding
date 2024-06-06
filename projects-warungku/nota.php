<?php
session_start();
$koneksi = new mysqli("localhost", "root", "", "warungku");

// Cek apakah pelanggan sudah login, jika tidak, arahkan ke login.php
if (!isset($_SESSION['pelanggan'])) {
    echo "<script>alert('Silahkan login terlebih dahulu');</script>";
    echo "<script>location='login.php';</script>";
    exit();
}

// Ambil id_pembelian dari URL
$id_pembelian = $_GET['id'];

// Ambil data pembelian berdasarkan id_pembelian
$ambil = $koneksi->query("SELECT * FROM pembelian JOIN pelanggan ON pembelian.id_pelanggan=pelanggan.id_pelanggan 
    WHERE pembelian.id_pembelian='$id_pembelian'");
$detail = $ambil->fetch_assoc();

// Jika pembelian ini tidak terkait dengan pelanggan yang sedang login, maka tidak boleh melihat nota ini
if ($detail["id_pelanggan"] !== $_SESSION["pelanggan"]["id_pelanggan"]) {
    echo "<script>alert('Anda tidak berhak melihat nota ini!');</script>";
    echo "<script>location='riwayat.php';</script>";
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nota Pembelian</title>
    <link rel="stylesheet" href="./admin/assets/css/admin.css">
</head>

<body>
    <!-- Navbar start -->
    <?php include "menu.php"; ?>
    <!-- Navbar end -->

    <section class="konten">
        <div class="container">
            <h2>Nota Pembelian</h2>
            <hr>
            <div class="row">
                <div class="col-md-4">
                    <h3>Pembelian</h3>
                    <strong>No. Pembelian: <?php echo $detail['id_pembelian']; ?></strong><br>
                    Tanggal: <?php echo $detail['tanggal_pembelian']; ?><br>
                    Total: Rp. <?php echo number_format($detail['total_pembelian']); ?>
                </div>
                <div class="col-md-4">
                    <h3>Pelanggan</h3>
                    <strong><?php echo $detail['nama_pelanggan']; ?></strong><br>
                    <p>
                        <?php echo $detail['telepon_pelanggan']; ?><br>
                        <?php echo $detail['email_pelanggan']; ?>
                    </p>
                </div>
                <div class="col-md-4">
                    <h3>Pengiriman</h3>
                    <form method="post">
                        <label for="">berikan alamat lengkap anda di kolom bawah</label>
                        <input type="text" name="tempat" required>
                        <button name="kirim" type="submit" class="btn btn-primary">Kirim</button>
                    </form>
                    <?php
                    if (isset($_POST["kirim"])) {
                        $tempat = $_POST["tempat"];
                        $stmt = $koneksi->prepare("INSERT INTO tempat (tempat_pelanggan) VALUES (?)");
                        $stmt->bind_param("s", $tempat);
                        $stmt->execute();
                        echo "<script>alert('tempat dikirim');</script>";
                        header("Location: index.php");
                        exit;
                    }
                    //   if (isset($_POST["kirim"])){
                    //     $tempat = $_POST["tempat"];
                    //     $koneksi->query("INSERT INTO tempat (tempat_pelanggan)
                    //      VALUES ('$tempat')");
                    
                    //   }
                    
                    ?>
                </div>
            </div>

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Produk</th>
                        <th>Harga</th>
                        <th>Jumlah</th>
                        <th>Subharga</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $nomor = 1;
                    $ambil = $koneksi->query("SELECT * FROM detail_pembelian JOIN produk 
                        ON detail_pembelian.id_produk=produk.id_produk 
                        WHERE detail_pembelian.id_pembelian='$id_pembelian'");
                    while ($pecah = $ambil->fetch_assoc()) { ?>
                        <tr>
                            <td><?php echo $nomor; ?></td>
                            <td><?php echo $pecah['nama_produk']; ?></td>
                            <td>Rp. <?php echo number_format($pecah['harga']); ?></td>
                            <td><?php echo $pecah['jumlah']; ?></td>
                            <td>Rp. <?php echo number_format($pecah['subharga']); ?></td>
                        </tr>
                        <?php $nomor++; ?>
                    <?php } ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th colspan="4">Total Belanja ditambah dengan ongkir</th>
                        <th>Rp. <?php echo number_format($detail['total_pembelian']); ?></th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </section>
</body>

</html>