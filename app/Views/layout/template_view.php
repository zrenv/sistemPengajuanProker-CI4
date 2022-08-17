<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= $title ?></title>

    <base href="<?php echo base_url('assets') ?>/">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- IonIcons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <link rel="icon" href="favicon.png" type="image/gif">
</head>
<!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <?php if (in_groups('user')) : ?>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="/status" class="nav-link">Status</a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="/upload" class="nav-link">Upload</a>
                    </li>
                <?php endif; ?>
                <?php if (in_groups('dosen')) : ?>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="/pengajuan" class="nav-link">Pengajuan</a>
                    </li>
                <?php endif; ?>

                <!-- 123 -->
            </ul>

            <!-- Right navbar links -->

        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex align-items-center">
                    <div class="image">
                        <img src="/img/<?= user()->user_image; ?>" class="img-fa-circle-notch " alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block text-bold text-uppercase"><?= user()->username; ?></a>
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

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <?php if (in_groups('user')) : ?>
                            <li class="nav-header">USER</li>
                            <li class="nav-item">
                                <a href="/status" class="nav-link">
                                    <i class="nav-icon fas fa-book"></i>
                                    <p>
                                        Status
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/upload" class=" nav-link">
                                    <i class="nav-icon fas fa-upload"></i>
                                    <p>
                                        Upload
                                    </p>
                                </a>
                            </li>
                        <?php endif; ?>
                        <?php if (in_groups('dosen')) : ?>
                            <li class="nav-header">DOSEN</li>
                            <li class="nav-item">
                                <a href="/pengajuan" class="nav-link">
                                    <i class="nav-icon fas fa-signature"></i>
                                    <p>
                                        Pengajuan
                                    </p>
                                </a>
                            </li>
                        <?php endif; ?>
                        <li class="nav-item">
                            <a href="<?= base_url('logout') ?>" class="nav-link">
                                <i class="nav-icon fas fa-sign-out-alt"></i>
                                <p>
                                    Keluar
                                </p>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>

            <!-- Content Wrapper. Contains page content -->
            <!-- <div class="content-wrapper"> -->
            <!-- Content Header (Page header) -->
            <!-- <div class="content-header"> -->
            <!-- <div class="container-fluid"> -->
            <!-- <div class="row mb-2"> -->
            <!-- <div class="col-sm-6"> -->
            <!-- <h1 class="m-0">Dashboard v3</h1> -->
            <!-- </div>/.col -->
            <!-- <div class="col-sm-6"> -->
            <!-- <ol class="breadcrumb float-sm-right"> -->
            <!-- <li class="breadcrumb-item"><a href="#">Home</a></li> -->
            <!-- <li class="breadcrumb-item active">Dashboard v3</li> -->
            <!-- </ol> -->
            <!-- </div>/.col -->
            <!-- </div>/.row -->
            <!-- </div>/.container-fluid -->
            <!-- </div> -->
            <!-- /.content-header -->
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->


            <?= $this->renderSection('content'); ?>

            /////////////////////
            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- /.control-sidebar -->

            <!-- Main Footer -->
            <footer class="main-footer">
                <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
                All rights reserved.
                <div class="float-right d-none d-sm-inline-block">
                    <b>Version</b> 3.2.0
                </div>
            </footer>
        </div>
        <!-- ./wrapper -->

        <!-- REQUIRED SCRIPTS -->

        <!-- jQuery -->
        <script src="plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE -->
        <script src="dist/js/adminlte.js"></script>

        <!-- OPTIONAL SCRIPTS -->
        <script src="plugins/chart.js/Chart.min.js"></script>
        <script>
            const get_name = () => {

                const dock = document.querySelector('#document');
                const dockLabel = document.querySelector('.custom-file-label');

                dockLabel.textContent = dock.files[0].name;

            }
        </script>
</body>

</html>