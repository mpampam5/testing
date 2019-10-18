
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-5 mb-4 mb-xl-0">
                  <h4 class="font-weight-bold">Hi, Welcome!</h4>
                  <h4 class="font-weight-normal mb-0"><?=ucfirst(profile("nama"))?></h4>
                </div>
                <div class="col-12 col-xl-7">
                  <div class="d-flex align-items-center justify-content-between flex-wrap">
                    <div class="border-left pl-2 mb-3 mb-xl-0 profile-dash">
                      <p class="text-muted"><i class="ti-id-badge"></i> ID.REG</p>
                      <h4 class="mb-0 font-weight-bold"><?=profile("kode_person")?></h4>
                    </div>
                    <div class="border-left pl-2 mb-3 mb-xl-0 profile-dash">
                      <p class="text-muted"><i class="ti-user"></i> Username</p>
                      <h4 class="mb-0 font-weight-bold"><?=profile("username")?></h4>
                    </div>
                    <div class="border-left pl-2 mb-3 mb-xl-0 profile-dash">
                      <p class="text-muted"><i class="ti-email"></i> Email</p>
                      <h4 class="mb-0 font-weight-bold"><?=profile("email")?></h4>
                    </div>
                    <!-- <div class="border-left pl-2 mb-3 mb-xl-0 profile-dash">
                      <p class="text-muted"><i class="ti-wallet"></i> Balance</p>
                      <h4 class="mb-0 font-weight-bold">Rp.5.000.000</h4>
                    </div> -->
                    <div class="border-left pl-2 mb-3 mb-xl-0 profile-dash">
                      <p class="text-muted"><i class="ti-stats-up"></i> Status Level</p>
                      <h4 class="mb-0 font-weight-bold"><?=strtoupper(profile("level"))?></h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <?php if (profile("is_complate")=="0" OR profile("is_complate_berkas")=="0"): ?>
            <div class="row">
              <div class="col-md-12 mb-2 stretch-card">
                <div class="card">
                  <div class="card-body text-center">
                    <p style="font-size:12px;">Mungkin beberapa fitur tidak dapat anda gunakan. Silahkan Lengkapi data anda.</p>
                    <a href="<?=site_url("backend/wizard")?>" class="badge badge-primary"> Lengkapi data</a>
                  </div>
                </div>
              </div>
            </div>
          <?php endif; ?>





          <div class="row">
            <div class="col-md-3 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title text-md-center text-xl-left">Balance</p>
                  <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                    <h5 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">Rp.<?=format_rupiah(balance())?></h5>
                    <i class="ti-wallet icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-3 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title text-md-center text-xl-left">Number of Clients</p>
                  <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                    <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">47033</h3>
                    <i class="ti-user icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
                  </div>
                  <p class="mb-0 mt-2 text-danger">0.22% <span class="text-black ml-1"><small>(30 days)</small></span></p>
                </div>
              </div>
            </div>
            <div class="col-md-3 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title text-md-center text-xl-left">Today’s Bookings</p>
                  <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                    <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">40016</h3>
                    <i class="ti-agenda icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
                  </div>
                  <p class="mb-0 mt-2 text-success">10.00%<span class="text-black ml-1"><small>(30 days)</small></span></p>
                </div>
              </div>
            </div>
            <div class="col-md-3 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title text-md-center text-xl-left">Total Items Bookings</p>
                  <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                    <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">61344</h3>
                    <i class="ti-layers-alt icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
                  </div>
                  <p class="mb-0 mt-2 text-success">22.00%<span class="text-black ml-1"><small>(30 days)</small></span></p>
                </div>
              </div>
            </div>
          </div>
