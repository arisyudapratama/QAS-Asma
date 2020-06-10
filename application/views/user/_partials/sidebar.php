<!-- Sidebar -->
<ul class="sidebar navbar-nav">
    <li class="nav-item <?php echo $this->uri->segment(2) == '' ? 'active': '' ?>">
        <a class="nav-link" href="<?php echo site_url('user') ?>">
            <i class="fa fa-home"></i>
            <span>Home</span>
        </a>
    </li>

    <li class="nav-item dropdown <?php echo $this->uri->segment(2) == '' ? 'active': '' ?>">
    <a class="nav-link" href="<?php echo site_url('user/query/add') ?>">
            <i class="fa fa-book"></i>
            <span>Konsultasi</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">            
        </div>
    </li>

    <li class="nav-item dropdown <?php echo $this->uri->segment(2) == '' ? 'active': '' ?>">
    <a class="nav-link" href="<?php echo site_url('user/query') ?>">
            <i class="fa fa-book"></i>
            <span>Hasil</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">            
        </div>
    </li>
    </ul>
