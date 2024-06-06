    <!-- navbar start -->
    <div class="navbar">
        <nav class="navbar navbar-default">
            <div class="container">
                <ul class="nav navbar-nav">
                    
                    <li><a href="keranjang.php">Keranjang</a></li>
                    <!-- jk sudah login mk ada sesion pelanggan -->
                    <?php if (isset($_SESSION["pelanggan"])): ?>
                        <li><a href="logout.php">Logout</a></li>
                        <!-- selain itu (blm login) atau (blm ada session pelanggan) -->
                    <?php else: ?>
                        <li><a href="login.php">Login</a></li>
                        <li><a href="register.php">daftar</a></li>

                    <?php endif; ?>
                    <li><a href="checkout.php">checkout</a></li>

                </ul>
            </div>
        </nav>
    </div>
    <!-- navbar end -->