<?php
session_start();
$koneksi = new mysqli("localhost", "root", "", "warungku");

// Cek apakah pelanggan sudah login, jika tidak, arahkan ke login.php
if (!isset($_SESSION['pelanggan'])) {
    echo "<script>alert('Silahkan login terlebih dahulu');</script>";
    echo "<script>location='login.php';</script>";
    exit();
}

// Ambil data pelanggan yang sedang login
$id_pelanggan = $_SESSION["pelanggan"]["id_pelanggan"];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Riwayat Belanja</title>
    <link rel="stylesheet" href="./admin/assets/css/admin.css">
</head>

<body>
    <!-- Navbar start -->
    <?php include "menu.php"; ?>
    <!-- Navbar end -->

    <section class="konten">
        <div class="container">
            <h2>Riwayat Belanja</h2>
            <hr>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Tanggal</th>
                        <th>Status</th>
                        <th>Total</th>
                        <th>Opsi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $nomor = 1;
                    // Mengambil data pembelian berdasarkan id_pelanggan
                    $ambil = $koneksi->query("SELECT * FROM pembelian WHERE id_pelanggan='$id_pelanggan' ORDER BY tanggal_pembelian DESC");
                    while ($pecah = $ambil->fetch_assoc()) {
                    ?>
                        <tr>
                            <td><?php echo $nomor; ?></td>
                            <td><?php echo $pecah["tanggal_pembelian"]; ?></td>
                            <td><?php echo $pecah["status_pembelian"]; ?></td>
                            <td>Rp. <?php echo number_format($pecah["total_pembelian"]); ?></td>
                            <td>
                                <a href="nota.php?id=<?php echo $pecah["id_pembelian"]; ?>" class="btn btn-info">Nota</a>
                                <!-- Tambahkan opsi lainnya jika diperlukan -->
                            </td>
                        </tr>
                        <?php $nomor++; ?>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </section>
</body>

</html>
