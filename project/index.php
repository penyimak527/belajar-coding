<?php
include 'koneksi.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $nama = $_POST['nama'];
  $pesanan = $_POST['pesanan'];
  $kelas = $_POST['kelas'];
  $tempatanda = $_POST['tempatanda'];
  $saran = $_POST['saran'];

  $sql = "INSERT INTO shop (nama, pesanan, kelas, tempatanda, saran) VALUES (?, ?, ?, ?, ?)";
  $stmt = $conn->prepare($sql);
  $stmt->bind_param("sssss", $nama, $pesanan, $kelas, $tempatanda, $saran);
  $stmt->execute();
} ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>SmakenGo</title>
  <link rel="stylesheet" href="./asset/style.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:ital,wght@1,700&family=Sevillana&display=swap"
    rel="stylesheet" />
  <link rel="website icon" type="png" href="./asset/img/icon.png">
</head>

<body>
  <header>
    <!--navbar start-->
    <div class="navbar">
      <div class="navbar-logo"><img src="./asset/img/judul1.png" alt=""></div>
      <div class="navbar-menu">
        <ul>
          <li><a href="">Home</a></li>
          <li class="dropdown">
            <a href="#menu" class="dropbtn">Menu</a>
            <div class="dropdown-content">
              <a href="#kantin1">Koperasi</a>
              <a href="#kantin2">Kantin kejujuran</a>
              <a href="#kantin3">Kantin Belakang</a>
            </div>
          </li>
          <li><a href="#about">Tentang-kami</a></li>
          <li><a href="#contact">kontak</a></li>
        </ul>
      </div>
      <div class="navbar-extra">
        <!-- <a href="" id="search-outline"><i><ion-icon name="search-outline"></ion-icon></i></a>
        <a href="" id="Shopping-cart"><i><ion-icon name="cart-outline"></ion-icon></i></a> -->
        <a href="" id="menu-outline"><i><ion-icon name="menu-outline"></ion-icon></i></a>
      </div>
    </div>
    <!--navbar end-->
  </header>
  <!--hero section start-->
  <section class="hero" id="home">
    <main class="content">
      <h1><span>Mari</span> membeli makanan <span>di</span> <span>SEKOLAH</span></h1>
      <p>Makan makanan yang sehat dan berkhasiat, hanya di kantin sekolah <a href="https://smkn1lmj.sch.id/">SMKN 01
          Lumajang</a></p>
      <a href="#menu" class="cta">Beli sekarang</a>
    </main>
  </section>
  <!--hero section end-->
  <!--about section start-->
  <section id="about" class="about">
    <div class="judul">
      <h1><span>Tentang </span>Kantin</h1>
    </div>
    <div class="isi-about">
      <div class="about-img"><img src="./asset/img/alexander-kovacs-TivEEYzzhik-unsplash.jpg" alt="Tentang-kami"></div>
      <div class="content">
        <h2>Mengapa memilih kami?</h2>
        <p>Kami melayani dengan sepenuh hati serta mengantar dengan cepat
        </p>
        <p>Projek kami di lakukan hanya dengan 3 orang.</p>
      </div>
    </div>
  </section>
  <!--about section end-->

  <!--menu section start-->
  <section id="menu" class="menu">
    <h1>Menu <span>Kantin</span></h1>
    <p>Menu kami masih di proses</p>
    <div id="kantin1" class="kantin1">
      <h2>Menu Koperasi</h2>
      <p class="kalimat1">Berikut daftar menu Koperasi :</p>
      <div class="row">
        <div class="menu-card">
          <img src="./asset/img/makanan/1.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--Pisang--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/1.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--Pisang--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/1.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--Pisang--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/1.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--Pisang--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/1.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--Pisang--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/1.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--Pisang--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
      </div>
    </div>
    <div id="kantin2" class="kantin2">
      <h2>Menu Kantin Kejujuran</h2>
      <p class="kalimat2">Berikut daftar menu Kantin Kejujuran :</p>
      <div class="row">
        <div class="menu-card">
          <img src="./asset/img/makanan/2.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--ES--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/2.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--ES--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/2.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--ES--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/2.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--ES--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/2.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--ES--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/2.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--ES--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/2.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--ES--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div class="menu-card">
          <img src="./asset/img/makanan/2.jpeg" alt="makanan" class="menu-card-img">
          <h4 class="menu-card-title">--ES--</h4>
          <p class="menu-card-price">Rp2.000</p>
        </div>
        <div id="kantin3" class="kantin3">
          <h2>Menu Kantin Belakang</h2>
          <p class="kalimat3">Coming Soon.</p>
  </section>
  <!--menu section end-->
  <!--contact section start-->
  <section id="contact" class="contact">
    <h1><span>Contact</span> kami</h1>
    <p>Berikan kritik dan saranmu disini</p>
    <div class="isi-contact">
      <!-- cara bikin contact  -->
      <iframe
        src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d300.0089719635558!2d113.21775655238292!3d-8.12649599406898!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sid!2sid!4v1708583287642!5m2!1sid!2sid"
        width="800" height="500" style="border:0;" allowfullscreen="" loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"></iframe>
      <form action="index.php" method="post">
        <div class="input-grup">
          <i><ion-icon name="person-outline"></ion-icon></i>
          <input type="text" name="nama" placeholder="Nama" required>
        </div>
        <div class="input-grup">
          <i><ion-icon name="person-outline"></ion-icon></i>
          <input type="text" name="pesanan" placeholder="Pesanan" required>
        </div>
        <div class="input-grup">
          <i><ion-icon name="person-outline"></ion-icon></i>
          <input type="text" name="kelas" placeholder="Kelas" required>
        </div>
        <div class="input-grup">
          <i><ion-icon name="person-outline"></ion-icon></i>
          <input type="text" name="tempatanda" placeholder="Tempat" required>
        </div>
        <div class="input-grup">
          <i><ion-icon name="mail-outline"></ion-icon></i>
          <input type="text" name="saran" placeholder="Saran">
        </div>
        <button class="btn" type="submit">kirim pesan</button>
      </form>
    </div>
  </section>
  <!--contact section start-->
  <!--footer start-->
  <footer>
    <div class="sosial">
      <a href="https://www.instagram.com/ex_software.engineering/"><ion-icon
          name="logo-instagram"></ion-icon>Instagram</a>
      <a href=""><ion-icon name="logo-facebook"></ion-icon>Facebook</a>
      <a href=""><ion-icon name="logo-tiktok"></ion-icon>Tiktok</a>
    </div>
    <div class="link">
      <a href="#home">Home</a>
      <a href="#menu">Menu</a>
      <a href="#about">Tentang Kami</a>
      <a href="#contact">kontak</a>
    </div>
    <div class="credit">
      <p>Created by <a href=""></a>. | &copy: 2023</p>
    </div>
  </footer>
  <!--footer end-->

  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
  <section id="bawah"></section>
  <script src="/tugas/js/main.js"></script>
</body>

</html>