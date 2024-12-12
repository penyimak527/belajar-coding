<?php
include './includes/koneksi1.php';


$sql = "SELECT contentt FROM pagesdashboard WHERE title='ubahproduk'";
$result = $conn ->query($sql);

if($result -> num_rows > 0 ){
    $row = $result -> fetch_assoc();
    echo $row['contentt']; 
} 
else{
    echo " Content not founds";
}


?>
<style>
    form{
        background-color: red;
        padding: 1rem;
        font-size: 20px;
        width: 350px;
    margin:  auto;
    background-color: #f0f0f0;
    padding: 25px;
    border: 1px solid #ccc;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    }
    form label{
        display: block;
    margin-bottom: 20px;
    }
    .rowform input[type="text"], 
    .rowform input[type="password"] ,
    .rowform input[type="number"],
    .rowform input[type="file"],
    textarea{
    width: 100%;
    height: 25px;
    margin-bottom: 20px;
    padding: 4px;
    border: 1px solid #ccc;
  }
  
   input[type="submit"] {
    width: 100%;
    height: 30px;
    background-color: #4CAF50;
    color: #fff;
    font-size: 1rem;
    padding: 2px 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
   input[type="submit"]:hover {
    background-color: #3e8e41;
  }

</style>


<?php
//sambung ke database
$koneksi = mysqli_connect("localhost", "root", "","cat");

$ambildata = $koneksi -> query("SELECT * FROM list_content WHERE id_produk = '$_GET[id_produk]'");
$pisah = $ambildata -> fetch_assoc();
/*echo "<pre>";
print_r($pisah);        //digunakan untuk menampilkan error dan info
echo "</pre>";*/
?>

<form method="post" enctype="multipart/form-data">
    <div class="rowform">
        <label for="">Judul Produk</label>
        <input type="text" name="namaproduk" value="<?php echo $pisah['judul_produk'];?>">
        <label for="">Harga Produk</label>
        <input type="number" name="harga" value="<?php echo $pisah['harga'];?>">
        <label for="">kategori</label>
        <input type="text" name="title" value="<?php echo $pisah['title'];?>" >
        <label for="">Deskripsi Produk</label>
        <textarea name="deskripsi" ><?php echo $pisah['deskripsi'];?></textarea>
        <label for="">Gambar Produk</label>
        <input type="file" name="gambar">

    </div>
    <input type="submit" name="simpan" value="simpan">
</form>

<?php
if(isset($_POST['simpan'])){
    $namaproduk = $_POST['namaproduk'];
    $harga = $_POST['harga'];
    $title = $_POST['title'];
    $deskripsi = $_POST['deskripsi'];

    $namafoto = $_FILES['gambar']['name'];
    $lokasi = $_FILES['gambar']['tmp_name'];
    //jika img diubah
    if(!empty($lokasi)){
        move_uploaded_file($lokasi, "../landingpage/asets/img/menu-kucing/$namafoto");
        $koneksi ->query("UPDATE list_content SET judul_produk='$namaproduk', harga='$harga', title='$title', img='$namafoto', deskripsi='$deskripsi' WHERE id_produk = '$_GET[id_produk]'");

    }
    else{
        $koneksi -> query ("UPDATE list_content SET judul_produk= '$namaproduk', harga='$harga', title='$title', deskripsi='$deskripsi' WHERE id_produk = '$_GET[id_produk]'");
        header("location:index.php?page=products");
    }
    echo "<script>alert('data produk telah diubah');</script>";
    echo "<script>location='index.php?page=products';</script>";
}

?>