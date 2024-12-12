<?php
include './includes/koneksi1.php';

$sql = "SELECT contentt FROM pagesdashboard WHERE title='tambahproduk'";
$result = $conn ->query($sql);

if($result -> num_rows > 0 ){
    $row = $result -> fetch_assoc();
    echo $row['contentt']; 
} 
else{
    echo " Content not founds";
}
 if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
?>
<style>
    section {
  width: 23rem;
  /* jika di auto maka disesuaikan */
  margin: 40px 5px;    
  padding: 20px;
  background-color: #f9f9f9;
  border: 1px solid #ddd;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
  display: block;
  margin-bottom: 10px;
  font-weight: bold;
  font-size: 1.4rem;
}

input[type="text" ] ,
input[type="email"] ,
input[type="number"],
textarea {
  width: 97%;
  height: 40px;
  margin-bottom: 20px;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
input[type="file"]{
    padding: 20px;
    margin-bottom: 20px;
    font-size: 1.1rem;
}
input[type="submit"] {
  width: 100%;
  height: 40px;
  margin-bottom: 20px;
  padding: 10px;
  background-color: #4CAF50;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}
</style>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Produk</title>
</head>
<body>
    <section id="inputan" class="inputan">
        <div class="form-input">
            <form method="post" enctype="multipart/form-data">
                <div class="namaproduk">
                    <label for="">Judul Produk</label>
                    <input type="text" name="namaproduk" required>
                </div>
                <div class="hargaproduk">
                    <label for="">Harga Produk</label>
                    <input type="number" name="hargaproduk" required>
                </div>
                <div class="kategori">
                    <label for="">Kategori Produk</label>
                    <input type="text" name="kategori" required>
                </div>
                <div class="deskripsi">
                    <label for="">Deskripsi Produk</label>
                    <textarea name="deskripsi" required></textarea>
                </div>
                <div class="img">
                    <label for="">Upload Gambar Produk</label>
                    <p>uploade file harus namanya sesuai dan format jpeg</p>
                    <input type="file" name="img" id="img" placeholder="harus jpeg" required><br><br>
                </div>
                <input type="submit" name="submit" id="submit" value="Upload">
            </form>
        </div>
    </section>
</body>
</html>

<?php
// Koneksi ke database
$koneksi = new mysqli("localhost", "root", "", "cat");

if($_SERVER["REQUEST_METHOD"] == 'POST'){
    $judulproduk = isset($_POST['namaproduk']) ? $_POST['namaproduk'] : '';
    $harga = isset($_POST['hargaproduk']) ? $_POST['hargaproduk'] : '';
    $kategori = isset($_POST['kategori']) ? $_POST['kategori'] : '';
    $deskripsi = isset($_POST['deskripsi']) ? $_POST['deskripsi'] : '';

    //file gambar uploade
    if(isset($_FILES['img']) && $_FILES['img'] ['error'] == 0){
        $jenisgambar = array("jpg" => "img/jpg", "jpeg" => "img/jpeg", "png" => "img/png");
        $filename = $_FILES["img"] ["name"];
        $gambarname = $_FILES["img"] ["type"];
        $filesize = $_FILES["img"] ["size"];

        //verifikasi file 
        $info = pathinfo($filename, PATHINFO_EXTENSION);
if(!array_key_exists($info, $jenisgambar)) 
    die("error : tolong upload gambar dengan format yang benar");

    //verifikasi file > 2mb
    $maxsize = 2 * 1024 * 1024;
    if($filesize >= $maxsize)
    die("error : ukuran gambar terlalu besar");

    //verifikasi tipe MYME
    if(in_array($gambarname, $jenisgambar)){
        //check file sebelum upload
        if(file_exists("../landingpage/asets/img/menu-kucing/" . $filename)){
            echo $filename . "sudah ada. upload file lain";
        }
        else{
            move_uploaded_file($_FILES['img']['tmp_name'] , "../landingpage/asets/img/menu-kucing/". $filename);
            echo "gambar berhasil di upload";
        }
    }
    else{
        echo "error : ada yang salah, silahkan coba lagi";
    }
    $img = "" . $filename;
    }
    else{
        $img = "";     //jika tidak ada gambar yang diupload default
    }
    //query insert data
    $sql1 = "INSERT INTO list_content (judul_produk, harga, title, deskripsi, img) VALUES ('$judulproduk', '$harga', '$kategori', '$deskripsi', '$img')";
    if($koneksi-> query($sql1)){
        echo "<div class='alert alert-info'>Data dan gambar berhasil disimpan</div>";
        echo "<meta http-equiv='refresh' content='1;url=index.php?halaman=produk'>";
echo "<script>location='index.php?page=products'</script>";
    }
    else{
        echo "error : " . $sql1 . "<br>" . $koneksi->error;
    }
}

$koneksi->close();
?>
