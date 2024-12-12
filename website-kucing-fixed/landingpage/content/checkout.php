<?php

// Membuat koneksi ke database
$koneksi = new mysqli("localhost", "root", "", "cat");

// Cek koneksi
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}
// echo "<pre>";
// print_r($_SESSION['keranjang']);
// echo "</pre>";

//cek keranjang
if(!isset($_SESSION['keranjang'])){
    echo "<script>alert('keranjang kosong');</script>";
    echo "<script>location='index.php?page=home';</script>";

}
// Memastikan pengguna sudah login, jika belum maka akan diarahkan ke login.php
if (!isset($_SESSION)) {
    echo "<script>alert('Silahkan login terlebih dahulu');</script>";
    echo "<script>location='./daftar/login.php';</script>";
    exit();
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
</head>

<body>
    <style>
        /* Styling untuk elemen checkout */
        #checkout {
            background: whitesmoke;
            border-radius: 2px;
            width: 90%;
            margin: 40px 5px;
            border: 1px solid #ddd;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .checkout .table-judul {
            font-size: 1rem;
            width: 100%;
            border: 2px solid black;
            margin: 0.5rem 1%;
        }

        th, td {
            padding: 0.5rem;
            border: 0.5px solid black;
        }

        .no {
            width: 1px;
            text-align: center;
        }
        form{
            margin: 1rem;
             display: grid;
  grid-template-columns: repeat(3, minmax(100px, 1fr));
  grid-gap: 1rem;
        }
        form .nama , .telepon , .alamat{
            margin: 5px;
            padding: 5px;
            /* font-size: ; */
        }
        input[type="text"]{
            padding: 0.5rem;
            font-size: 1rem;
            font-smooth: always;
            font-weight: 400;
            background-repeat: inherit;
            background-blend-mode:exclusion;

        }
              button {
            width: 50%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
        }
  button:hover {
            background-color: #45a049;
        }
    </style>
    <div id="checkout" class="checkout">
        <h2>Checkout Belanja</h2>
        <hr>
        <br>
        <table class="table-judul">
            <thead>
                <tr>
                    <th class="no">No</th>
                    <th>Produk</th>
                    <th>Harga</th>
                    <th class="no">Jumlah</th>
                    <th>Subharga</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                $angkanomor = 1;
                $totalbelanja = 0;

                // Memeriksa apakah session 'keranjang' ada dan memiliki item
                if (isset($_SESSION['keranjang']) && !empty($_SESSION['keranjang'])):
                    foreach ($_SESSION['keranjang'] as $id_produk => $jumlahmasuk):
                        // Mengambil data produk dari database
                        $ambildata = $koneksi->query("SELECT * FROM list_content WHERE id_produk = '$id_produk'");
                        if (!$ambildata || $ambildata->num_rows == 0) {
                            // Hapus item dari keranjang jika produk tidak ditemukan
                            unset($_SESSION['keranjang'][$id_produk]);
                            continue;
                        }
                        $pecahdata = $ambildata->fetch_assoc();
                        $jumlah = $pecahdata['harga'] * $jumlahmasuk;
                ?>
                        <tr>
                            <td class="no"><?php echo $angkanomor; ?></td>
                            <td><?php echo htmlspecialchars($pecahdata['judul_produk']); ?></td>
                            <td>Rp <?php echo number_format($pecahdata['harga']); ?></td>
                            <td class="no"><?php echo $jumlahmasuk; ?></td>
                            <td>Rp <?php echo number_format($jumlah); ?></td>
                        </tr>
                        <?php 
                        $angkanomor++;
                        $totalbelanja += $jumlah;
                    endforeach;
                else:
                    // Tampilkan pesan jika keranjang kosong
                    echo "<tr><td colspan='5'>Keranjang belanja kosong.</td></tr>";
                endif;
                ?>
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="4">Total Belanja:</th>
                    <th>Rp <?php echo number_format($totalbelanja); ?></th>
                </tr>
            </tfoot>
        </table>

        <!-- Form untuk data pelanggan -->
        <form method="POST" action="index.php?page=pembelian_produk">
            <div class="nama">
                <!-- Tampilkan nama pengguna yang sedang login -->
                <input type="text" readonly name="nama" value="<?php echo htmlspecialchars($_SESSION['nama'] ?? ''); ?>">
            </div>
            <div class="telepon">
                <!-- Tampilkan telepon pengguna yang sedang login -->
                <input type="text" name="telepon" required placeholder="Berikan telepon">
                  <!-- <input type="text" readonly value=" //echo htmlspecialchars($_SESSION['loggedin']['telepon'] ?? ''); ?>">    
                    ini tidak saya lakukan dikarenakan error -->
            </div>
            <div class="alamat">
                <input type="text" name="alamat" required placeholder="Berikan alamat">
            </div>
            <button type="submit" name="submit">Kirim</button>
        </form>
    </div>
    
   <pre>
        <!-- Menampilkan isi dari session 'pelanggan' untuk debugging -->
        <?//php print_r($_SESSION ?? ''); ?>
        <?php
//var_dump($_SESSION);
        ?>
    <pre>
        <!-- Menampilkan isi dari session 'keranjang' untuk debugging -->
        <?//php print_r($_SESSION["keranjang"] ?? []); ?>
    </pre>
</body>

</html>
<?php
if($_SERVER['REQUEST_METHOD'] == ['POST']){
     echo "<script>alert('Silahkan login terlebih dahulu');</script>";
    echo "<script>location='index.php?page=pembelian_produk';</script>";
    exit();
}
?>
