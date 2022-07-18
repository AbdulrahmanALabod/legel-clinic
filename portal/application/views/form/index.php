<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Legal Clinic</title>
    <link rel="stylesheet" href="<?php echo base_url('assets/css/fontawesome-free-6.1.1-web/css/all.min.css') ?>">
    <link rel="stylesheet" href="<?php echo base_url(); ?>css/all.min.css" />
    <link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/main.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>css/index.css">
</head>

<body>
    <!-- header -->
    <header id="header">
        <div class="container">
            <nav class="navbar navbar-expand-lg nav-style bg-style  justify-content-between navbar-text-light pt-4">
                <div class="col-auto">
                    <!-- Logo -->
                    <a class="logo pt-4" href="<?php echo site_url('') ?>" title="legal-clinic-logo">
                        <img src="<?php echo base_url('assets/images/main/logo-nav.svg') ?>" alt=""></a>
                    <!-- Logo End -->
                </div>
                <div class="social-icons form-icon col-auto dash ps-2">
                    <div class=" social-icons-light mb-0 d-flex align-items-center">
                        <a class="turn-ar me-3" href="<?php echo base_url('payment/index/form'); ?>">
                            <img src="<?php echo base_url('assets/images/main/ar.svg') ?>" alt=""></a>

                        <?php if (isset($_SESSION['client_logged_in'])) { ?>
                            <div class="dropdown">
                                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" data-bs-display="static">
                                    <img src="<?php echo base_url('assets/images/main/profile.svg') ?>" alt="">
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-start" aria-labelledby="dropdownMenuLink">
                                    <li><a class="dropdown-item" href="<?php echo site_url('clients'); ?>"><i class="fa-solid fa-table-columns"></i>Dashboard</a></li>
                                    <li><a class="dropdown-item" href="<?php echo site_url('clients/profile'); ?>"><i class="fa-solid fa-gear"></i>Account setting</a></li>

                                    <li><a class="dropdown-item" href="<?php echo site_url('authentication/logout'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Sign Out</a></li>
                                </ul>
                            </div>
                        <?php } else { ?>
                            <div class="signin-out">
                                <a class="btn btn-signIn" href="<?php echo site_url('authentication/login'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Login</a>
                            </div>
                        <?php } ?>

                    </div>
                </div>
            </nav>
        </div>
    </header>
    <div class="container pro-bar mt-5" id="pro-bar">
        <!-- operations progress bar -->
        <div class="progress-container">
            <div class="progress" id="progress"></div>
            <div class="circle active2"><span>1</span></div>
            <div class="circle"><span>2</span></div>
            <div class="circle"><span>3</span></div>
            <div class="circle"><span>4</span></div>
            <div class="circle"><span>5</span></div>
        </div>
        <div class="operations-container">
            <div class="type">
                <p>Company type</p>
            </div>
            <div class="type spec-type">
                <p>Company data</p>
            </div>
            <div class="type">
                <p>Shareholders data</p>
            </div>
            <div class="type">
                <p id="mang-types"></p>
            </div>
            <div class="type">
                <p>Payment</p>
            </div>
        </div>
    </div>
    <section>
        <!-- btn-languages -->

        <form action="<?php echo site_url('payment/Cashier_Create'); ?>" id="form" method="POST" class="needs-validation" enctype="multipart/form-data" novalidate>
            <input type="hidden" name="userid" id="userid" value="">
            <div class="main-content" id="main">
                <!-- layer--0 welcome -->
                <div class="layer  mt-5">
                    <div class="welcome-img d-flex">
                        <div class="text-welcome d-flex  align-items-center align-self-end p-5">
                            <div class="col-12 col-md-8 py-5 ps-4 pe-2">
                                <h1 id="verticalHeadingTextSection" class="rlH1TextExpanded">We make it easy to incorporate your business</h1>
                                <div class="d-flex justify-content-center">
                                    <button type="button" class="btn btn-start" id="btnSubmit" onclick="changeLayer(1)">Get Started </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <!-- layer--1 money & people -->
                    <div class="layer">
                        <div class="buttons-tog">
                            <div class="switch">
                                <input type="radio" value="optionone" id="optionone" checked>
                                <label for="optionone">Corporations</label>
                                <input type="radio" value="optiontwo" id="optiontwo">
                                <label for="optiontwo" class="right">Partnerships</label>
                                <span aria-hidden="true" id="span-right"></span>
                            </div>
                        </div>
                        <div id="choice-Money">
                            <div class="pref text-center">
                                <p>A Corporation enjoys a legal entity separated from its owners.<br>
                                    Each shareholder has a limited liability – limited to the amount of shares he owns in the company’s capital</p>
                            </div>
                            <div class="choice d-flex justify-content-center flex-column">
                                <div class="form-check d-flex  mt-3">
                                    <div>
                                        <input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios1" value="LimitedLiabilityCompany" onclick="checkboxSelection()" required>
                                    </div>
                                    <div class="ml-3">
                                        <label class="form-check-label" for="exampleRadios1">
                                            <h3>Limited Liability Company (LLC)</h3>
                                            <p>LLC is the least complicated and the most recommended to Start-ups.
                                                It is a company with a minimum of (2) shareholders whether Egyptians or foreigners,
                                                and whether natural persons or Juridical persons (companies).
                                                The liability of the shareholders is limited to their shares. There is no required minimum capital for LLC.
                                            </p>
                                        </label>
                                    </div>
                                    <div class="ml-8">
                                        <a download="limited-responsibilites-comp" class="btn down" id="down-1" style="display: none;" href="<?php echo base_url('assets/files/limited-responsibilites-comp.pdf'); ?>">Required Documents</a>
                                    </div>
                                </div>
                                <div class="form-check d-flex  mt-3">
                                    <div><input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios2" value="JointStockIncorporation" onclick="checkboxSelection()" required></div>
                                    <div class="ml-3">
                                        <label class="form-check-label" for="exampleRadios2">
                                            <h3>Egyptian Joint Stock Company (JSC)</h3>
                                            <p>JSC is a company with a minimum of (3) shareholders
                                                whether Egyptians or foreigners,and whether natural persons
                                                or juridical persons (companies).The shareholders’ liability is limited to their shares in the company’s capital.
                                                The required minimum capital is 250 thousand Egyptian Pounds.
                                                10% shall be paid to incorporate, 25% shall be paid within the first (3) months after incorporation,
                                                and 100% shall be paid within (5) years. All amounts must be deposited at one of the commercial banks.
                                                JSC is managed though a Board of Directors,which must be consisted of a minimum of 3 members regardless of their nationalities.</p>
                                        </label>
                                    </div>
                                    <div class="ml-8">
                                        <a download="egy-corporation-comp" class="btn down" id="down-2" style="display: none;" href="<?php echo base_url('assets/files/egy-corporation-comp.pdf'); ?>">Required Documents</a>
                                    </div>
                                </div>
                                <div class="form-check d-flex mt-3">
                                    <div><input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios3" value="OPCrequirements" onclick="checkboxSelection()" required></div>
                                    <div class="ml-3">
                                        <label class="form-check-label" for="exampleRadios3">
                                            <h3>One Person Company</h3>
                                            <p>It is a company with only one owner, whether Egyptians or foreigners,
                                                and whether natural persons or juridical persons (companies).</p>
                                        </label>
                                    </div>
                                    <div class="ml-8">
                                        <a download="one-person-comp-with-limited-resp" class="btn down" id="down-3" style="display: none;" href="<?php echo base_url('assets/files/one-person-comp-with-limited-resp.pdf'); ?>">Required Documents</a>
                                    </div>
                                </div>
                                <div class="invalid-feedback">You must Choose one company</div>
                            </div>
                        </div>
                        <div id="choice-people" style="display: none;">
                            <div class="pref text-center">
                                <p>Partnerships do not enjoy a separate legal entity from their owner.
                                    Each partner enjoys an unlimited liability along with a personal liability
                                    in all debts incurred by the partnership.
                                    A partner cannot transfer his share without the prior consent of the other partners.</p>
                            </div>
                            <div class="choice d-flex justify-content-center flex-column">
                                <div class="form-check d-flex  mt-3">
                                    <div><input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios4" value="SoleEntity" onclick="checkboxSelection()" required></div>
                                    <div class="ml-3">
                                        <label class="form-check-label" for="exampleRadios4">
                                            <h3>Sole Proprietorship</h3>
                                            <p>It is owned by one person “natural” and it is named after its owner.
                                                It is not possible for other partners to join the sole proprietorship.
                                                The owner is responsible of managing the project in full and the liability is unlimited.<br>
                                                <span style="color: #041851;">Note: Sole Proprietorship cannot be transferred to any other type of companies.</span>
                                            </p>
                                        </label>
                                    </div>
                                    <div class="ml-8">
                                        <a download="solo-company" class="btn down" id="down-4" style="display: none;" href="<?php echo base_url('assets/files/solo-company.pdf'); ?>">Required Documents</a>
                                    </div>
                                </div>
                                <div class="form-check d-flex  mt-3">
                                    <div><input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios5" value="Generalpartnership" onclick="checkboxSelection()" required></div>
                                    <div class="ml-3">
                                        <label class="form-check-label" for="exampleRadios5">
                                            <h3>General Partnership</h3>
                                            <p>It consists of a minimum of two partners, they enjoy the capacity of merchant.
                                                It is named after its partners followed by the word partners or CO
                                                and its name shall be named after a real partner’s name in the partnership.
                                                The partners’ liability is unlimited and joint.
                                            </p>
                                        </label>
                                    </div>
                                    <div class="ml-8">
                                        <a download="solidarity-comp" class="btn down" id="down-5" style="display: none;" href="<?php echo base_url('assets/files/solidarity-comp.pdf'); ?>">Required Documents</a>
                                    </div>
                                </div>
                                <div class="form-check d-flex  mt-3">
                                    <div><input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios6" value="LimitedPartnership" onclick="checkboxSelection()" required></div>
                                    <div class="ml-3">
                                        <label class="form-check-label" for="exampleRadios6">
                                            <h3>Limited Partnership</h3>
                                            <p>It consists of a minimum of (2) partners.
                                                The partners are divided into (2) types:
                                                1- General Partner (Enjoys the capacity of a merchant)
                                                The partnership is name after one or more of its general partners,
                                                followed by the word “Partners” or “CO” and the name must be real.
                                                General Partners have unlimited and personal liability.
                                                2- Limited Partner
                                                Limited Partners do not have the right to manage the partnership.Their liability is limited to their shares in the partnership capital.</p>
                                        </label>
                                    </div>
                                    <div class="invalid-feedback">You must Choose one company</div>
                                    <div class="ml-8">
                                        <a download="simple-recommendation-comp" class="btn down" id="down-6" style="display: none;" href="<?php echo base_url('assets/files/simple-recommendation-comp.pdf'); ?>">Required Documents</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- layer--2 chose name -->
                    <div class="layer">
                        <div class="comp-name pt-4">
                            <h4>Suggest a name for your company</h4>
                            <div id="form-in">
                                <div class="row g-3 justify-content-evenly pt-3" id="parent-el">
                                    <div class="col-md-4">
                                        <label for="inputtext1" class="form-label">First Suggestion</label>
                                        <input type="text" class="form-control lay2" name="company_name[]" id="inputtext1">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="inputtext2" class="form-label">Second Suggestion</label>
                                        <input type="text" class="form-control lay2" name="company_name[]" id="inputtext2">
                                    </div>
                                    <div class="col-md-4 align-self-end text-center">
                                        <button class="btn btn-add" id="btn-add-sug" type="button">Add suggestions</button>
                                        <!-- <button class="btn btn-outline-danger" id="btn-delete-sug">حذف اقتراحات</button> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="comp-info pt-4">
                            <h4>Basic Data</h4>
                            <div class="form-in">
                                <div class="row g-3 justify-content-start pt-3">
                                    <div class="col-md-4">
                                        <label for="floatingTextarea" class="form-label">Company’s Activity</label>
                                        <!-- <input type="text" class="form-control"  required> -->
                                        <textarea class="form-control lay2" placeholder="Company’s Activity" name="company_activity" id="floatingTextarea" style="resize: none;"></textarea>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="floatingTextarea2" class="form-label">Company’s Address</label>
                                        <!-- <input type="text" class="form-control" height="72px"  aria-label="Large" aria-describedby="inputGroup-sizing-sm" required> -->
                                        <textarea class="form-control lay2" placeholder="Company’s Address" name="company_address" id="floatingTextarea2" style="resize: none;"></textarea>
                                    </div>
                                </div>
                                <div class="row g-3 justify-content-start pt-3 pb-3">
                                    <div class="col-md-4">
                                        <label for="inputtext3" class="form-label">Capital</label>
                                        <input type="text" class="form-control lay2" id="inputtext3" name="capital_value" onkeyup="arabicValue(inputtext3)"></input>
                                        <div id="soloComp"><span>Minimum of 50 thousand EGP</span></div>
                                        <div id="partCompMoney"><span>Minimum of 250 thousand EGP</span></div>
                                    </div>
                                    <div class="col-md-4">
                                        <!-- <label for="inputtext4" class="form-label" style="display: none;">قيمه السهم</label> -->
                                        <label for="inputtext4" class="form-label" id="valueCor">Share value</label>
                                        <input type="text" class="form-control lay2" id="inputtext4" name="capital_share" onkeyup="arabicValue(inputtext4)"></input>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- layer--3 parts info -->
                    <div class="layer">
                        <div class="count">
                            <div class="col-lg-3 col-sm-4">
                                <label class="visually-hidden" for="specificSizeSelect">Preference</label>
                                <select class="form-select" id="specificSizeSelect">
                                    <option disabled selected class="OPT-padding" id="allCompOption">Number of Shareholders</option>
                                    <!-- <option  disabled id="partCompOption" class="OPT-padding">اختر عدد المساهمين</option> -->
                                </select>
                                <div class="oneComp">
                                    <div style="text-align: center ;background-color: var(--main-color);
                                    color: var(--bg-main-color);height: 50px;border-radius: 18px;display: flex;">
                                        <p style="margin: auto;padding-right: 1rem;padding-left: 1rem;font-weight: 400;">Owner’s Data</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="" id="oneCompDiv">
                        </div>
                        <div id="part-form" class="container"></div>
                        <div id="error-manger" class="error"></div>
                    </div>
                    <!-- layer---4 mangers names -->
                    <div class="layer">
                        <div class="mang-names pt-4">
                            <input type="hidden" id="imgclose" value="<?php echo site_url('assets/images/main/x-icon.svg') ?>">
                            <input type="hidden" id="iconupload" value="<?php echo site_url('assets/images/main/upload.svg') ?>">
                            <div class="row g-3 justify-content-center">
                                <div class="col-md-6">
                                    <label for="autocompleteinput" class="form-label" id="partName">Add Managers Names</label>
                                    <!-- <label for="inputtextAdd" class="form-label" value="Amsterdam,Washington,Sydney,Beijing,Cairo" data-role="tagsinput" style="display: none;">ادخل اسماء المساهمين</label> -->
                                    <input type="text" class="form-control" id="autocompleteinput" autocomplete="additional-name">
                                    <div id="error-mangerAdd" class="error"></div>
                                </div>
                                <div class="col-3 " style="text-align: center;padding-top: 2.1rem;">
                                    <button class="btn bttn-add" style="width: 10rem;" id="btn-add-mang" type="button">Add</button>
                                </div>
                            </div>
                        </div>
                        <div class="mang-details pt-4 pb-4">
                            <div class="row" id="card-newAdd">

                            </div>
                        </div>
                    </div>
                    <!-- layer---5 payment -->
                    <div class="layer">
                        <div class="d-flex justify-content-center align-items-center" style="height:20vh">
                            <div class="down-paper text-center">
                                <a download="incorporation-poa.docx" class="btn btn-down-paper" href="<?php echo base_url('assets/files/incorporation-poa.docx'); ?>">
                                    Download Power of Attorney <img src="<?php echo base_url(); ?>/images/Vector (1).svg">
                                </a>
                            </div>
                        </div>
                        <section class="pricing-365">
                            <div class="container">
                                <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3 g-4 justify-content-center">
                                    <div class="col">
                                        <label for="radio_1">
                                            <input type="radio" onclick="showPromoDiv()" name="plan_id" value="2" class="card-input-element hidden" id="radio_1" />
                                            <div class="card h-100">
                                                <div class="card-header d-flex justify-content-center">
                                                    <h2>Online Incorporation</h2>
                                                </div>
                                                <div class="card-body d-flex flex-column justify-content-center text-center">
                                                    <h2><span id="oldPrice">5000</span><span id='price'></span><small>LE</small></h2>
                                                    <p>One Time Payment</p>
                                                    <div id="promoDiv">
                                                        <div class="d-flex">
                                                            <input type="text" name="promo" id="promocode" class="form-control promo" placeholder="Add promo code">
                                                            <button type="button" class="btn btn-promo" id="promoApply">Apply</button>
                                                        </div>
                                                        <span id="codeApp" class="pt-2"></span>
                                                    </div>
                                                </div>
                                                <div class="card-footer">
                                                    <ul class="row row-cols-xxl-2 row-cols-xl-1 row-cols-lg-2 row-cols-1 gx-4 justify-content-center">
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>

                                                            <span>Incorporation</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M7.80296 1.13629L6.86296 0.196289L3.99962 3.05962L1.13629 0.196289L0.196289 1.13629L3.05962 3.99962L0.196289 6.86296L1.13629 7.80296L3.99962 4.93962L6.86296 7.80296L7.80296 6.86296L4.93962 3.99962L7.80296 1.13629Z" fill="#FB0F0F" />
                                                            </svg>

                                                            <span>IP registration</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M7.80296 1.13629L6.86296 0.196289L3.99962 3.05962L1.13629 0.196289L0.196289 1.13629L3.05962 3.99962L0.196289 6.86296L1.13629 7.80296L3.99962 4.93962L6.86296 7.80296L7.80296 6.86296L4.93962 3.99962L7.80296 1.13629Z" fill="#FB0F0F" />
                                                            </svg>
                                                            <span>Contracts/Agreements</span>
                                                        </li>

                                                        <li class="col">
                                                            <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M7.80296 1.13629L6.86296 0.196289L3.99962 3.05962L1.13629 0.196289L0.196289 1.13629L3.05962 3.99962L0.196289 6.86296L1.13629 7.80296L3.99962 4.93962L6.86296 7.80296L7.80296 6.86296L4.93962 3.99962L7.80296 1.13629Z" fill="#FB0F0F" />
                                                            </svg>
                                                            <span>Terms and Conditions</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M7.80296 1.13629L6.86296 0.196289L3.99962 3.05962L1.13629 0.196289L0.196289 1.13629L3.05962 3.99962L0.196289 6.86296L1.13629 7.80296L3.99962 4.93962L6.86296 7.80296L7.80296 6.86296L4.93962 3.99962L7.80296 1.13629Z" fill="#FB0F0F" />
                                                            </svg>
                                                            <span>Insurance File</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M7.80296 1.13629L6.86296 0.196289L3.99962 3.05962L1.13629 0.196289L0.196289 1.13629L3.05962 3.99962L0.196289 6.86296L1.13629 7.80296L3.99962 4.93962L6.86296 7.80296L7.80296 6.86296L4.93962 3.99962L7.80296 1.13629Z" fill="#FB0F0F" />
                                                            </svg>
                                                            <span>Tax Card Renewal</span>
                                                        </li>
                                                        <!-- <li class="col">
                                                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M10.0001 7.62939e-05C4.48612 7.62939e-05 0.00012207 4.48608 0.00012207 10.0001C0.00012207 15.5141 4.48612 20.0001 10.0001 20.0001C15.5141 20.0001 20.0001 15.5141 20.0001 10.0001C20.0001 4.48608 15.5141 7.62939e-05 10.0001 7.62939e-05ZM8.00112 14.4131L4.28812 10.7081L5.70012 9.29208L7.99912 11.5871L13.2931 6.29308L14.7071 7.70708L8.00112 14.4131Z" fill="#000086"/>
                                                        </svg>
                                                        <span>Different types of <br>Contracts /Agreements</span>
                                                    </li> -->
                                                    </ul>
                                                </div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col">
                                        <label for="radio_2">
                                            <input onclick="hidePromoDiv()" type="radio" name="plan_id" value="1" class="card-input-element hidden" id="radio_2" checked />
                                            <input type="radio" name="payment_way" value="BankCard" class="card-input-element hidden" id="bank_card"/>
                                            <div class="card h-100 card-x">
                                                <div class="card-header d-flex justify-content-center">
                                                    <svg width="83" height="41" viewBox="0 0 83 41" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M30.6528 21.6461C29.9664 19.1641 28.8815 17.0503 27.315 15.154C28.5881 13.3803 29.8446 11.6346 31.1011 9.88331C33.3374 6.7767 35.5792 3.67566 37.7933 0.557885C38.0811 0.150734 38.38 -0.00543362 38.8837 0.000143789C41.3635 0.0280308 43.8434 0.0112986 46.4948 0.0112986C43.8766 3.59757 41.3359 7.0723 38.7343 10.6363C40.6495 10.7645 42.3986 11.1159 44.0316 11.8968C49.7883 14.6408 52.8603 19.2422 53.0541 25.6451C53.2146 30.8655 57.3495 34.7809 62.381 34.2399C66.3388 33.816 69.5492 30.5365 69.8648 26.5821C70.1913 22.4994 67.6728 18.7737 63.8258 17.6582C60.3551 16.6543 56.569 18.0263 54.5209 21.027C54.4102 21.1887 54.2995 21.3505 54.1169 21.6126C53.4416 19.1809 52.3622 17.0614 50.7957 15.154C51.5042 14.1445 52.2127 13.1517 52.9102 12.1533C55.6225 8.29933 58.3403 4.44534 61.036 0.574617C61.3238 0.161889 61.6282 0.0112986 62.1264 0.0112986C68.9238 0.0224534 75.7211 0.0112986 82.524 0.0057212C82.6513 0.0057212 82.7731 0.0224534 83 0.0336082C82.8339 0.284592 82.7232 0.463069 82.5959 0.635968C81.2453 2.48767 79.8781 4.32264 78.5496 6.19107C78.2452 6.61495 77.9352 6.78785 77.4094 6.78785C73.4682 6.76554 69.5271 6.78785 65.586 6.77112C65.1099 6.77112 64.8221 6.92171 64.5509 7.30655C63.7925 8.39972 62.9899 9.46501 62.1652 10.5972C63.001 10.7199 63.7759 10.8092 64.5453 10.9598C71.3371 12.2983 76.4573 18.5004 76.5293 25.4666C76.6067 33.1188 71.5253 39.332 64.025 40.7599C56.2867 42.2323 48.2827 36.7664 46.7937 28.9469C46.5501 27.6641 46.539 26.3367 46.4062 25.026C46.0353 21.356 43.5611 18.4446 40.0628 17.5522C36.6752 16.6933 33.0772 18.1044 31.0513 21.0828C30.9351 21.2333 30.8354 21.3784 30.6528 21.6461Z" fill="#000086" />
                                                        <path d="M9.41938 17.3626C12.0154 13.8042 14.5229 10.363 17.119 6.81016C12.4084 6.81016 7.80861 6.81016 3.02612 6.81016C3.8066 5.73372 4.47637 4.80787 5.15167 3.8876C6.00411 2.72192 6.85101 1.54509 7.73112 0.401717C7.88057 0.206508 8.19055 0.0336082 8.42303 0.0280308C15.5968 0.0057212 22.7705 0.0112986 29.9442 0.0112986C30.0273 0.0112986 30.1158 0.0280308 30.3483 0.0447631C27.3537 4.16647 24.409 8.20451 21.5583 12.1143C22.931 13.2744 24.3536 14.2783 25.5437 15.5109C28.3667 18.4335 29.4793 22.0644 29.6232 26.0913C29.7948 30.9101 33.675 34.4797 38.4298 34.2399C41.0979 34.106 43.2677 32.9347 44.8563 30.7372C45.0113 30.5197 45.1608 30.3022 45.3157 30.0903C45.3268 30.0735 45.3545 30.068 45.4209 30.0401C46.0741 32.3882 47.1535 34.5132 48.7366 36.4262C47.242 37.9656 45.5261 39.1034 43.5721 39.8842C34.5275 43.4928 24.5861 37.7146 23.1414 27.9932C22.9421 26.649 22.9698 25.2658 22.7041 23.944C21.8129 19.5713 17.8607 17.2065 14.617 17.357C12.9343 17.424 11.2571 17.3626 9.41938 17.3626Z" fill="#000086" />
                                                        <path d="M0.0093888 25.7734C2.21243 25.7734 4.3712 25.7734 6.5355 25.7734C6.86761 29.8672 8.78836 32.7953 12.7461 33.8885C16.8533 35.0263 19.8257 33.1188 22.0122 29.7445C22.455 30.8711 22.8314 32.0312 23.3628 33.1132C23.8997 34.2064 24.5972 35.2159 25.2392 36.2923C22.8203 39.254 16.5987 42.4163 10.15 40.1352C2.94309 37.5863 -0.195417 30.8599 0.0093888 25.7734Z" fill="#000086" />
                                                    </svg>
                                                    <span class="recomend">
                                                        <img src="<?php echo base_url(); ?>/images/Group 1278.svg" alt="" srcset="">
                                                    </span>
                                                </div>
                                                <div class="card-body d-flex flex-column justify-content-center text-center">
                                                    <h2>12,500<small>LE/Year</small></h2>
                                                    <p>One Time Payment</p>
                                                </div>
                                                <div class="card-footer">
                                                    <ul class="row row-cols-xxl-2 row-cols-xl-1 row-cols-lg-2 row-cols-1 gx-4 justify-content-center">
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>Incorporation</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>IP registration</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>Contracts/Agreements</span>
                                                        </li>

                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>Terms and Conditions</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>Insurance File</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>Tax Card Renewal</span>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col">
                                        <label for="radio_3">
                                            <input onclick="installment()" type="radio" name="plan_id" value="1" class="card-input-element hidden" id="radio_3"/>
                                            <input type="radio" name="payment_way" value="BankInstallment" class="card-input-element hidden" id="bank_installment"/>
                                            <div class="card h-100 card-x">
                                                <div class="card-header d-flex justify-content-center">
                                                    <svg width="83" height="41" viewBox="0 0 83 41" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M30.6528 21.6461C29.9664 19.1641 28.8815 17.0503 27.315 15.154C28.5881 13.3803 29.8446 11.6346 31.1011 9.88331C33.3374 6.7767 35.5792 3.67566 37.7933 0.557885C38.0811 0.150734 38.38 -0.00543362 38.8837 0.000143789C41.3635 0.0280308 43.8434 0.0112986 46.4948 0.0112986C43.8766 3.59757 41.3359 7.0723 38.7343 10.6363C40.6495 10.7645 42.3986 11.1159 44.0316 11.8968C49.7883 14.6408 52.8603 19.2422 53.0541 25.6451C53.2146 30.8655 57.3495 34.7809 62.381 34.2399C66.3388 33.816 69.5492 30.5365 69.8648 26.5821C70.1913 22.4994 67.6728 18.7737 63.8258 17.6582C60.3551 16.6543 56.569 18.0263 54.5209 21.027C54.4102 21.1887 54.2995 21.3505 54.1169 21.6126C53.4416 19.1809 52.3622 17.0614 50.7957 15.154C51.5042 14.1445 52.2127 13.1517 52.9102 12.1533C55.6225 8.29933 58.3403 4.44534 61.036 0.574617C61.3238 0.161889 61.6282 0.0112986 62.1264 0.0112986C68.9238 0.0224534 75.7211 0.0112986 82.524 0.0057212C82.6513 0.0057212 82.7731 0.0224534 83 0.0336082C82.8339 0.284592 82.7232 0.463069 82.5959 0.635968C81.2453 2.48767 79.8781 4.32264 78.5496 6.19107C78.2452 6.61495 77.9352 6.78785 77.4094 6.78785C73.4682 6.76554 69.5271 6.78785 65.586 6.77112C65.1099 6.77112 64.8221 6.92171 64.5509 7.30655C63.7925 8.39972 62.9899 9.46501 62.1652 10.5972C63.001 10.7199 63.7759 10.8092 64.5453 10.9598C71.3371 12.2983 76.4573 18.5004 76.5293 25.4666C76.6067 33.1188 71.5253 39.332 64.025 40.7599C56.2867 42.2323 48.2827 36.7664 46.7937 28.9469C46.5501 27.6641 46.539 26.3367 46.4062 25.026C46.0353 21.356 43.5611 18.4446 40.0628 17.5522C36.6752 16.6933 33.0772 18.1044 31.0513 21.0828C30.9351 21.2333 30.8354 21.3784 30.6528 21.6461Z" fill="#000086" />
                                                        <path d="M9.41938 17.3626C12.0154 13.8042 14.5229 10.363 17.119 6.81016C12.4084 6.81016 7.80861 6.81016 3.02612 6.81016C3.8066 5.73372 4.47637 4.80787 5.15167 3.8876C6.00411 2.72192 6.85101 1.54509 7.73112 0.401717C7.88057 0.206508 8.19055 0.0336082 8.42303 0.0280308C15.5968 0.0057212 22.7705 0.0112986 29.9442 0.0112986C30.0273 0.0112986 30.1158 0.0280308 30.3483 0.0447631C27.3537 4.16647 24.409 8.20451 21.5583 12.1143C22.931 13.2744 24.3536 14.2783 25.5437 15.5109C28.3667 18.4335 29.4793 22.0644 29.6232 26.0913C29.7948 30.9101 33.675 34.4797 38.4298 34.2399C41.0979 34.106 43.2677 32.9347 44.8563 30.7372C45.0113 30.5197 45.1608 30.3022 45.3157 30.0903C45.3268 30.0735 45.3545 30.068 45.4209 30.0401C46.0741 32.3882 47.1535 34.5132 48.7366 36.4262C47.242 37.9656 45.5261 39.1034 43.5721 39.8842C34.5275 43.4928 24.5861 37.7146 23.1414 27.9932C22.9421 26.649 22.9698 25.2658 22.7041 23.944C21.8129 19.5713 17.8607 17.2065 14.617 17.357C12.9343 17.424 11.2571 17.3626 9.41938 17.3626Z" fill="#000086" />
                                                        <path d="M0.0093888 25.7734C2.21243 25.7734 4.3712 25.7734 6.5355 25.7734C6.86761 29.8672 8.78836 32.7953 12.7461 33.8885C16.8533 35.0263 19.8257 33.1188 22.0122 29.7445C22.455 30.8711 22.8314 32.0312 23.3628 33.1132C23.8997 34.2064 24.5972 35.2159 25.2392 36.2923C22.8203 39.254 16.5987 42.4163 10.15 40.1352C2.94309 37.5863 -0.195417 30.8599 0.0093888 25.7734Z" fill="#000086" />
                                                    </svg>
                                                </div>
                                                <div class="card-body d-flex flex-column justify-content-center text-center">
                                                    <h2>12,500<small>LE/Year</small></h2>
                                                    <p>One Time Payment</p>
                                                </div>
                                                <div class="card-footer">
                                                    <ul class="row row-cols-xxl-2 row-cols-xl-1 row-cols-lg-2 row-cols-1 gx-4 justify-content-center">
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>Incorporation</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>IP registration</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>Contracts/Agreements</span>
                                                        </li>

                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>Terms and Conditions</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>Insurance File</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>Tax Card Renewal</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <p class="note">Note:You can pay in installments through</p>

                                            </div>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                    <!-- layer preloader -->
                    <div id='wrapLoader'>
                        <div class="wrapper">
                            <div class="main-circle">
                                <div class="green-circle">
                                    <div class="brown-circle">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- buttons change-layers -->

                    <div id="but-chose">
                        <div class="btn-chose d-flex justify-content-center pb-3 pt-3">
                            <button class="btn pre " id="prev-1" type="button" onclick="changeLayer(-1);arrayEle = []; arrayNames = [];">Previous</button>
                            <button class="btn next ml-3" id="next-1" type="button" onclick="changeLayer(1)">next</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </section>
    <!-- footer -->
    <footer class="site-footer mt-5" id="footer">
        <div class="container">
            <div class="row pt-5 pb-5 justify-content-between">
                <div class="col-sm-6 col-md-6 col-lg-3 col-xl-2 spec-logo">
                    <div class="footer-widget">
                        <a href="<?php echo site_url('') ?>" class="footer-widget__Logo">
                            <img src="<?php echo base_url('assets/images/main/logofooter.svg') ?>" alt="logofooter" />
                        </a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 col-xl-2 pt-5 spec-hide">
                    <h3 class="footer-widget__title">Company</h3>
                    <ul class="list-unstyled footer-widget__contact">
                        <li>
                            <a href="<?php echo site_url('index/about') ?>">About Us</a>
                        </li>
                        <li>
                            <a href="">FAQs</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('index/price') ?>">Pricing</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('index/contact') ?>">Contact us</a>
                        </li>
                        <li>
                            <a href="">Events</a>
                        </li>
                    </ul>
                </div>

                <div class="col-sm-6 col-md-6 col-lg-3 col-xl-3 pt-5">
                    <h3 class="footer-widget__title">Get In Touch</h3>
                    <ul class="list-unstyled footer-widget__contact">
                        <li class="">
                            <!-- <i class="fa-solid fa-phone-volume"></i> -->
                            <i><img src="<?php echo base_url('assets/images/main/carbon_phone.svg') ?>" alt="carbon_phone"></i>
                            <a href="tel:666-888-0000">01000358970</a>
                        </li>
                        <li class="">
                            <!-- <i class="fa-solid fa-location-dot"></i> -->
                            <i><img src="<?php echo base_url('assets/images/main/akar-icons_location.svg') ?>" alt="akar-icons_location"></i>
                            <a href="<?php echo site_url('index/contact') ?>">Cairo, EGYPT</a>
                        </li>
                        <li class="">
                            <!-- <i class="fa-solid fa-envelope"></i> -->
                            <i><img src="<?php echo base_url('assets/images/main/carbon_email (1).svg') ?>" alt="carbon_email"></i>
                            <a href="mailto:info@thelegalclinics.com">info@thelegalclinics.com</a>
                        </li>
                    </ul>
                </div>

                <div class="col-sm-6 col-md-6 col-lg-3 col-xl-2 pt-5">
                    <h3 class="footer-widget__title">Follow us</h3>
                    <div class="mc-form__response"></div>
                    <div class="footer__social pt-1">
                        <a href="#"><img src="<?php echo base_url('assets/images/main/brandico_facebook.svg') ?>" alt="brandico_facebook"></a>
                        <a href="#"><img src="<?php echo base_url('assets/images/main/Frame.svg') ?>" alt="Frame"></a>
                        <a href="#"><img src="<?php echo base_url('assets/images/main/foundation_social-twitter.svg') ?>" alt="foundation_social-twitter"></a>
                        <a href="#"><img src="<?php echo base_url('assets/images/main/foundation_social-linkedin.svg') ?>" alt="foundation_social-linkedin"></a>
                    </div>
                    <p class="work-time">Work Time<br>
                        Sun- Thu: 9:00 - 18:00<br>
                        Closed on Weekends</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- search pop up -->
    <div class="search-popup">
        <div class="search-popup__overlay search-toggler"></div>
        <div class="search-popup__content">
            <form action="#">
                <label for="search" class="sr-only">search here</label>
                <input type="text" id="autocompleteinput" placeholder="Search Here...">
                <button type="submit" aria-label="search submit" class="thm-btn">
                    <i class="fa fa-search"></i>
                </button>
            </form>
        </div>
    </div>
    <!-- back top  -->
    <a id="backToTop" href="#" data-target="html" class="scroll-to-target scroll-to-top" style="display: inline;">
        <i class="fa fa-angle-up"></i>
    </a>
    <script src="<?php echo base_url(); ?>js/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>js/popper.min.js"></script>
    <script src="<?php echo base_url(); ?>js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>js/main.js?t=<?php echo time(); ?>"></script>
    <script>
        //download files.pdf
        function download(filename) {
            setTimeout(function() {
                DownloadFile(`${filename}.pdf`);
            }, 1000);
        };

        function download_docx(filename) {
            setTimeout(function() {
                DownloadFile(`${filename}.docx`);
            }, 1000);
        };

        function DownloadFile(fileName) {
            //Set the File URL.
            var url = "files/" + fileName;
            //Create XMLHTTP Request.
            var req = new XMLHttpRequest();
            req.open("GET", url, true);
            req.responseType = "blob";
            req.onload = function() {
                //Convert the Byte Data to BLOB object.
                var blob = new Blob([req.response], {
                    type: "application/octetstream"
                });
                //Check the Browser type and download the File.
                var isIE = false || !!document.documentMode;
                if (isIE) {
                    window.navigator.msSaveBlob(blob, fileName);
                } else {
                    var url = window.URL || window.webkitURL;
                    link = url.createObjectURL(blob);
                    var a = document.createElement("a");
                    a.setAttribute("download", fileName);
                    a.setAttribute("href", link);
                    document.body.appendChild(a);
                    a.click();
                    document.body.removeChild(a);
                }
            };
            req.send();
        };
    </script>
</body>

</html>