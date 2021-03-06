<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div id="sidebar">
    <!-- </div> -->
    <div class="navbar-content scroll-div ">
      <span id="navBarContent"></span>
      <ul class="nav pcoded-inner-navbar">
        <li class="nav-item pcoded-hasmenu">
          <a href="#!" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/comp-profile.svg"') ?>" alt="companyprofile">
              <span class="pcoded-mtext">My Company</span>
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
          <a href="#!" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/companyprofile.svg"') ?>"alt="companyprofile">
              <span class="pcoded-mtext">Company Documents</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
          </a>
          <ul class="pcoded-submenu" style="display: none;">
            <li class="inner-list">
              <a href="<?php echo site_url('pickups/officialDocuments') ?>" class="">
                <img src="<?php echo base_url('assets/images/main/freecontract.svg"') ?>"alt="freecontract" class="img-inner">
                <span>Official documents</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="<?php echo site_url('pickups/internalDocuments') ?>" class="">
                <img src="<?php echo base_url('assets/images/main/paidcontract.svg"') ?>"alt="paidcontract">
                <span>Internal documents</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="<?php echo site_url('pickups/dueDiligence') ?>" class="">
                <img src="<?php echo base_url('assets/images/main/paidcontract.svg"') ?>"alt="paidcontract">
                <span>Due diligence</span>
              </a>
            </li>

          </ul>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="<?php echo site_url('payment/index')?>" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/onlineinco.svg"') ?>"alt="onlineinco">
              <span class="pcoded-mtext">Start a Company</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
          </a>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="<?php echo site_url('clients/calendar'); ?>" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/calender.svg"') ?>"alt="calendar">
              <span class="pcoded-mtext">Calender</span>
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
              <a href="<?php echo site_url('pickups/freeContracts') ?>" class="">
                <img src="<?php echo base_url('assets/images/main/freecontract.svg"') ?>"alt="freecontract" class="img-inner">
                <span>Free Contracts</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="<?php echo site_url('pickups/paiedContracts') ?>" class="">
                <img src="<?php echo base_url('assets/images/main/paidcontract.svg"') ?>"alt="paidcontract">
                <span>paied contracts</span>
              </a>
            </li>

          </ul>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="#" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/requestservice.svg"') ?>"alt="requestservice">
              <span class="pcoded-mtext">Request service</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

          </a>
          <ul class="pcoded-submenu" style="display: none;">
            <li class="inner-list">
              <a href="<?php echo site_url('clients/open_ticket'); ?>" class="">
              <img src="<?php echo base_url('assets/images/main/requestservice.svg"') ?>"alt="TICKET">
                <span>Open Ticket</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="<?php echo base_url('surveys/survey/3/de5fbbfb2cf044b6b092d3638aa86dd5'); ?>" class="">
              <img src="<?php echo base_url('assets/images/main/companyprofile.svg"') ?>" alt="Send Documents">
                <span> Send Documents</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="<?php echo base_url('surveys/survey/4/65035651fac36c08126dae358f71f335'); ?>" class="">
              <img src="<?php echo base_url('assets/images/main/companyprofile.svg"') ?>" alt="Receive Documents">
                <span> Request Documents</span>
              </a>
            </li>
          </ul>
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
</div>