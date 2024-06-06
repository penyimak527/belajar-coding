<h2>Tambah Produk</h2>
<form method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="nama">Nama</label>
        <input type="text" class="form-control" name="nama">
    </div>
    <div class="form-group">
        <label for="Harga(Rp)">Harga</label>
        <input type="number" class="form-control" name="harga">
    </div>
    <div class="form-group">
        <label for="Berat(gram)">Berat(gram)</label>
        <input type="number" class="form-control" name="berat">
    </div>
    <div class="form-group">
        <label for="deskripsi">Deskripsi</label>
        <textarea name="deskripsi" id="" class="form-control" rows="10"></textarea>
    </div>
    <div class="form-group">
        <label for="Foto Produk">Foto Produk</label>
        <input type="file" class="form-control" name="foto">
    </div>
    <button class="btn btn-primary" name="tambah">Simpan</button>
</form>
<?php 
if (isset($_POST['tambah'])){
    $nama =$_FILES['foto']['name'];
    $lokasi =$_FILES['foto']['tmp_name'];
    move_uploaded_file($lokasi, "/admin/foto-produk/".$nama);
    $koneksi->query("INSERT INTO produk(nama_produk, harga_produk, berat_produk, foto_produk, deskripsi_komentar)
    VALUES('$_POST[nama]','$_POST[harga]','$_POST[berat]','$nama','$_POST[deskripsi]'");
    echo"<div class='alert alert-info'>Data tersimpan</div>";
    echo "<meta http-equiv='refresh' content='1;url=index.php?halaman=produk'>";
}
?>
<p>masih error</p>

