<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<nav id="sidebar" class="pcoded-navbar">
    <div class="nav-header">
      <a href="<?php echo site_url('') ?>" class="brand-logo">
        <img class="logo-abbr" src="<?php echo base_url('assets/images/main/logo-appr.svg')?>" alt="logo-appr">
        <img class="logo-compact" src="<?php echo base_url('assets/images/main/logo-nav.svg')?>" alt="logo-nav">
        <img class="brand-title" src="<?php echo base_url('assets/images/main/logo-nav.svg')?>" alt="logo-nav">
      </a>
    </div>
    <div class="navbar-content scroll-div ">
      <span id="navBarContent"></span>
      <ul class="nav pcoded-inner-navbar">
        <li class="nav-item pcoded-hasmenu">
          <a href="#!" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/companyprofile.svg"') ?>" alt="companyprofile">
              <span class="pcoded-mtext">Company profile</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
          </a>
          <ul class="pcoded-submenu" style="display: none;">
            <li class="inner-list">
              <a href="<?php echo base_url('clients/invoices') ?>" class="">
                <img src="<?php echo base_url('assets/images/main/invoice.svg"') ?>" alt="invoice" class="img-inner">
                <span>Invoice</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="<?php echo base_url('clients/statement') ?>" class="">
                <img src="<?php echo base_url('assets/images/main/balance$.svg"') ?> "alt="balance">
                <span>Balance</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="<?php echo base_url('contacts') ?>" class="">
                <img src="<?php echo base_url('assets/images/main/contacts.svg"') ?>" alt="contacts">
                <span>Contacts</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="<?php echo base_url('clients/projects') ?>" class="">
                <img src="<?php echo base_url('assets/images/main/mymatters.svg"') ?> "alt="mymatters">
                <span>My Matters</span>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="<?php echo site_url('payment/index')?>" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/onlineinco.svg"') ?>"alt="onlineinco">
              <span class="pcoded-mtext">Online Incorporation</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
          </a>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="#" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/makecontract.svg"') ?>"alt="makecontract">
              <span class="pcoded-mtext">Make a Contract</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

          </a>
          <ul class="pcoded-submenu" style="display: none;">
            <li class="inner-list">
              <a href="freeContracts.html" class="">
                <img src="<?php echo base_url('assets/images/main/freecontract.svg"') ?>"alt="freecontract" class="img-inner">
                <span>Free Contracts</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="" class="">
                <img src="<?php echo base_url('assets/images/main/paidcontract.svg"') ?>"alt="paidcontract">
                <span>paied contracts</span>
              </a>
            </li>

          </ul>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="<?php echo site_url('pickups/request_service'); ?>" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/requestservice.svg"') ?>"alt="requestservice">
              <span class="pcoded-mtext">Request service</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

          </a>
       
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="<?php echo site_url('pickups/ask'); ?>" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/askalaywer.svg"') ?>"alt="askalaywer">
              <span class="pcoded-mtext">Ask a Lawyer</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
          </a>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="#!" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/legalresource.svg"') ?>"alt="legalresource">
              <span class="pcoded-mtext">our Legal Resources</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

          </a>
        </li>
      </ul>
    </div>
    <span class="linesdashboard">
      <img src="<?php echo base_url('assets/images/main/linesdashboard.svg"') ?>"alt="linesdashboard">
    </span>
  </nav>