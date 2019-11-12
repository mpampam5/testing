<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name='robots' content='noindex, follow' />
  <title><?=$title?></title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="<?=base_url()?>_template/front/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="<?=base_url()?>_template/front/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="<?=base_url()?>_template/front/css/style.css">
  <link rel="stylesheet" href="<?=base_url()?>_template/front/css/custom.css">
  <link rel="stylesheet" href="<?=base_url()?>_template/front/vendors/jquery-toast-plugin/jquery.toast.min.css">
  <link rel="stylesheet" href="<?=base_url()?>_template/front/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
  <!-- endinject -->
  <link rel="shortcut icon" href="<?=base_url()?>_template/front/images/favicon.png" />
  <!-- plugins:js -->
  <script src="<?=base_url()?>_template/front/vendors/js/vendor.bundle.base.js"></script>
  <script src="<?=base_url()?>_template/front/vendors/jquery-toast-plugin/jquery.toast.min.js"></script>
</head>

<body>
  <div class="container-scroller">
    <!-- partial:partials/_horizontal-navbar.html -->
    <div class="horizontal-menu">
      <nav class="navbar top-navbar col-lg-12 col-12 p-0">
        <div class="container">
          <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo" href="<?=site_url("backend/dashboard")?>"><img src="<?=base_url()?>_template/front/images/logo-white.png" alt="logo"/></a>
            <a class="navbar-brand brand-logo-mini" href="<?=site_url("backend/dashboard")?>"><img src="<?=base_url()?>_template/front/images/cheeta.png" alt="logo"/></a>
          </div>
          <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
            <!-- <ul class="navbar-nav navbar-nav-right">
              <li class="nav-item dropdown">
                <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                  <i class="ti-bell mx-0"></i>
                  <span class="count"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                  <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-success">
                        <i class="ti-info-alt mx-0"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <h6 class="preview-subject font-weight-normal">Application Error</h6>
                      <p class="font-weight-light small-text mb-0 text-muted">
                        Just now
                      </p>
                    </div>
                  </a>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-warning">
                        <i class="ti-settings mx-0"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <h6 class="preview-subject font-weight-normal">Settings</h6>
                      <p class="font-weight-light small-text mb-0 text-muted">
                        Private message
                      </p>
                    </div>
                  </a>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-info">
                        <i class="ti-user mx-0"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <h6 class="preview-subject font-weight-normal">New user registration</h6>
                      <p class="font-weight-light small-text mb-0 text-muted">
                        2 days ago
                      </p>
                    </div>
                  </a>
                </div>
              </li>
            </ul> -->
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="horizontal-menu-toggle">
              <span class="ti-menu"></span>
            </button>
          </div>
        </div>
      </nav>
      <nav class="bottom-navbar">
        <div class="container">
          <ul class="nav page-navigation">
            <li class="nav-item">
              <a class="nav-link" href="<?=site_url("backend/dashboard")?>">
                <i class="ti-home menu-icon"></i>
                <span class="menu-title">Dashboard</span>
              </a>
            </li>


            <?php if (profile("id_level") == 1 OR profile("id_level") == 2 OR profile("id_level") == 3): ?>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="ti-list menu-icon"></i>
                  <span class="menu-title">Member</span>
                  <i class="menu-arrow"></i></a>
                <div class="submenu">
                  <ul class="submenu-item">
                    <li class="nav-item"><a class="nav-link" href="<?=site_url("backend/person/add")?>">Add Member</a></li>
                    <li class="nav-item"><a class="nav-link" href="<?=site_url("backend/person")?>">All Member</a></li>
                  </ul>
                </div>
              </li>
            <?php endif; ?>


              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="ti-receipt menu-icon"></i>
                  <span class="menu-title">Invesment</span>
                  <i class="menu-arrow"></i></a>
                <div class="submenu">
                  <ul class="submenu-item">
                    <li class="nav-item"><a class="nav-link" href="<?=site_url("backend/investment")?>">All Investment</a></li>
                    <li class="nav-item"><a class="nav-link" href="<?=site_url("backend/investment/profit")?>">Share Profit</a></li>
                  </ul>
                </div>
              </li>

              <li class="nav-item">
              <a href="<?=site_url("backend/investment/dividen")?>" class="nav-link">
                <i class="ti-stats-up menu-icon"></i>
                <span class="menu-title">Comission</span></a>
            </li>

            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="ti-share-alt menu-icon"></i>
                <span class="menu-title">Deposit</span>
                <i class="menu-arrow"></i></a>
              <div class="submenu">
                <ul class="submenu-item">
                  <li class="nav-item"><a class="nav-link" href="<?=site_url("backend/deposit/add")?>">Add Deposit</a></li>
                  <li class="nav-item"><a class="nav-link" href="<?=site_url("backend/deposit/get/process")?>">Proccess</a></li>
                  <li class="nav-item"><a class="nav-link" href="<?=site_url("backend/deposit/get/approved")?>">Approved</a></li>
                </ul>
              </div>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="<?=site_url("backend/account")?>">
                <i class="ti-user menu-icon"></i>
                <span class="menu-title">Account</span>
              </a>
            </li>

            <li class="nav-item">
              <a href="<?=site_url("logout")?>" class="nav-link">
                <i class="ti-power-off menu-icon"></i>
                <span class="menu-title">Logout</span></a>
            </li>
          </ul>
        </div>
      </nav>
    </div>

    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <div class="main-panel">
        <div class="content-wrapper">
