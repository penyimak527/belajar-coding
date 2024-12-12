 <?php include 'landingpage/includes/header.php'; ?>
<?php
$page = isset($_GET['page']) ? $_GET['page'] : 'home';
$pagePath = 'landingpage/content/' . $page . '.php';
if (file_exists($pagePath)) {
include $pagePath;
} else {
echo "<h1>404 - Page Not Found</h1>";
}
?>


</main>
</div>
<footer>
<p>&copy; 2024 Website Dinamis</p>
</footer>
<script src="landingpage/js/script.js"></script>
</body>

</html>