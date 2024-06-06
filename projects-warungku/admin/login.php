<?php
session_start();
//skrip keneksi
$koneksi = new mysqli("localhost","root","","warungku");
?>
<!DOCTYPE html>
<html lang="en" >
<head>
<html >
  <meta charset="UTF-8">
  <title>loginku</title>
  <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Poppins&amp;display=swap'><link rel="stylesheet" href="./style.css">
    <!-- admin STYLES-->
    <link href="assets/css/admin.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
  <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
  }
  
  :root {
    --primary-color: #c6c3c3;
    --second-color: #ffffff;
    --black-color: #000000;
  }
  
  body {

    background-position: center;
    background-size: cover;
    background-color: #E09A5C;
    background-repeat: no-repeat;
    background-attachment: fixed;
  }
  
  a {
    text-decoration: none;
    color: var(--second-color);
  }
  
  a:hover {
    text-decoration: underline;
  }
  
  .wrapper {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: rgba(0, 0, 0, 0.2);
  }
  
  .login_box {
    position: relative;
    width: 450px;
    backdrop-filter: blur(25px);
    border: 2px solid var(--primary-color);
    border-radius: 15px;
    padding: 7.5em 2.5em 4em 2.5em;
    color: var(--second-color);
    box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.2);
  }
  
  .login-header {
    position: absolute;
    top: 0;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: var(--primary-color);
    width: 140px;
    height: 70px;
    border-radius: 0 0 20px 20px;
  }
  
  .login-header span {
    font-size: 30px;
    color: var(--black-color);
  }
  
  .login-header::before {
    content: "";
    position: absolute;
    top: 0;
    left: -30px;
    width: 30px;
    height: 30px;
    border-top-right-radius: 50%;
    background: transparent;
    box-shadow: 15px 0 0 0 var(--primary-color);
  }
  
  .login-header::after {
    content: "";
    position: absolute;
    top: 0;
    right: -30px;
    width: 30px;
    height: 30px;
    border-top-left-radius: 50%;
    background: transparent;
    box-shadow: -15px 0 0 0 var(--primary-color); /* Removed space before --primary-color */
  }
  
  .input_box {
    position: relative;
    display: flex;
    flex-direction: column;
    margin: 20px 0;
  }
  
  .input-field {
    width: 100%;
    height: 55px;
    font-size: 16px;
    background: transparent;
    color: var(--second-color);
    padding-inline: 20px 50px;
    border: 2px solid var(--primary-color);
    border-radius: 30px;
    outline: none;
  }
  
  #user {
    margin-bottom: 10px;
  }
  
  .label {
    position: absolute;
    top: 15px;
    left: 20px;
    transition: 0.2s;
  }
  
  .input-field:focus ~ .label,
  .input-field:valid .label {
    /* Added missing closing brace here */
    position: absolute;
    top: -10px;
    left: 20px;
    font-size: 14px;
    background-color: var(--primary-color);
    border-radius: 30px;
    color: var(--black-color);
    padding: 0 10px;
  } /* Closed the missing brace */
  
  .icon {
    position: absolute;
    top: 18px;
    right: 25px;
    font-size: 20px;
  }
  
  .remember-forgot {
    display: flex;
    justify-content: space-between;
    font-size: 15px;
  }
  
  .input-submit {
    width: 100%;
    height: 50px;
    background: #ececec;
    font-size: 16px;
    font-weight: 500;
    border: none;
    border-radius: 30px;
    cursor: pointer;
    transition: 0.3s;
  }
  
  .input-submit:hover {
    background: var(--second-color);
  }
  
  .register {
    text-align: center;
  }
  
  .register a {
    font-weight: 500;
  }
  
  @media only screen and (max-width: 564px) {
    .wrapper {
      padding: 20px;
    }
  
    .login_box {
      padding: 7.5em 1.5em 4em 1.5em;
    }
  }
  </style>
<!-- partial:index.partial.html -->
<div class="wrapper">
  <div class="login_box">
    <div class="login-header">
      <span>Login</span>
    </div>
    <form role="form" method="post" >
    <div class="input_box">
      <input type="text" name="user" class="input-field" required>
      <label for="user" class="label">Username</label>
      <i class="bx bx-user icon"></i>
    </div>

    <div class="input_box">
      <input type="password" name="pass" class="input-field" required>
      <label for="pass" class="label">Password</label>
      <i class="bx bx-lock-alt icon"></i>
    </div>

    <div class="remember-forgot">
      <div class="remember-me">

      </div>

    </div>

<button class="btn btn-primary" name="login">Login</button>


    </form>
    <?php 
    if (isset($_POST['login'])){
     $ambil = $koneksi->query("SELECT * FROM admin WHERE username='$_POST[user]' AND password ='$_POST[pass]' ");
     $yangcocok = $ambil->num_rows;
     if ($yangcocok==1){
      $_sesion['admin'] = $ambil->fetch_assoc();
      echo"<div class='alert alert-info'>login sukses</div>";
      echo"<meta http-equiv='refresh' content='1;url=index.php'>";
     }
     else{
      echo"<div class='alert alert-ganger'>login gagal</div>";
      echo"<meta http-equiv='refresh' content='1;url=login.php'>";
     }
    }
    ?>
  </div>
</div>
<!-- partial -->
  
</body>
</html>