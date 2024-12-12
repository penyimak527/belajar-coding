<?php
$koneksi = new mysqli("localhost", "root", "", "cat");

// Pastikan session dimulai
session_start();

if (isset($_POST['submit'])) {
    // Ambil data dari form
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $pass = $_POST['password'];
    $ulangipw = $_POST['ulangpw'];
    $alamat = $_POST['alamat'];
    $telepon = $_POST['telepon'];

    // Periksa apakah password dan ulangi password cocok
    if ($pass !== $ulangipw) {
        echo "<script>alert('Password tidak cocok.');</script>";
    } else {
        // Hash password
        $hashed_password = password_hash($pass, PASSWORD_BCRYPT);

        // Simpan data ke dalam database
        $data = "INSERT INTO user (nama, email, password, alamat, telepon) VALUES ('$nama', '$email', '$hashed_password', '$alamat', '$telepon')";

        // Cek apakah query berhasil
        if ($koneksi->query($data) === TRUE) {
            echo "<script>alert('Registrasi berhasil!');</script>";
            echo "<script>location='loginuser.php';</script>";
        } else {
            echo "<script>alert('Registrasi gagal: " . $koneksi->error . "');</script>";
        }
    }
    session_write_close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register User</title>
    <style>
        /* Style untuk halaman register */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f0f2f5;
        }

        .row-register {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }

        p {
            margin: 1rem;
            text-align: center;
        }

        a {
            color: black;
            text-decoration: none;
            background: #FFF4B7;
            padding: 5px 10px;
            border-radius: 2px;
        }
    </style>
</head>
<body>
    <div class="row-register">
        <h2>Daftar</h2>
        <form method="post">
            <label for="nama">Nama</label>
            <input type="text" name="nama" required>

            <label for="email">Email</label>
            <input type="email" name="email" required>

            <label for="password">Password</label>
            <input type="password" name="password" required>

            <label for="ulangpw">Ulangi Password</label>
            <input type="password" name="ulangpw" required>

            <label for="alamat">Alamat</label>
            <textarea name="alamat" required></textarea>

            <label for="telepon">No Telepon</label>
            <input type="number" name="telepon" required>

            <button type="submit" name="submit">Daftar</button>
            <p>Sudah daftar? Silahkan <a href="login.php">masuk</a></p>
        </form>
    </div>

    <script>
        document.querySelector("form").addEventListener("submit", function(event) {
            var password = document.querySelector("input[name='password']").value;
            var ulangipw = document.querySelector("input[name='ulangpw']").value;

            if (password !== ulangipw) {
                alert('Password tidak cocok');
                event.preventDefault(); // Mencegah form terkirim jika password tidak cocok
            }
        });
    </script>
</body>
</html>
