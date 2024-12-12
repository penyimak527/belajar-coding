<?php
session_start();
include "../includes/koneksi.php"; // Menghubungkan ke file koneksi

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $nama = isset($_POST['nama']) ? trim($_POST['nama']) : '';
    $email = isset($_POST['email']) ? trim($_POST['email']) : '';
    $password = isset($_POST['password']) ? trim($_POST['password']) : '';

    // Validasi input
    if (empty($nama) || empty($email) || empty($password)) {
        echo "<script>alert('Semua field harus diisi.');</script>";
    } else {
        // Cek apakah email sudah terdaftar
        $stmt = $conn->prepare("SELECT * FROM user WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $pengguna = $result->fetch_assoc();

            // Verifikasi password
            if (password_verify($password, $pengguna['password'])) {
                // Login sukses
                // $_SESSION['loggedin'] = [
                //     'id_user' = $pengguna ['id_user'],
                //     'nama' = $pengguna ['nama'],
                //     'email' = $pengguna ['email'],
                //     'alamat' = $pengguna ['alamat'],
                //     'telepon' = $pengguna ['telepon'],
                // ];
                $_SESSION['loggedin'] = true;
                $_SESSION['id_user'] = $pengguna['id_user'];
                $_SESSION['nama'] = $pengguna['nama'];
                $_SESSION['email'] = $pengguna['email'];
                $_SESSION['alamat'] = $pengguna['alamat'];
                $_SESSION['telepon'] = $pengguna['telepon'];

                echo "<script>alert('Login berhasil !');</script>";
                echo "<script>location='../../index.php';</script>";
                exit();
            } else {
                echo "<script>alert('Password salah atau inputannya salah.');</script>";
            }
        } else {
            echo "<script>alert('Email tidak terdaftar.');</script>";
        }
    }
}
?>

<!-- 
//session_start();
//include "../includes/koneksi.php"; // Menghubungkan ke file koneksi

 // Misalkan $pengguna adalah data pengguna dari database setelah login
// $_SESSION['loggedin'] = true;
// $_SESSION['nama'] = $pengguna['nama'];
// $_SESSION['email'] = $pengguna['email'];
// $_SESSION['password'] = $pengguna['password'];
// $_SESSION['alamat'] = $pengguna['alamat'];
// $_SESSION['telepon'] = $pengguna['telepon'];

// if ($_SERVER['REQUEST_METHOD'] == "POST") {
//     $nama = isset($_POST['nama']) ? trim($_POST['nama']) : '';
//     $email = isset($_POST['email']) ? trim($_POST['email']) : '';
//     $password = isset($_POST['password']) ? trim($_POST['password']) : '';

    // Validasi input
//     if (empty($nama) || empty($email) || empty($password)) {
//         echo "<script>alert('Semua field harus diisi.');</script>";
//     } else {
//         // Cek apakah email sudah terdaftar
//         $stmt = $conn->prepare("SELECT * FROM user WHERE email = ?");
//         $stmt->bind_param("s", $email);
//         $stmt->execute();
//         $result = $stmt->get_result();

//         if ($result->num_rows > 0) {
//     $pengguna = $result->fetch_assoc();

//     // Debugging output     dan dapat ditampilkan 
//     //var_dump($password); // Password yang diinput
//     //var_dump($pengguna['password']); // Password hash dari database

//     // Verifikasi password
//     if (password_verify($password, $pengguna['password'])) {
//         // Login sukses
//         // $_SESSION['id_user'] = $pengguna['id'];
//         // $_SESSION['nama'] = $pengguna['nama'];


//         //simpan disini
//          $_SESSION['loggedin'] = true;
//                 $_SESSION['nama'] = $pengguna['nama']; // Nama pengguna yang berhasil login

//         echo "<script>alert('Login berhasil !');</script>";
//         echo "<script>location='loginuser.php';</script>";
//         // echo "<script>location='../index.php';</script>";
//         exit();
//     } else {
//         echo "<script>alert('Password salah atau inputan nya salah.');</script>";
//     }
// } else {
//     echo "<script>alert('Email tidak terdaftar.');</script>";
// }

//     }
// }

?> -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <style>
        /* Tambahkan style untuk tampilan form */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-login {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
        }
        .form-login input {
            width: 100%;
            padding: 10px 5px;

            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-login button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        .form-login button:hover {
            background-color: #45a049;
        }
        .daftar{
            text-decoration: none;
            color: black;
            background-color: #F6F7C4;
            padding: 5px;
            border-radius: 2px;
            font-size: 1.2rem;
            font-family: courier;

        }
    </style>
    <div class="form-login">
        <h2>Login</h2>
        <form method="POST">
            <input type="text" name="nama" placeholder="Nama" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
        <p>Belum punya akun? <a href="register.php" class="daftar">Daftar</a></p>
    </div>
</body>
</html>
