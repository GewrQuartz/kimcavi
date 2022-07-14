<?php
  session_start();

  if(isset($_SESSION['usuario'])){ //HABIERTA LA SESION
    if($_SESSION['rol'] == 2)
    //if($_SESSION['rol'] == 2 || $_SESSION['rol'] == 1)
    { // SESION SU ROL SEA IGUAL A ADMINISTRADOR
    
?>



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://kit.fontawesome.com/8900d5ba3d.js" crossorigin="anonymous"></script>
  <title>KIMCAVI</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
     
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Navegador -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.php" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">KIMCAVI</span>
    </a>
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block"><?php echo $_SESSION['usuario'] ?></a> <!--Alexander Pierce</a>-->
          <a href="cerrar-sesion.php"> Cerrar Sesión</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>
    <!-- Sidebar -->
    <div class="sidebar">
      

      

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->


          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                CATEGORIA
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-categoria.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-categoria.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>


          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                MODELO
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-modelo.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-modelo.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                MARCA
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-marca.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-marca.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>


          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                UNIDAD MEDIDA
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-unidad-medida.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-unidad-medida.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>



          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                PROVEEDOR
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-proveedor-kim.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar_proveedor.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                ROL
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-rol.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-rol.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>


          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                PRODUCTO
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-producto.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-producto.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                CLIENTE
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-cliente.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-cliente.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                EMPLEADO
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-empleado.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-empleado.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                VENTA
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-venta.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-venta.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                COMPRA
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-compra.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-compra.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link ">
              <!--<i class="nav-icon fas fa-tachometer-alt"></i>-->
              <i class="fa-solid fa-cart-arrow-down"></i>
              <p>
                FACTURA
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./registrar-factura.php" class="nav-link">
                  <!--<i class="far fa-circle nav-icon"></i>-->
                  <i class="fas fa-shopping-cart"></i>
                  <p>REGISTRAR</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-factura.php" class="nav-link">
                 <!---- <i class="far fa-circle nav-icon"></i>-->
                 <i class="fas fa-tag"></i>
                  <p>CONSULTAR</p>
                </a>
              </li>
            </ul>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">BIENVENIDO AL PANEL DE ADMINISTRADOR DE KIMCAVI</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.1.0
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
</body>
</html>
<?php

}else{
  echo "<h3>No Tiene Los Privilegios De Administrador Para Acceder Al Registro De Productos</h3>";
  echo "<a href='cerrar-sesion.php'> Cerrar Sesión</a> <br>";
  echo "<a href='registrar-categoria.php'> Consultar Productos</a>";
}
} else {
echo "<h4>Debe Iniciar Sesión Para Acceder Al Sistema</h4>";
echo "<a href= 'registro-empleado.php'><h5>Iniciar Sesión</h5></a>";
}

?>