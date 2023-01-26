       <!-- Sidebar -->
       <ul class="navbar-nav bg-gradient-light sidebar sidebar-light accordion" id="accordionSidebar">

         <!-- Sidebar - Brand -->
         <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index">
           <div class="sidebar-brand-icon">
             <i class="fas fa-school"></i>
           </div>
           <div class="sidebar-brand-text mx-3">Pos Indonesia</sup></div>
         </a>
         <br>
         <!-- Divider -->

         <!-- Divider -->
         <hr class="sidebar-divider">

         <li class="nav-item">
           <a class="nav-link" href="<?= base_url('home') ?>">
             <i class="fas fa-fw fa-tachometer-alt"></i>
             <span>Dashboard</span></a>
         </li>

         <!-- Divider -->
         <hr class="sidebar-divider">

         <!-- Heading -->
         <div class="sidebar-heading">
           Data
         </div>

         <!-- Nav Item - Pages Collapse Menu -->
         <li class="nav-item">
           <a class="nav-link collapsed" href="<?= base_url('masuk') ?>">
             <i class="fas fa-table"></i>
             <span>Surat Masuk</span>
           </a>

         </li>

         <li class="nav-item">
           <a class="nav-link collapsed" href="<?= base_url('diposisi') ?>">
             <i class="fas fa-table"></i>
             <span>Diposisi</span>
           </a>

         </li>


         <li class="nav-item">
           <a class="nav-link collapsed" href="<?= base_url('keluar') ?>">
             <i class="fas fa-table"></i>
             <span>Surat Keluar</span>
           </a>

         </li>

         <li class="nav-item">
           <a class="nav-link collapsed" href="<?= base_url('laporan') ?>">
             <i class="fas fa-table"></i>
             <span>Laporan</span>
           </a>

         </li>

         <li class="nav-item">
           <a class="nav-link collapsed" href="/login" data-toggle="modal" data-target="#logoutModal">
             <i class="fas fa-fw fa-cog"></i>
             <span>Logout</span>
           </a>
           <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
               <h6 class="collapse-header">Setting Privasi:</h6>
               <a class="collapse-item" href="<?= base_url('profil') ?>">Profil</a>
               <a class="collapse-item" href="/login" data-toggle="modal" data-target="#logoutModal">Logout</a>
             </div>
           </div>
         </li>

         <!-- Divider -->
         <hr class="sidebar-divider">



         <!-- Sidebar Toggler (Sidebar) -->
         <div class="text-center d-none d-md-inline">
           <button class="rounded-circle border-0" id="sidebarToggle"></button>
         </div>

       </ul>
       <!-- End of Sidebar -->