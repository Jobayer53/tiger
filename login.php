
<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Niche Admin - Powerful Bootstrap 4 Dashboard and Admin Template</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1" />

<!-- v4.0.0-alpha.6 -->
<link rel="stylesheet" href="backend/bootstrap/css/bootstrap.min.css">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

<!-- Theme style -->
<link rel="stylesheet" href="backend/css/style.css">
<link rel="stylesheet" href="backend/css/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="backend/css/et-line-font/et-line-font.css">
<link rel="stylesheet" href="backend/css/themify-icons/themify-icons.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-box-body">
    <h3 class="login-box-msg">Sign In</h3>
    <form action="login_post.php" method="post">
      <div class="form-group has-feedback">
        <input type="email" name="email" class="form-control sty1" placeholder="Email">
        <?php if(isset($_SESSION['email'])){ ?>
            <div class="alert alert-warning"><?=$_SESSION['email'];?></div>
        <?php } unset($_SESSION['email'])?>
      </div>
      <div class="form-group has-feedback">
        <input type="password" name="password" class="form-control sty1" placeholder="Password">
        <?php if(isset($_SESSION['password'])){ ?>
            <div class="alert alert-warning"><?=$_SESSION['password'];?></div>
        <?php } unset($_SESSION['password'])?>
      </div>
      <div>
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox">
              Remember Me </label>
            <a href="pages-recover-password.html" class="pull-right"><i class="fa fa-lock"></i> Forgot pwd?</a> </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4 m-t-1">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
        <!-- /.col --> 
      </div>
    </form>
    <div class="social-auth-links text-center">
     
    
  </div>
  <!-- /.login-box-body --> 
</div>
<!-- /.login-box --> 

<!-- jQuery 3 --> 
<script src="backend/js/jquery.min.js"></script> 

<!-- v4.0.0-alpha.6 --> 
<script src="backend/bootstrap/js/bootstrap.min.js"></script> 
<!-- template --> 
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="backend/js/niche.js"></script>
</body>
</html>