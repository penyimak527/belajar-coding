<?php
// Koneksi ke database
$koneksi = new mysqli("localhost", "root", "", "cat");

// Periksa koneksi
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}

if (isset($_POST['submit'])) {
    // Ambil data dari form
    $nama_produk = $koneksi->real_escape_string($_POST['nama_produk']);
    $harga = $koneksi->real_escape_string($_POST['harga_produk']);
    $title = $koneksi->real_escape_string($_POST['kategori']);
    $deskripsi = $koneksi->real_escape_string($_POST['deskripsi']);

    // Mengambil informasi file gambar
    if (isset($_FILES['img']) && $_FILES['img']['error'] === UPLOAD_ERR_OK) {
        $nama_file = $_FILES['img']['name'];
        $ukuran_file = $_FILES['img']['size'];
        $tmp_file = $_FILES['img']['tmp_name'];

        // Tentukan folder untuk menyimpan gambar yang diupload
        $folder = $_SERVER['DOCUMENT_ROOT'] . "/landingpage/asets/img/menu-kucing/";

        // Generate nama unik untuk file gambar menggunakan timestamp
        $nama_file_baru = time() . '_' . $nama_file;

        // Pindahkan file ke folder tujuan
        if (move_uploaded_file($tmp_file, $folder . $nama_file_baru)) {
            // Jika berhasil upload gambar, simpan data ke database
            $sql = "INSERT INTO list_content (judul_produk, harga, title, deskripsi, img)
                    VALUES (?, ?, ?, ?, ?)";
            
            $stmt = $koneksi->prepare($sql);
            $stmt->bind_param("sssss", $nama_produk, $harga, $title, $deskripsi, $nama_file_baru);

            if ($stmt->execute()) {
                echo "Data dan gambar berhasil diunggah!";
            } else {
                echo "Error: " . $stmt->error;
            }
            $stmt->close();
        } else {
            echo "Gagal mengunggah gambar!";
        }
    } else {
        echo "File gambar belum diunggah atau terjadi kesalahan!";
    }
}

$koneksi->close();
?>
