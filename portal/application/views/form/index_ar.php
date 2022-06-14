<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Legal Clinic</title>
    <link rel="stylesheet" href="<?php echo base_url(); ?>css/all.min.css" />
    <link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.16/css/intlTelInput.css" integrity="sha512-gxWow8Mo6q6pLa1XH/CcH8JyiSDEtiwJV78E+D+QP0EVasFs8wKXq16G8CLD4CJ2SnonHr4Lm/yY2fSI2+cbmw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>css/index-ar.css">
</head>

<body>
    <div class="container pro-bar" id="pro-bar">
        <div class="progress-container" dir="rtl">
            <div class="progress" id="progress"></div>
            <div class="circle active"><span>1</span></div>
            <div class="circle"><span>2</span></div>
            <div class="circle"><span>3</span></div>
            <div class="circle"><span>4</span></div>
            <div class="circle"><span>5</span></div>
        </div>
        <div class="operations-container" dir="rtl">
            <div class="type">
                <p>نوع الشركه</p>
            </div>
            <div class="type ">
                <p>بيانات الشركه</p>
            </div>
            <div class="type">
                <p id="mang-types"></p>
            </div>
            <div class="type">
                <p>بيانات المديرين</p>
            </div>
            <div class="type">
                <p>الدفع</p>
            </div>
        </div>
    </div>
    <section>
        <form action="<?php echo site_url('payment/Cashier_Create'); ?>" id="form" method="POST" class="needs-validation" enctype="multipart/form-data" novalidate>
            <input type="hidden" name="userid" id="userid" value="">
            <div class="main-content" id="main">
                <div class="container">
                    <div class="layer">
                        <div class="buttons-tog">
                            <div class="switch">
                                <input name="radio" type="radio" value="optionone" id="optionone" checked>
                                <label for="optionone">شركات الاموال</label>
                                <input name="radio" type="radio" value="optiontwo" id="optiontwo">
                                <label for="optiontwo" class="right">شركات الأشخاص</label>
                                <span aria-hidden="true" id="span-right"></span>
                            </div>
                        </div>
                        <div id="choice-Money">
                            <div class="pref text-center">
                                <p>لھا كیان قانوني منفصل عن أصحابھا
                                    <br>یكون لكل شریك/مساھم مسئولیة محدودة – محدودة بقیمة
                                    الحصص/الاسهم التي یملكھا
                                </p>
                            </div>
                            <div class="choice d-flex justify-content-center flex-column align-items-end">
                                <div class="form-check d-flex flex-row-reverse mt-3">
                                    <div>
                                        <input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios1" value="LimitedLiabilityCompany" onclick="checkboxSelection()" required>
                                    </div>
                                    <div class="mr-3">
                                        <label class="form-check-label" for="exampleRadios1">
                                            <h2>شركة ذات مسئولية محدودة</h2>
                                            <p>الشركة ذات المسؤولیة المحدودة ھي أقل الشركات تعقیدًا
                                                .والاكثر توصیة بھا للشركات الناشئة<br>
                                                ھي شركة بھا مساھمان اثنان على الاقل سواء كانوا مصریین أو
                                                أجانب، طبیعیین أو اعتباریین (شركات). <br>تقتصر مسؤولیة
                                                المساھمین على قیمة حصصھم. لا یوجد حد أدنى لرأس المال
                                                المطلوب لشركة ذات مسؤولیة محدودة</p>
                                        </label>
                                    </div>
                                    <div class="mr-8">
                                        <button class="btn down" id="down-1" type="button" onclick="download('limited-responsibilites-comp');" style="display: none;">المستندات المطلوبة</button>
                                    </div>
                                </div>
                                <div class="form-check d-flex flex-row-reverse mt-3">
                                    <div><input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios2" value="JointStockIncorporation" onclick="checkboxSelection()" required></div>
                                    <div class="mr-3">
                                        <label class="form-check-label" for="exampleRadios1">
                                            <h2>شركة مساهمة مصري</h2>
                                            <p>شركة المساھمة ھي شركة بھا ثلاثه مساھمین على الاقل سواء
                                                كانوا مصریین أو أجانب، طبیعیین أو اعتباریین (شركات).
                                                <br>تقتصر مسؤولیة المساھمین على قیمة أسھمھم
                                                الحد األدنى لرأس المال ھو ٢٥٠ ألف جنيه مصري.<br> خلال
                                                مرحلة التأسیس، یتم دفع ١٠٪ مع زیادة تحدث في غضون ثلاثه
                                                اشهر. یتم إیداع المبلغ المتبقي في غضون خمس سنوات<br>یجب أن تدار من قبل مجلس إدارة، والذي یجب أن یتألف من
                                                ثلاثه (٣) أعضاء على الاقل من أي جنسیة
                                            </p>
                                        </label>
                                    </div>
                                    <div class="mr-8">
                                        <button class="btn down" id="down-2" style="display: none;" onclick="download('egy-corporation-comp');" type="button">المستندات المطلوبة</button>
                                    </div>
                                </div>
                                <div class="form-check d-flex flex-row-reverse mt-3">
                                    <div><input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios3" value="OPCrequirements" onclick="checkboxSelection()" required></div>
                                    <div class="mr-3">
                                        <label class="form-check-label" for="exampleRadios1">
                                            <h2>شركة شخص واحد ذات مسئولية محدودة</h2>
                                            <p>شركة الشخص الواحد ھي في الاساس شركة ذات مؤسس
                                                منفرد، سواء كان مصریا أو أجنبیًا، شخصا طبیعیًا أو اعتباري</p>
                                        </label>
                                    </div>
                                    <div class="mr-8">
                                        <button class="btn down" id="down-3" style="display: none;" onclick="download('one-person-comp-with-limited-resp');" type="button">المستندات المطلوبة</button>
                                    </div>
                                </div>
                                <div class="invalid-feedback">يجب اختيار شركه</div>
                            </div>
                        </div>
                        <div id="choice-people" style="display: none;">
                            <div class="pref mt-2 mb-2 text-center">
                                <p>لیس لھا كیان قانوني منفصل عن أصحابھا
                                    یتحمل كل شریك مسؤولیة غیر محدودة وھو مسؤول شخصیًا
                                    عن جمیع دیون الشركة<br>
                                    لا یجوز للشریك نقل حصته في الشركة دون موافقة جمیع
                                    الشركاء</p>
                            </div>
                            <div class="choice d-flex justify-content-center flex-column align-items-end">
                                <div class="form-check d-flex flex-row-reverse mt-3">
                                    <div><input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios4" value="SoleEntity" onclick="checkboxSelection()" required></div>
                                    <div class="mr-3">
                                        <label class="form-check-label" for="exampleRadios4">
                                            <h2>المنشاة الفردية</h2>
                                            <p>یمتلك المنشأة الفردیة شخص واحد "طبیعي" وتسمى على اسم صاحبھا<br> ولا
                                                یجوز ان یدخل في المنشأة الفردیة أي شركاء إضافیین باستثناء صاحب
                                                المنشأة <br>والذي یكون مسئول عن إدارة المنشأة بشكل كامل وتكون مسئولیته
                                                تجاه المنشأة مسئولیة غیر محدودة<br>
                                                <span style="color: #041851;">ملحوظة: لا یجوز تحویل المنشأة الفردیة الى أي نوع اخر من الشركات</span>
                                            </p>
                                        </label>
                                    </div>
                                    <div class="mr-8">
                                        <button class="btn down" id="down-4" type="button" onclick="download('solo-company');" style="display: none;">المستندات المطلوبة</button>
                                    </div>
                                </div>
                                <div class="form-check d-flex flex-row-reverse mt-3">
                                    <div><input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios5" value="Generalpartnership" onclick="checkboxSelection()" required></div>
                                    <div class="mr-3">
                                        <label class="form-check-label" for="exampleRadios1">
                                            <h2>شركة التضامن</h2>
                                            <p>ھي أحد شركات الاشخاص وتتكون من شخصین أو أكثر
                                                (شركاء) ویعاملون معاملة التاجر <br>
                                                ویتم تسمیتھا باسم شركائھا،وتليها كلمه شركاء او CO ويجب ان يكون اسمها باسم شريك حقيقى<br>
                                                وحال فى الشركه كما تكون المسؤوليه على الشركاء مسؤوليه شخصيه وليست فى حدود<br>
                                                مساهمه كل شريك فى راس مال الشركه مثلما هو الحال فى شركات الاموال
                                            </p>
                                        </label>
                                    </div>
                                    <div class="mr-8">
                                        <button class="btn down" id="down-5" style="display: none;" onclick="download('solidarity-comp');" type="button">المستندات المطلوبة</button>
                                    </div>
                                </div>
                                <div class="form-check d-flex flex-row-reverse mt-3">
                                    <div><input class="form-check-input radioComp" type="radio" name="company_type" id="exampleRadios6" value="LimitedPartnership" onclick="checkboxSelection()" required></div>
                                    <div class="mr-3">
                                        <label class="form-check-label" for="exampleRadios1">
                                            <h2>شركة التوصية البسيطة</h2>
                                            <p>ھي أحد شركات الاشخاص وتتكون من شخصین أو أكثر (شركاء)<br>
                                                وینقسم الشركاء في ھذا النوع من الشركات الى نوعین "شركاء
                                                متضامنین" ویعاملون معاملة التاجر <br>
                                                ویتم تسمیتھا باسم احد او كل الشركاء المتضمنين،وتليها كلمه شركاء او CO ويجب ان يكون اسمها
                                                <br> باسم شريك حقيقى وحال فى الشركه كما تكون المسؤوليه على الشركاء مسؤوليه شخصيه
                                                <br> وليست محدوده على حسب مساهمه كل شريك فى رأس مال الشركه وتتضمن نوع اخر من الشركاء
                                                <br>وهم " الموصيين" والشريك الموصى لا يكون للشركاء الموصيين الحق فى اداره الشركه ، ولكن
                                                <br>تقتصر مسؤوليه هؤلاء الشركاء على قدر مساهمتهم فى راس مال الشركه ولذلك يتمتع الشريك
                                                <br> الموصى بمسؤوليه محدوده مثلما هو الحال فى شركات الاموال.
                                            </p>
                                        </label>
                                    </div>
                                    <div class="invalid-feedback">يجب اختيار شركه</div>
                                    <div class="mr-8">
                                        <button class="btn down" id="down-6" style="display: none;" onclick="download('simple-recommendation-comp');" type="button">المستندات المطلوبة</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- layer--2 chose name -->
                    <div class="layer">
                        <div class="comp-name pt-4">
                            <h3>اقترح اسم لشركتك</h3>
                            <div id="form-in" dir="rtl">
                                <div class="row g-3 justify-content-evenly pt-3" id="parent-el">
                                    <div class="col-md-4">
                                        <label for="inputtext1" class="form-label">الاقتراح الاول</label>
                                        <input type="text" class="form-control lay2" name="company_name[]" id="inputtext1">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="inputtext2" class="form-label">الاقتراح الثانى</label>
                                        <input type="text" class="form-control lay2" name="company_name[]" id="inputtext2">
                                    </div>
                                    <div class="col-md-4 align-self-end text-center">
                                        <button class="btn btn-add" id="btn-add-sug" type="button">اضافه اقتراحات</button>
                                        <!-- <button class="btn btn-outline-danger" id="btn-delete-sug">حذف اقتراحات</button> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="comp-info pt-4">
                            <h3>معلومات اساسيه</h3>
                            <div class="form-in" dir="rtl">
                                <div class="row g-3 justify-content-start pt-3">
                                    <div class="col-md-4">
                                        <label for="floatingTextarea" class="form-label">نشاط الشركه</label>
                                        <!-- <input type="text" class="form-control"  required> -->
                                        <textarea class="form-control lay2" placeholder="نشاط الشركه" name="company_activity" id="floatingTextarea" style="resize: none;"></textarea>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="floatingTextarea2" class="form-label">عنوان الشركه</label>
                                        <!-- <input type="text" class="form-control" height="72px"  aria-label="Large" aria-describedby="inputGroup-sizing-sm" required> -->
                                        <textarea class="form-control lay2" placeholder="عنوان الشركه" name="company_address" id="floatingTextarea2" style="resize: none;"></textarea>
                                    </div>
                                </div>
                                <div class="row g-3 justify-content-start pt-3 pb-3">
                                    <div class="col-md-4">
                                        <label for="inputtext3" class="form-label">قيمه رأس المال</label>
                                        <input type="text" class="form-control lay2" id="inputtext3" name="capital_value" onkeyup="arabicValue(inputtext3)"></input>
                                        <div id="soloComp"><span>راس المال يجب الا يقل عن 50 الف جنيها</span></div>
                                        <div id="partCompMoney"><span>راس المال يجب الا يقل عن 250 الف جنيها</span></div>
                                    </div>
                                    <div class="col-md-4">
                                        <!-- <label for="inputtext4" class="form-label" style="display: none;">قيمه السهم</label> -->
                                        <label for="inputtext4" class="form-label" id="valueCor">قيمه الحصه</label>
                                        <input type="text" class="form-control lay2" id="inputtext4" name="capital_share" onkeyup="arabicValue(inputtext4)"></input>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- layer--3 parts info -->
                    <div class="layer">
                        <div class="count">
                            <div class="col-sm-3" dir="rtl">
                                <label class="visually-hidden" for="specificSizeSelect">Preference</label>
                                <select class="form-select" id="specificSizeSelect">
                                    <option disabled selected class="OPT-padding" id="allCompOption">اختر عدد المديرين</option>
                                    <!-- <option  disabled id="partCompOption" class="OPT-padding">اختر عدد المساهمين</option> -->
                                </select>
                                <div class="oneComp">
                                    <div style="text-align: center ;background-color: var(--main-color);
                                    color: var(--bg-main-color);height: 50px;border-radius: 18px;display: flex;">
                                        <p style="margin: auto;padding-right: 1rem;padding-left: 1rem;font-weight 400;">بيانات المالك</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="oneComp" id="oneCompDiv">
                            <div class="row g-3 justify-content-between pt-3" dir="rtl" data-id="item_0">
                                <div class="col-md-4">
                                    <label for="inputtext1" class="form-label mang" id="mangName">اسم المالك</label>
                                    <input type="text" class="form-control mangSolo mangOneInfo" id="name" name="malek_name">
                                </div>
                                <div class="col-md-4">
                                    <label for="inputtext2" class="form-label mang">جنسيه المالك</label>
                                    <input type="text" class="form-control mangSolo mangOneInfo" id="nation" name="malek_nationality">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="formFileMultiple" class="form-label">اضافه البطاقه الشخصية</label>
                                    <input class="form-control mangSolo mangOneInfo" name="malek_personal_id" type="file" id="id" accept="image/png, image/gif, image/jpeg">
                                </div>
                                <div class="col-md-4 x-last align-self-center">
                                    <button class="btn btn-outline-danger" type="reset" id="partCompDel">حذف المالك</button>
                                </div>
                                <hr>
                            </div>
                        </div>
                        <div id="part-form" class="container"></div>
                        <div id="error-manger" class="error"></div>
                    </div>
                    <!-- layer---4 mangers names -->
                    <div class="layer">
                        <div class="mang-names pt-4">
                            <div class="row g-3 justify-content-center" dir="rtl">
                                <div class="col-md-6">
                                    <label for="autocompleteinput" class="form-label" id="partName">ادخل اسماء المديرين</label>
                                    <input type="text" class="form-control" id="autocompleteinput" autocomplete="additional-name">
                                    <div id="error-mangerAdd" class="error"></div>
                                </div>
                                <div class="col-3 " style="text-align: center;padding-top: 2.1rem;">
                                    <button class="btn bttn-add" style="width: 10rem;" id="btn-add-mang" type="button">اضافه</button>
                                </div>
                            </div>
                        </div>
                        <div class="mang-details pt-4 pb-4" dir="rtl">
                            <div class="row" id="card-newAdd">

                            </div>
                        </div>
                    </div>
                    <!-- layer---5 calender -->
                    <div class="layer">
                        <div class="d-flex justify-content-center align-items-center" style="height:20vh">
                            <div class="down-paper text-center">
                                <button onclick="download_docx('incorporation-poa');" type="button" class="btn btn-down-paper">
                                    <img src="<?php echo base_url(); ?>/images/Vector (1).svg"> تحميل التوكيل </button>
                            </div>
                        </div>
                        <section class="pricing-365">
                            <div class="container">
                                <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3 g-4 justify-content-center">
                                    <div class="col">
                                        <label for="radio_1">
                                            <input type="radio" name="plan_id" value="2" class="card-input-element hidden" id="radio_1" name="radio" />
                                            <div class="card h-100">
                                                <div class="card-header d-flex justify-content-center">
                                                    <h2>Online Incorporation</h2>
                                                </div>
                                                <div class="card-body d-flex flex-column justify-content-center text-center">
                                                    <h2><span id="oldPrice">5000</span><span id='price'></span><small>LE</small></h2>
                                                    <p>الدفع لمره واحده</p>
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
                                                            <span>تاسيس الشركه</span>
                                                        </li>
                                                        <li class="col">
                                                            <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>استخراج سجل تجارى</span>

                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>استخراج بطاقه ضريبيه</span>

                                                        </li>
                                                        <li class="col">
                                                            <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M7.80296 1.13629L6.86296 0.196289L3.99962 3.05962L1.13629 0.196289L0.196289 1.13629L3.05962 3.99962L0.196289 6.86296L1.13629 7.80296L3.99962 4.93962L6.86296 7.80296L7.80296 6.86296L4.93962 3.99962L7.80296 1.13629Z" fill="#FB0F0F" />
                                                            </svg>
                                                            <span>صياغه الشروط والأحكام</span>

                                                        </li>
                                                        <li class="col">
                                                            <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M7.80296 1.13629L6.86296 0.196289L3.99962 3.05962L1.13629 0.196289L0.196289 1.13629L3.05962 3.99962L0.196289 6.86296L1.13629 7.80296L3.99962 4.93962L6.86296 7.80296L7.80296 6.86296L4.93962 3.99962L7.80296 1.13629Z" fill="#FB0F0F" />
                                                            </svg>
                                                            <span>صياغه و اعتماد الجمعيات العموميه</span>

                                                        </li>
                                                        <li class="col">
                                                            <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M7.80296 1.13629L6.86296 0.196289L3.99962 3.05962L1.13629 0.196289L0.196289 1.13629L3.05962 3.99962L0.196289 6.86296L1.13629 7.80296L3.99962 4.93962L6.86296 7.80296L7.80296 6.86296L4.93962 3.99962L7.80296 1.13629Z" fill="#FB0F0F" />
                                                            </svg>
                                                            <span>خدمات قانونيه غير محدوده لمده 12 شهر</span>

                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col">
                                        <label for="radio_2">
                                            <input type="radio" name="plan_id" value="1" class="card-input-element hidden" id="radio_2" name="radio" checked />
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
                                                    <h2>12500<small>LE/Year</small></h2>
                                                    <p>الدفع لمره واحده</p>
                                                </div>
                                                <div class="card-footer">
                                                    <ul class="row row-cols-xxl-2 row-cols-xl-1 row-cols-lg-2 row-cols-1 gx-4 justify-content-center">
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>تاسيس الشركه</span>

                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>تسجيل العلامه التجاريه</span>

                                                        </li>
                                                        <li class="col">

                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>صياغه العقود والاتفاقيات</span>

                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>صياغه الشروط والأحكام</span>

                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>صياغه و اعتماد الجمعيات العموميه</span>

                                                        </li>
                                                        <li class="col">
                                                            <svg width="9" height="8" viewBox="0 0 9 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M6.96967 0.970475C7.11054 0.836364 7.298 0.762222 7.49249 0.763693C7.68698 0.765165 7.87329 0.842135 8.01212 0.978363C8.15094 1.11459 8.23141 1.29942 8.23655 1.49385C8.24169 1.68828 8.1711 1.8771 8.03967 2.02048L4.04967 7.01048C3.98106 7.08437 3.89825 7.14368 3.8062 7.18484C3.71415 7.22601 3.61474 7.24819 3.51392 7.25005C3.4131 7.25192 3.31294 7.23344 3.21943 7.19571C3.12591 7.15798 3.04097 7.10178 2.96967 7.03048L0.323669 4.38448C0.249983 4.31581 0.19088 4.23301 0.149888 4.14101C0.108896 4.04901 0.0868544 3.9497 0.0850777 3.849C0.0833009 3.7483 0.101826 3.64827 0.139547 3.55488C0.177268 3.46149 0.233412 3.37666 0.304631 3.30544C0.37585 3.23422 0.460684 3.17807 0.554072 3.14035C0.64746 3.10263 0.747489 3.08411 0.848192 3.08588C0.948895 3.08766 1.04821 3.1097 1.14021 3.15069C1.23221 3.19169 1.31501 3.25079 1.38367 3.32448L3.47767 5.41748L6.95067 0.992475C6.95692 0.984776 6.9636 0.977431 6.97067 0.970475H6.96967Z" fill="#43C62E" />
                                                            </svg>
                                                            <span>خدمات قانونيه غير محدوده لمده 12 شهر</span>

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
                            <button class="btn next mr-3" id="next-1" type="button" onclick="changeLayer(1)">التالي</button>
                            <button class="btn pre " id="prev-1" type="button" onclick="changeLayer(-1);arrayEle = []; arrayNames = [];">السابق</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- btn-languages -->
        <div class="turn-en">
            <div class="cir-4">
            <a href="<?php echo base_url('payment/index'); ?>"></a>
            </div>
            <div class="turn-en-mob" style="display:none;">
                <input type="checkbox" class="check" onclick="location.href ='../../index.php';" />
            </div>
        </div>
    </section>
    <img id="loadingimage" src="images/loading.gif" style="display:none;" />
    <div id="area" style="display:none;"></div>
    <script src="<?php echo base_url(); ?>js/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>js/popper.min.js"></script>
    <script src="<?php echo base_url(); ?>js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.16/js/intlTelInput.min.js" integrity="sha512-Po9nSdYOcWIcoADdRjkAbRYPpR8OHjxzA/3RDUERZcDewTLzRTxbG4bUX7Sr7lVEcO3wTCzphdOBWgNFKVmxaA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- <script src="js/rome.js"></script> -->

    <script src="<?php echo base_url(); ?>js/main_ar.js?t=<?php echo time(); ?>"></script>
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