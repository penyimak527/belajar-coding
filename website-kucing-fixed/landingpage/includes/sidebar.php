<!-- hamburger icon start -->
<div class="burger" onclick="toggleMenu()">
	  &#9776;
</div>
<!-- hamburger icon end -->
<nav class="navbar">
	<ul>
		<li><a href="index.php?page=home">Beranda</a></li>
		<li><a href="index.php?page=content">Konten</a></li>
		<li><a href="index.php?page=contact">Kontak</a></li>
		<li><a href="index.php?page=about" class="tentang">Tentang Kami</a></li>
	
		
	</ul>
</nav>
<script>
	function toggleMenu() {
    const navbar = document.querySelector('.navbar');
    navbar.classList.toggle('active');
}
</script>
<style>
.burger{
	background-color: #F4E0AF;
	border-radius: 3px;
}

</style>