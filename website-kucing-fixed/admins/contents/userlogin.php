

<?php
include './includes/koneksi1.php';

$sql = "SELECT contentt FROM pagesdashboard WHERE title='user'";
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
/*	tabel start*/
	table{
		margin: 0.5rem;
	}
	th , td{
		padding: 5px 10px;
		text-align: center;
	}
/*	table end*/
</style>
<div class="table">
	<table border="2">
		<thead>
			<tr>
				<th>No</th>
				<th>Nama</th>
				<th>Email</th>
				<th>Alamat</th>
				<th>Telepon</th>
				<th>Tanggal</th>
			</tr>
		</thead>
		<tbody>
			<?php $no = 1;?>
			<?php $sql2 = $conn->query("SELECT * FROM user ");?>
			<?php while($data = $sql2 ->fetch_assoc()){?>
				<tr>
					<td><?php echo $no;?></td>
					<td><?php echo $data['nama'];?></td>
					<td><?php echo $data['email'];?></td>
					<td><?php echo $data['alamat'];?></td>
					<td><?php echo $data['telepon'];?></td>
					<td><?php echo $data['tanggal'];?></td>
				</tr>
				<?php $no++;?>
			<?php }?>
		</tbody>
	</table>
</div>
	
	