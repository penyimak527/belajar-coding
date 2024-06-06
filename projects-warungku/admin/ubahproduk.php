<h2>Ubah Produk</h2>
<?php
$ambil = $koneksi->query("SELECT * FROM produk WHERE id_produk='$_GET[id]'");
$pecah = $ambil->fetch_assoc();
echo "<pre>"; print_r($pecah);
echo "</pre>";
?>

<form method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label>Nama Produk</label>
        <input type="text" name="nama" class="form-control" value="<?php echo $pecah['nama_produk']; ?>">
        <label>Harga Rp</label>
        <input type="number" name="harga" class="form-control" value="<?php echo $pecah['harga_produk']; ?>">
        <label>Berat Produk(Gram)</label>
        <input type="number" name="berat" class="form-control" value="<?php echo $pecah['berat_produk']; ?>">
        <div class="form-group">
            <img src="../foto_produk/<?php echo $pecah['foto_produk'] ?>" width="200px">
        </div>
        <div class="form-group">
            <label for="Ganti Foto"></label>
            <input type="file" name="foto" class="form-control">
        </div>
        <div class="form-group">
            <label for="">Deskripsi</label>
            <textarea name="deskripsi" rows="10" class="form-control">
                <?php
                echo $pecah['deskripsi_komentar'];
                ?>
            </textarea>
        </div>

    </div>
    <button class="btn btn-primary" name="ubah">Ubah</button>
</form>

<?php
if (isset($_POST['ubah'])) {
    $namafoto = $_FILES['foto']['name'];
    $lokasifoto = $foto['tmp_name'];
    //jika foto diubah
    if (!empty($lokasifoto)) {
        move_uploaded_file($lokasifoto, '../foto_produk/$namafoto');
        $koneksi->query("UPDATE produk SET nama_produk='$_POST[nama]',
        harga_produk='$_POST[harga]',berat_produk='$_POST[berat]',foto_produk='namafoto',deskripsi_komentar='$_POST[deskripsi]'
        WHERE id_produk='$_GET[id]'");

    } else {
        $koneksi->query("UPDATE produk SET nama_produk='$_POST[nama]',
        harga_produk='$_POST[harga]',berat_produk='$_POST[berat]',deskripsi_komentar='$_POST[deskripsi]'
        WHERE id_produk='$_GET[id]'");

    }
    echo"<script>alert('data Produk telah diubah');</script>";
    echo"<script>location='index.php?halaman=produk';</script>";
}
?>