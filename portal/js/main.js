/*
////// i messed with this file :( /////////////
*/
//////////////////////main variables//////////////////////////////////
const form = document.getElementById('form');

const next = document.getElementById('next-1');
const prev = document.getElementById('prev-1');

const divButChose = document.getElementById('but-chose');
const proBar = document.getElementById('pro-bar');

const layer = document.getElementsByClassName('layer');
const wrapLoader =  document.getElementById('wrapLoader');

// console.log([...layer]);
const progress = document.getElementById('progress');
const circles = document.querySelectorAll('.circle');

const mangTypes = document.getElementById('mang-types');

const partCompDel = document.getElementById('partCompDel');
const allCompOption = document.getElementById('allCompOption');
const partName = document.getElementById('partName');
const mangPart = document.getElementsByClassName('mangPart');
const mangBlock = document.getElementsByClassName('mangBlock');
const h6part = document.getElementsByClassName('h6part');
const partComp = document.getElementsByTagName('label');
const mangers = document.getElementsByClassName('mang');
const oneComp = document.getElementsByClassName('oneComp');
const mangSolo = document.getElementsByClassName('mangSolo');
const partCompMoney = document.getElementById('partCompMoney');
const select = document.querySelector('#specificSizeSelect');
const parentCountEl = document.getElementById('part-form');
const formLang =  document.getElementsByClassName('turn-en');
const header = document.getElementById('header');
const footer = document.getElementById('footer');
const backToTop = document.getElementById('backToTop');
const imgclose = document.getElementById('imgclose');
const iconupload = document.getElementById('iconupload');
const divOneManger = document.getElementById('oneCompDiv'); 
const divOneComp = document.createElement('div');

///////// show layers

let currLayer = 0;
showLayer(currLayer);

function showLayer(curr){
    layer[curr].style.display = 'block';
    // console.log(layer.length - 1)
    if(curr == 0){
        divButChose.style.display = 'none';
        proBar.style.display = 'none';
    } else{
        divButChose.style.display = 'block';
        proBar.style.display = 'block';
        mangTypes.innerHTML = "Management data";
        // prev.removeAttribute('disabled');
    }
    if(curr == 2 && checkbox2.checked){
        document.getElementById('valueCor').innerHTML = 'Share value';
        // console.log('jjf')
        // mangTypes.innerHTML = "بيانات المساهمين";
        partCompMoney.style.display = 'block';
    }else{
        document.getElementById('valueCor').innerHTML = 'Share value';
        // mangTypes.innerHTML = "بيانات الشركاء";
        partCompMoney.style.display = 'none';
        // parentCountEl.innerHTML = '';
    }

    if(curr == 2 && checkbox3.checked){
        document.getElementById('soloComp').style.display = 'block';

    }else{
        document.getElementById('soloComp').style.display = 'none';
    }

    if(curr == 3 && checkbox2.checked){
        allCompOption.innerHTML = 'Number of Shareholders';  
    } else{
        allCompOption.innerHTML = 'Number of Shareholders';
    }
    if((curr == 2 && checkbox2.checked) || (curr == 3 && checkbox2.checked) || (curr == 4 && checkbox2.checked) || (curr == 5 && checkbox2.checked)){
        // disOpt1();
        mangTypes.innerHTML = "Shareholders data";
    }else{
        // EnableOpt1();
        mangTypes.innerHTML = "Management data";
    }
//////////////////////edit--->2
if((curr == 3 && checkbox3.checked) || (curr == 3 && checkbox4.checked)){
    parentCountEl.innerHTML = '';
    document.getElementById('soloComp').style.display = 'block';
    document.getElementById('specificSizeSelect').style.display = 'none';
    [...oneComp].forEach(e =>{ 
        e.style.display='block';
       });
       divOneComp.classList.add('row', 'g-3', 'justify-content-between' ,'pt-3');
       divOneComp.innerHTML=`<div class="col-md-4">
       <label for="inputtext1" class="form-label mang" id="mangName">Owner’s Name</label>
       <input type="text" class="form-control mangSolo mangOneInfo" id="name" name="malek_name">
   </div>
   <div class="col-md-4">
       <label for="inputtext2" class="form-label mang">Owner’s Nationality</label>
       <input type="text" class="form-control mangSolo mangOneInfo" id="nation" name="malek_nationality">
   </div>
   <div class="col-md-6 mb-3">
       <label for="formFileMultiple" class="form-label">Add National ID</label>
       <input class="form-control mangSolo mangOneInfo" name="malek_personal_id" type="file" id="id" accept="image/png, image/gif, image/jpeg ,application/pdf">
   </div>
   <div class="col-md-4 x-last align-self-center">
       <button class="btn btn-outline-danger" type="reset" id="partCompDel">Remove owner</button>
   </div>`;
   divOneManger.appendChild(divOneComp);
    }else{
    document.getElementById('specificSizeSelect').style.display = 'block';
    [...oneComp].forEach(e =>{
    e.style.display='none';
   });
}
    if((curr == 3 && checkbox1.checked) || (curr == 3 && checkbox2.checked) || (curr == 3 && checkbox5.checked) || (curr == 3 && checkbox6.checked)){
        divOneManger.innerHTML='';
    }
    if(curr == 4 && checkbox2.checked){
        partName.innerHTML = 'Add Board of Directors Names';
            
    }else{
        partName.innerHTML = 'Add Managers Names';
           
    }
    if (curr == (layer.length - 1)) {
        document.getElementById("next-1").innerHTML = "save";
      } else {
        document.getElementById("next-1").innerHTML = "next";
      }
      if (curr == layer.length){
        divButChose.style.display = 'none';
        proBar.style.display = 'none';
        header.style.display = 'none';
        footer.style.display = 'none';
        backToTop.style.display = 'none';
    }  
    //update progress bar 
    update();
}
// console.log('hi djks')
//////// change layers
function changeLayer(curr){
    // console.log(curr);
    //hold for validation
     if (curr == 1 && !validateForm()) return false;
    layer[currLayer].style.display = "none";
    currLayer = currLayer + curr;
    // console.log(currLayer);
        if (currLayer >= layer.length) {
			wrapLoader.style.display = 'block';
            divButChose.style.display = 'none';
            proBar.style.display = 'none';
            header.style.display = 'none';
            footer.style.display = 'none';
            backToTop.style.display = 'none';
            setTimeout(()=>{
                form.submit();
                wrapLoader.style.display = 'none';
            },1500);
            return false;
        }
    showLayer(currLayer);
   
    if(currLayer == 4){
        getFormData();
        if((checkbox3.checked) || (checkbox4.checked)){
            pushToArr();
        }
    }
    // console.log('fhjf');
}

/////////// form validation

const userName = document.getElementById('username');
const userEmail = document.getElementById('email');
const userPhone = document.getElementById('phone');
const errorUserName = document.getElementById('error-userName');
const errorUserEmail = document.getElementById('error-email');  
const errorUserPhone = document.getElementById('error-phone');  
const errorMangerAdd = document.getElementById('error-mangerAdd');
const errormanger = document.getElementById('error-manger');
const price_365 = document.getElementById('price_365');
const radios = price_365.getElementsByTagName('input');
const invalid = document.getElementById('invalid');
let emailPattern = /^(\D)+(\w)*((\.(\w)+)?)+@(\D)+(\w)*((\.(\D)+(\w)*)+)?(\.)[a-z]{2,}$/;
let phonePattern = /1?-?\.?\(?\d{3}[\-\)\.\s]?\d{3}[\-\.\s]?\d{4}/;
let inputVal = document.getElementsByClassName('radioComp');
let inputTxt = document.getElementsByClassName('lay2');
let inputTxt2 = document.getElementsByClassName('lay3');

///////////////////////////////////edit--->1
function validateForm() {
    let valid = true;
    let formValidArr = [];
	if(currLayer == 0){
		valid = true;
	}
    if(currLayer == 1){
        // console.log('dfghjk')
        for(let i=0; i<inputVal.length; i++){
            if(inputVal[i]['type'] == ['radio']){
                if(inputVal[i]['checked'] != true){
                    if($('.form-check-input:checked').length == 0)
                    {
                        inputVal[i].style.border = '1px solid red';
                    // console.log(radioBtn[i])
                        valid = false;
                    }
                } else {
                    inputVal[i].style.border = '1px solid #000086';
                    valid = true;
                }
            }
        }
    }
    if(currLayer == 2){
        let passLay2 = [];
        for(let i=0; i<inputTxt.length; i++){
            //  console.log(inputTxt[i].value)
            if(inputTxt[i].value == ''){
                inputTxt[i].style.border = '1px solid red';
                // valid = false;
                passLay2.push(false);
            } else {
                inputTxt[i].style.border = '1px solid #000086';
                // valid = true;
                passLay2.push(true);
                    // console.log('dfdg')
            }
        }
        passLay2.forEach((value)=>{
            if(value == false){
                valid = false;
            }
            // } else{
            //     valid = true;
            // }
        })
        // console.log(pass);
    }
    if(currLayer == 3){
        const mageData = parentCountEl.getElementsByClassName('mangData');
        let passAll = [];
       
        if(checkbox2.checked){
            if(mageData.length < 3){
                // console.log('wrong');
                errormanger.innerHTML="Shareholders Number Mustn't be Less Than 3";
                errormanger.style.display="block";
                errormanger.style.fontSize="14px";
                errormanger.style.color="red";
                passAll.push(false);
                
            }else{
                errormanger.innerHTML="";
                if(!checkValidInputs()){
                    passAll.push(false);
                } else{
                    passAll.push(true);
                }
            }    
        } else if((checkbox1.checked) || (checkbox5.checked) || (checkbox6.checked)){
            // console.log('checked')
            if(mageData.length < 2){
                // console.log('checked length');
                errormanger.innerHTML="Shareholders Number Mustn't be Less Than 2";
                errormanger.style.display="block";
                errormanger.style.fontSize="14px";
                errormanger.style.color="red";
                // passLay3.push(false);
                passAll.push(false);
            } 
            else {
                errormanger.innerHTML="";
                if(!checkValidInputs()){
                    passAll.push(false);
                } else{
                    passAll.push(true);
                }
                // console.log(checkValidInputs())
            }
        } else{
            errormanger.innerHTML="";
            if(!checkInputValidForSoloComp()){
                passAll.push(false);
            } else{
                passAll.push(true);
            }
        }
        passAll.forEach((val)=>{
            if(val == false){
                valid = false;
            }
        })
        // console.log(passAll);
    } 
/////////////////////////////////////////////edit--->4
if(currLayer == 4){
    // let passlay42 = [];
    const inputAdd = document.getElementById('autocompleteinput');
    
    if((document.getElementById('card-newAdd').getElementsByTagName('div').length == 0)){
    
    inputAdd.style.border = '1px solid red';
    valid = false;
    errorMangerAdd.innerHTML = 'You Must Add Mangers';
    errorMangerAdd.style.display="block";
    errorMangerAdd.style.fontSize="14px";
    errorMangerAdd.style.color="red";
    } else{
        if(!validateCard()){
            valid = false;
            // console.log('invalid')
        } else{
            inputAdd.style.border = '1px solid #000086';
            errorMangerAdd.innerHTML = '';
            valid = true;
        }
    }
}
if(currLayer == 5){
    for(let i=0; i<radios.length; i++){
        if(radios[i]['type'] == ['radio']){
            if(radios[i]['checked'] != true){
                if($('.card-input-element:checked').length == 0)
                {
                    invalid.style.display = 'block';
                    valid = false;
                }
            } else {
                invalid.style.display = 'none';
                valid = true;
            }
        }
    }
}
    if (valid) {
    }
    // console.log(valid)
    return valid; // return the valid status
}
//////////////////////validate inputs
function checkValidInputs(){
    let passLay3 = [];
    let validate2 = true;
    for(let i=0; i < inputTxt2.length; i++){
        // console.log(inputTxt[i])
        if(inputTxt2[i].value == ''){
            inputTxt2[i].style.border = '1px solid red';
                // console.log(radioBtn[i])
                    //    valid = false;
            passLay3.push(false);
        } else {
            inputTxt2[i].style.border = '1px solid #000086';
                //    valid = true;
            passLay3.push(true);
                    // console.log('dfdg')
        }
    }
    passLay3.forEach((val)=>{
        if(val == false){
            validate2 = false;
        }
    });
    // console.log(passLay3);
    return validate2;
}
///////////////////////////validate solo comp
function checkInputValidForSoloComp(){
    let passLay5 = [];
    let validate3 = true;
    for(let i=0; i < mangSolo.length; i++){
        if(mangSolo[i].value == ''){
            mangSolo[i].style.border = '1px solid red';
            passLay5.push(false);
        }else{
            mangSolo[i].style.border = '1px solid #000086';
            passLay5.push(true);
        }
    }
    passLay5.forEach((val)=>{
        if(val == false){
            validate3 = false;
        }
    });
    // console.log(passLay3);
    return validate3;
}
//////////////////////validate card
let arrCardPer = [];

function validateCard(){
    let passLay4 = [];
    var validate = true;
    let cardInputs = document.querySelectorAll('input[data-id]');
    let divDataId = document.querySelectorAll('[id^=card_]');
    let disNone = $('.id.d-flex');
   [...cardInputs].forEach(e=>{
    //   console.log(e);
    if(e.value == ''){
        // console.log(e);
        e.style.border = '1px solid red';
    // valid = false;
    [...disNone].forEach(e=>{
        e.style.border = '1px solid red';
        // console.log(e)
    });
    passLay4.push(false);
    } else{
        e.style.border = '1px solid #000086';
        // valid = true;
        [...disNone].forEach(e=>{
            e.style.border = '1px solid #000086';
            // console.log(e)
        });
        passLay4.push(true);
    }
    
   }); 

   [...divDataId].forEach(e=>{
       //    console.log(e);
       if(arrCardPer.length == 0){
           arrCardPer.push(e);
       } else{
           arrCardPer = [];
           arrCardPer.push(e);
       }
        //  console.log(arrCardPer);
    });
    [...arrCardPer].forEach((val)=>{
        //    console.log(val);
           let checkboxInput = val.querySelectorAll('.allow');
        //    console.log(checkboxInput);
           [...checkboxInput].forEach(e=>{
        //    for(let i=0; i<checkboxInput.length; i++){
              if(e['type'] == ['checkbox']){
                //    console.log('type-checkbox');
                   if(e['checked'] != true){
                    //    console.log(e)t
                       if(val.querySelectorAll('.allow:checked').length == 0){
                        //    console.log('not checked')
                           e.style.border = '1px solid red';
                           passLay4.push(false);
                    } else{
                          e.style.border = '1px solid #000086';
                           passLay4.push(true);
                       }
                    }
               }
        //    }
           })

        }) 
        passLay4.forEach((value)=>{
            if(value == false){
               validate = false;
        }
    });
    // console.log(passLay4)
    return validate;
}

////////////////////////////////////////
// Restricts input for the given textbox to the given inputFilter function.
function setInputFilter(textbox, inputFilter) {
    ["input", "keydown", "keyup", "mousedown", "mouseup", "select", "contextmenu", "drop"].forEach(function(event) {
      textbox.addEventListener(event, function() {
        if (inputFilter(this.value)) {
          this.oldValue = this.value;
          this.oldSelectionStart = this.selectionStart;
          this.oldSelectionEnd = this.selectionEnd;
        } else if (this.hasOwnProperty("oldValue")) {
          this.value = this.oldValue;
          this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
        } else {
          this.value = "";
        }
      });
    });
  }
  setInputFilter(document.getElementById("inputtext3"), function(value) {
    return /^-?\d*[.,%]?\d*$/.test(value); });
  setInputFilter(document.getElementById("inputtext4"), function(value) {
    return /^-?\d*[.,%]?\d*$/.test(value); });

/////////change progress bar
  
  function update(){
    circles.forEach((circles , cirIndx)=>{
        if(cirIndx < currLayer){
            circles.classList.add('active2');
        } else{
            circles.classList.remove('active2')
        }
    });
    const actives = document.querySelectorAll('.active2');

    progress.style.width =( (actives.length - 1) / (circles.length - 1) ) * 100 + '%';
}

/////////////////////////comp-types---section-1/////////////////////////////////
////////chose between comp-types
let areaMoney = document.getElementById('choice-Money')
let areaPeolple = document.getElementById('choice-people');
let btnMoney = document.getElementById('btn-money');
let btnPeople = document.getElementById('btn-people');

$('.switch label').on('click', function(){
    var indicator = $(this).parent(' .switch').find(' span');
    if ( $(this).hasClass('right') ){
    $(indicator).addClass('right');
        if(areaPeolple.style.display === 'none'){
            areaPeolple.style.display = 'block';
            areaMoney.style.display = 'none';
        }
    } else {
    $(indicator).removeClass('right');
        if(areaMoney.style.display === 'none'){
            areaMoney.style.display = 'block';
            areaPeolple.style.display = 'none';
        }    
    }
  });
////////hide and show download info btn
let checkbox1 = document.getElementById('exampleRadios1');
let downBtn1 = document.getElementById('down-1');
let checkbox2 = document.getElementById('exampleRadios2');
let downBtn2 = document.getElementById('down-2');
let checkbox3 = document.getElementById('exampleRadios3');
let downBtn3 = document.getElementById('down-3');
let checkbox4 = document.getElementById('exampleRadios4');
let downBtn4 = document.getElementById('down-4');
let checkbox5 = document.getElementById('exampleRadios5');
let downBtn5 = document.getElementById('down-5');
let checkbox6 = document.getElementById('exampleRadios6');
let downBtn6 = document.getElementById('down-6');


// let changeOptin = false;
function checkboxSelection(){
    // e.preventDefault();
    //check 1
    if (checkbox1.checked){
        downBtn1.style.display = 'inline-block';
        downBtn2.style.display = 'none';
        downBtn3.style.display = 'none';
        // disOpt1();
    }
    //check 2
    else if (checkbox2.checked){
        // return true;
        downBtn1.style.display = 'none';
        downBtn2.style.display = 'inline-block';
        downBtn3.style.display = 'none';
    }
    //check 3
    else if (checkbox3.checked){
        downBtn1.style.display = 'none';
        downBtn2.style.display = 'none';
        downBtn3.style.display = 'inline-block';
        // oneComp();
        // document.getElementById('soloComp').style.display = 'block';
    }
    //check 4
    else if (checkbox4.checked){
        downBtn5.style.display = 'none';
        downBtn6.style.display = 'none';
        downBtn4.style.display = 'inline-block';
        // oneComp();
    }
    //check 5
    else if (checkbox5.checked){
        downBtn4.style.display = 'none';
        downBtn6.style.display = 'none';
        downBtn5.style.display = 'inline-block';
        // disOpt1();
    }
    //check 6
    else if (checkbox6.checked){
        downBtn4.style.display = 'none';
        downBtn5.style.display = 'none';
        downBtn6.style.display = 'inline-block';
        // disOpt1();
    }

}
////////////////////////////////edit-->3
function pushToArr(){
    // if(checkbox3.checked || checkbox4.checked){
        // console.log('enter function');
        // console.log(divOneManger)
        // for(let i=0; i <= divOneManger.length; i++){
            const inputs = divOneManger.getElementsByClassName('mangOneInfo');
            // console.log([...inputs]);
            // for( j=0; j< inputs.length ; j++){
                const objectEle = {};
                const reader  = new FileReader();
    
                objectEle['name'] = inputs[0].value;
                objectEle['nationality'] = inputs[1].value;
                objectEle['idPath'] = inputs[2].files[0];
                objectEle['prev'] = '';
    
                if (objectEle['idPath']) {
                  reader.readAsDataURL(objectEle['idPath']);
                }
                reader.onloadend = function () {
                  arrayEle.forEach((e)=>{
                    // e.idPath
                    objectEle['prev'] = reader.result;
                  })
                }
                arrayEle.push(objectEle);
                arrayNames.push(objectEle.name);
        // }
    // }
}

///////////////////////////////comp-info---section-2/////////////////////////////////
const btnAdd = document.querySelector('#btn-add-sug');
        const parentForm = document.querySelector('#parent-el');
        // console.log(parentDiv)
        btnAdd.addEventListener('click',(e)=>{
            e.preventDefault();
            let i = parentForm.getElementsByTagName('div').length;
            // console.log(i)
                if(i < 6){
                    const newform = document.createElement('div');
                    // newform.setAttribute('dir','rtl');
                    newform.classList.add('row', 'g-3', 'justify-content-evenly' ,'pt-3','sug1');
                        newform.innerHTML = `<div class="col-md-4">
                        <label for="inputtext1" class="form-label">New Suggestion</label>
                        <input type="text" class="form-control" id="inputtext1" name="company_name[]"  required>
                                </div>
                                <div class="col-md-4">
                                <label for="inputtext2" class="form-label">New Suggestion</label>
                                <input type="text" class="form-control" id="inputtext2" name="company_name[]"  required>
                                  </div>
                                <div class="col-md-4 align-self-end text-center" >
                                    <button class="btn btn-outline-danger" id="btn-delete-sug" type="button" onclick="deleted1()">Remove Suggestions</button>
                                </div>`;
                    parentForm.appendChild(newform);            
                    } else if(i < 9){
                    const newform = document.createElement('div');
                    // newform.setAttribute('dir','rtl');
                    
                    newform.classList.add('row', 'g-3', 'justify-content-evenly' ,'pt-3','sug2');
                   
                        newform.innerHTML = `<div class="col-md-4">
                        <label for="inputtext1" class="form-label">New Suggestion</label>
                        <input type="text" class="form-control" id="inputtext1" name="company_name[]"  required>
                                </div>
                                <div class="col-md-4">
                                <label for="inputtext2" class="form-label">New Suggestion</label>
                                <input type="text" class="form-control" id="inputtext2" name="company_name[]"  required>
                                  </div>
                                <div class="col-md-4 align-self-end text-center" >
                                    <button class="btn btn-outline-danger" id="btn-delete-sug"  type="button" onclick="deleted2()">Remove Suggestions</button>
                                </div>`;

                    parentForm.appendChild(newform);   
                }  else if (i == 9){
                    btnAdd.disabled = true;
                } else {
                    btnAdd.disabled = false;
                }
            });
            function deleted1(){
                const parentDiv = document.querySelector('.sug1');
                let j = parentDiv.getElementsByTagName('div').length;
                if(j == 3){
                    parentDiv.removeChild(parentDiv.getElementsByTagName('div')[1]);
                } else{

                    parentDiv.remove();
                }
            }
            function deleted2(){
                const parentDiv = document.querySelector('.sug2');
                let j = parentDiv.getElementsByTagName('div').length;
                if(j == 3){
                    parentDiv.removeChild(parentDiv.getElementsByTagName('div')[1]);
                } else{

                    parentDiv.remove();
                }
            }
        
///////////////////////////part-info---section-3//////////////////////////////////////

let labelNameValue, labelNationValue, labelrangeValue,btnDelete;
const specFont = document.getElementsByTagName('label');
let counter = 0;

          for(let i=1; i<= 50; i++){
            const newOption = document.createElement('option');
            const optionText = document.createTextNode(i);
            // set option text
            newOption.appendChild(optionText);
            // and option value
            newOption.setAttribute('value',i);
            select.appendChild(newOption);
        }
        select.addEventListener('change',(e)=>{
            e.preventDefault();
            // console.log('here');
            // select.selectedIndex = 0;
            parentCountEl.innerHTML = '';
            if(checkbox2.checked){
                labelNameValue = 'Shareholder’s Name';
                labelNationValue = 'Shareholder’s Nationality';
                labelrangeValue = 'Percentage of shares in the capital';
                btnDelete = 'Remove Shareholder';
            } else{
                labelNameValue = 'Shareholder’s Name';
                labelNationValue = 'Shareholder’s Nationality';
                labelrangeValue = 'Percentage of shares in the capital';
                // labelrangeValue2 = 'من راس المال';
                btnDelete = 'Remove Shareholder';
            }
            for(let j=1; j <= select.value; j++){
                        const newEl = document.createElement('div');
                        newEl.classList.add('row','g-3','justify-content-between','pt-3','mangData');
                        // newEl.setAttribute('dir','rtl');
                        newEl.innerHTML = `<div class="col-md-3">
                        <label for="inputtext1" class="form-label mangPart" id="mangName">${labelNameValue}</label>
                        <input type="text" class="form-control lay3 mangInfo" id="name" name="shareholder_name[]">
                      </div>
                      <div class="col-md-3">
                        <label for="inputtext1" class="form-label mangPart">${labelNationValue}</label>
                        <input type="text" class="form-control lay3 mangInfo" id="nation" name="shareholder_nationality[]">
                      </div>
                      <div class="col-md-3">
                        <label for="inputtext1" class="form-label mangPart">${labelrangeValue}</label>
                          <input type="text" class="form-control lay3 inputtext6" name="shareholder_percentage[]" placeholder="%" id="counter_${counter}" onkeyup='integerInRange(this.value, 0, 100, "counter_${counter}"); arabicValue(counter_${counter});'/>
                          <div class="error erroPercentage"></div>
                      </div>
                          <div class="col-md-6 mb-3">
                              <label for="formFileMultiple" class="form-label">Add National ID</label>
                              <input class="form-control lay3 mangInfo" name="personal_id[]" type="file" id="id" accept="image/png, image/gif, image/jpeg">
                            </div>
                          <div class="col-md-3 x-last align-self-center d-flex justify-content-end">
                          <button class="btn btn-outline-danger" type="reset" id="partCompDel" onclick="this.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode)">${btnDelete}</button>
                          </div>
                          <hr>`;
                            parentCountEl.appendChild(newEl);
                            // parentCountEl.appendChild(newEl);
                            [...inputType6].forEach(inputt6=>{
                                // console.log(inputt6)
                                setInputFilter(inputt6, function(value){
                                    return /^-?\d*[.,%]?\d*$/.test(value) ;
                                });
                            }) ;
                            
                            counter++;
                        }
        });
        

const inputType6 = document.getElementsByClassName("inputtext6");
const erroPercentage = document.getElementsByClassName('erroPercentage')
///////////////////function set max value
function integerInRange(value, min, max, name) {

    if(value < min || value > max)
    {
        document.getElementById(name).value = "100";
        // alert("Write here your message");
        [...erroPercentage].forEach(e=>{
            e.innerHTML = ' Percentage Must be between 10%-100%';
            e.style.display="block";
            e.style.fontSize="14px";
            e.style.color="red";
        })
    } else{
        [...erroPercentage].forEach(e=>{
            // e.innerHTML = 'النسبه يجب ان تكون بين ال 0% -100%'
            e.style.display="none";
            // e.style.fontSize="14px";
            // e.style.color="red";
        })
    }
}
///////////////get participants data from layer--3//////
const divs = document.getElementsByClassName('mangData');
let arrayEle = [];
let arrayNames = [];
function getFormData(){
    let i;
    for( i=0; i < divs.length; i++){
        const inputs = divs[i].getElementsByClassName('mangInfo');
        // for( j=0; j< inputs.length ; j++){
            const objectEle = {};
            const reader  = new FileReader();
            // console.log([...inputs]);
            objectEle['name'] = inputs[0].value;
            objectEle['nationality'] = inputs[1].value;
            objectEle['idPath'] = inputs[2].files[0];
            objectEle['prev'] = '';

            if (objectEle['idPath']) {
              reader.readAsDataURL(objectEle['idPath']);
            }
            reader.onloadend = function () {
              arrayEle.forEach((e)=>{
                // e.idPath
                objectEle['prev'] = reader.result;
              })
            }
            // arrayEle.pop();
            // arrayNames = [];
            arrayEle.push(objectEle);
            arrayNames.push(objectEle.name);
        // }
    }
    // console.log(arrayEle);
    // console.log(arrayNames);
  }        
  function previewFile() {
    const preview = document.querySelector('.image');
    const file    = document.querySelector('input[type=file]').files[0];
    const reader  = new FileReader();
  
    reader.onloadend = function () {
      arrayEle.forEach((e)=>{
        // e.idPath
        preview.src = reader.result;
      })
    }
    if (file) {
      reader.readAsDataURL(file);
    } else {
      preview.src = "";
    }
  }
        
////////////////////////mang-info---section-4/////////////////////////////

const btnAddMang = document.getElementById('btn-add-mang');
const parentCard = document.getElementById('card-newAdd');

const selectValue = document.getElementsByClassName('selectMangerSpec');
const ceo = document.getElementsByClassName('ceo');
const directorMember = document.getElementsByClassName('director_member');
const arrCards = [];
   let chooseCeo = false;
   let choosedirMember = false;
   let choosedirManager = false;

   let StatusAttr = '';


let x = 0 , i = 0 , z = 0 , y = 0;

let displayٍSelect , lname , lnation , h6Name;
btnAddMang.addEventListener('click',(e)=>{
    let random = Math.floor(Math.random() * Math.floor(99999));
    e.preventDefault();
    if(checkbox2.checked){
        displayٍSelect = 'block';
        lname = 'Shareholder’s name'; 
        lnation ='Shareholder’s nationality'; 
        h6Name ='Powers:';
    }
    else{
        displayٍSelect = 'none';
        lname = 'Manager’s name'; 
        lnation ='Manager’s nationality'; 
        h6Name ='Powers:';
    }
    const newCard = document.createElement('div');
    if(parentCard.getElementsByTagName('div').length == 0 ){
        if(arrayNames.includes(autocompleteinput.value)){
            // console.log('in');
            arrayEle.forEach((e)=>{
                if(e.name == autocompleteinput.value)
                { 
                      newCard.classList.add('col-xl-4','col-md-6','pt-3');
                      newCard.innerHTML= `<div class="card">
                      <div class="card-header">
                  <div class="close">
                      <img src="${imgclose.value}" alt="" 
                      onclick="this.parentNode.parentNode.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode.parentNode.parentNode);onRest();">
                  </div>
                  <div class="mt-3 mb-3 "  style="display:${displayٍSelect};"> 
                      <label class="visually-hidden" for="specificSizeSelect2">Preference</label>
                      <select class="form-select selectMangerSpec" name = "manager_type[]" id="specificSizeSelect2">
                          <option selected disabled>Please select the position</option>
                          <option value = "ceo" class="ceo">Chairman of The Board</option>
                          <option value = "director_member" class="director_member">Member of the Board </option> 
                          <option value = "director_manager">Managing Director</option> 
                      </select>
                  </div>
                  <div class="row">
                      <div class="col-6">
                          <div class=" g-3 justify-content-around">
                              <div class="">
                                <label for="inputtext1" class="form-label mang">${lname}</label>
                                <input type="text" class="form-control" id="inputtext1" value="${e.name}" name = "manager_name[]">
                              </div>
                              <div class="">
                                  <label for="inputtext2" class="form-label mang">${lnation}</label>
                                  <input type="text" class="form-control" id="inputtext2" value="${e.nationality}" name = "manager_nationality[]">
                              </div>
                          </div>
                      </div>
                      <div class="col-6 align-self-center" style="padding-top: 33px;">
                          <div class="id"><img src="${e.prev}" alt="" width="100%" id="imagePrev_${i}" class="imgId">
                         <!-- <input type="hidden" name="hidden_personal_id1" /> -->
                          </div>
                      </div>
                  </div>
              </div>
              <div class="card-body" id='card_${x}'>
                  <h6 class="h6part">${h6Name}</h6>
                  <div class="form-check">
                  <label class="form-check-label" for="flexCheckDefault1">Signing before banks, opening bank accounts and operate on the company’s account.</label>
                  <input class="form-check-input allow" type="checkbox" value="1" name = "manager[${random}][perm1]">
                    </div>
                    <div class="form-check">
                    <label class="form-check-label" for="flexCheckChecked2">Signing contracts on behalf of the company</label>
                    <input class="form-check-input allow" type="checkbox" value="1" name = "manager[${random}][perm2]">
                    </div>
                    <div class="form-check">
                    <label class="form-check-label" for="flexCheckChecked3">Appear on behalf of the company before the governmental entities.</label>
                    <input class="form-check-input allow" type="checkbox" value="1" name = "manager[${random}][perm3]">
                    </div>
              </div>
              <div class="card-footer align-self-center" style="display:none;">
                  <div class="buttons">
                      <button class="btn save" type="button">حفظ</button>
                      <button class="btn edit" type="button">تعديل</button>
                  </div>
              </div></div>`
            parentCard.appendChild(newCard)
            // console.log('dcds')
            }
        });
    }else{
          if(autocompleteinput.value !== ''){
            //   console.log(autocompleteinput.value)
            // const newCard = document.createElement('div');
            newCard.classList.add('col-xl-4','col-md-6','pt-3');
            newCard.innerHTML= `<div class="card">
            <div class="card-header">
        <div class="close">
            <img src="${imgclose.value}" alt="" 
            onclick="this.parentNode.parentNode.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode.parentNode.parentNode);onRest();">
        </div>
        <div class="mt-3 mb-3" style="display:${displayٍSelect};"> 
            <label class="visually-hidden" for="specificSizeSelect2">Preference</label>
            <select class="form-select selectMangerSpec" name = "manager_type[]" id="specificSizeSelect2">
                <option selected disabled>Please select the position</option>
                <option value = "ceo" class="ceo">Chairman of The Board</option>
                <option value = "director_member" class="director_member">Member of the Board </option> 
                <option value = "director_manager">Managing Director</option> 
            </select>
        </div>
        <div class="row">
            <div class="col-6">
                <div class=" g-3 justify-content-around">
                    <div class="">
                      <label for="input1" class="form-label mang">${lname}</label>
                      <input type="text" class="form-control" id="input1" value="${autocompleteinput.value}"  name = "manager_name[]" data-id="input_${x}">
                    </div>
                    <div class="">
                        <label for="inputtext2" class="form-label mang">${lnation}</label>
                        <input type="text" class="form-control" id="inputtext2" name = "manager_nationality[]" data-id="input_${x}">
                    </div>
                </div>
            </div>
            <div class="col-6 align-self-center" style="padding-top: 33px;">
            <div class="id dispBlo" style="display: none;"><img src="" class="imageUpload imgId" id="img_prev_${i}"></div>
            <div class="id d-flex justify-content-center align-items-center">
                <div class="form-group">
                <div class="form-line">
                    <div class="btn-file align-items-center">
                    <input type="file" id="event_image" accept="image/png, image/gif, image/jpeg"   name = "upload_manager[]" value="" onchange="onFileSelected(event,${i})" data-id="input_${x}">
                        <div class=" change-file-ico">
                           <img src="${iconupload.value}" width="25%" class="disNone">
                           </div>
                        <div class="full-width">
                            <p id="wowonder-movie-name" class="disNone">Add National ID</p>
                        </div>
                    </div>
                </div>
                </div>
            </div>
    
            </div>
        </div>
        </div>
        <div class="card-body" id='card_${x}'>
        <h6 class="h6part">${h6Name}</h6>
        <div class="form-check">
        <label class="form-check-label" for="flexCheckDefault1">Signing before banks, opening bank accounts and operate on the company’s account.</label>
        <input class="form-check-input allow" type="checkbox" value="1" name = "manager[${random}][perm1]">
          </div>
          <div class="form-check">
          <label class="form-check-label" for="flexCheckChecked2">Signing contracts on behalf of the company</label>
          <input class="form-check-input allow" type="checkbox" value="1" name = "manager[${random}][perm2]">
          </div>
          <div class="form-check">
          <label class="form-check-label" for="flexCheckChecked3">Appear on behalf of the company before the governmental entities.</label>
          <input class="form-check-input allow" type="checkbox" value="1" name = "manager[${random}][perm3]">
          </div>
        </div>
        <div class="card-footer align-self-center" style="display:none;">
        <div class="buttons">
            <button class="btn save" type="button">حفظ</button>
            <button class="btn edit" type="button">تعديل</button>
        </div>
        </div>
        </div>`
        parentCard.appendChild(newCard);
    } 
    else{
            //   console.log('null')
            // const newCard = document.createElement('div');
            newCard.classList.add('col-xl-4','col-md-6','pt-3');
            newCard.innerHTML= `<div class="card">
            <div class="card-header">
        <div class="close">
            <img src="${imgclose.value}" alt="" 
            onclick="this.parentNode.parentNode.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode.parentNode.parentNode)">
        </div>
        <div class="mt-3 mb-3"  style="display:${displayٍSelect};"> 
            <label class="visually-hidden" for="specificSizeSelect2">Preference</label>
            <select class="form-select selectMangerSpec" name = "manager_type[]" id="specificSizeSelect2">
                <option selected disabled>Please select the position</option>
                <option value = "ceo" class="ceo">Chairman of The Board</option>
                <option value = "director_member" class="director_member">Member of the Board </option> 
                <option value = "director_manager">Managing Director</option> 
            </select>
        </div>
        <div class="row">
            <div class="col-6">
                <div class=" g-3 justify-content-around">
                    <div class="">
                      <label for="inputtext1" class="form-label mang">${lname}</label>
                      <input type="text" class="form-control" id="inputtext1" value="${autocompleteinput.value}"  name = "manager_name[]" data-id="input_${y}">
                    </div>
                    <div class="">
                        <label for="inputtext2" class="form-label mang">${lnation}</label>
                        <input type="text" class="form-control" id="inputtext2"   name = "manager_nationality[]" data-id="input_${y}">
                    </div>
                </div>
            </div>
            <div class="col-6 align-self-center" style="padding-top: 33px;">
            <div class="id dispBlo" style="display: none;"><img src="" class="imageUpload imgId"  id="img_prev_${i}"></div>
                <div class="id d-flex justify-content-center align-items-center">
                <div class="form-group">
                <div class="form-line">
                    <div class="btn-file align-items-center">
                    <input type="file" id="event_image" accept="image/png, image/gif, image/jpeg"  name = "upload_manager[]"  value="" data-id="input_${y}" onchange="onFileSelected(event, ${i})">
                        <div class=" change-file-ico">
                           <img src="${iconupload.value}" width="25%">
                        </div>
                        <div class="full-width">
                            <p id="wowonder-movie-name">Add National ID</p>
                        </div>
                    </div>
                </div>
                </div>
                </div>
            </div>
        </div>
        </div>
        <div class="card-body" id='card_${x}'>
        <h6 class="h6part">${h6Name}</h6>
        <div class="form-check">
        <label class="form-check-label" for="flexCheckDefault1">Signing before banks, opening bank accounts and operate on the company’s account.</label>
        <input class="form-check-input allow" type="checkbox" name = "manager[${random}][perm1]" value = "1" >
          </div>
          <div class="form-check">
          <label class="form-check-label" for="flexCheckChecked2">Signing contracts on behalf of the company</label>
          <input class="form-check-input allow" type="checkbox" name = "manager[${random}][perm2]" value = "1" >
          </div>
          <div class="form-check">
          <label class="form-check-label" for="flexCheckChecked3">Appear on behalf of the company before the governmental entities.</label>
          <input class="form-check-input allow" type="checkbox" name = "manager[${random}][perm3]" value = "1" >
          </div>
        </div>
        <div class="card-footer align-self-center" style="display:none;">
        <div class="buttons">
            <button class="btn save" type="button">حفظ</button>
            <button class="btn edit" type="button">تعديل</button>
        </div>
        </div>
        </div>`
        parentCard.appendChild(newCard)
        // y++;
          }
        }
        } else{
        if(!validateCard()){
        // console.log('invalid')
        }
        else{
        // console.log('valid')
        if(arrayNames.includes(autocompleteinput.value)){
            // console.log('in');
            arrayEle.forEach((e)=>{
                if(e.name == autocompleteinput.value)
                { 
                    //   const newCard = document.createElement('div');
                      newCard.classList.add('col-xl-4','col-md-6','pt-3');
                      newCard.innerHTML= `<div class="card">
                      <div class="card-header">
                  <div class="close">
                      <img src="${imgclose.value}" alt="" 
                      onclick="this.parentNode.parentNode.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode.parentNode.parentNode);onRest();">
                  </div>
                  <div class="mt-3 mb-3"  style="display:${displayٍSelect};"> 
                      <label class="visually-hidden" for="specificSizeSelect2">Preference</label>
                      <select class="form-select selectMangerSpec" name = "manager_type[]" id="specificSizeSelect2">
                          <option selected disabled>Please select the position</option>
                          <option value = "ceo" class="ceo">Chairman of The Board</option>
                          <option value = "director_member" class="director_member">Member of the Board </option> 
                          <option value = "director_manager">Managing Director</option> 
                      </select>
                  </div>
                  <div class="row">
                      <div class="col-6">
                          <div class=" g-3 justify-content-around" >
                              <div class="">
                                <label for="inputtext1" class="form-label mang">${lname}</label>
                                <input type="text" class="form-control" id="inputtext1" value="${e.name}" name = "manager_name[]">
                              </div>
                              <div class="">
                                  <label for="inputtext2" class="form-label mang">${lnation}</label>
                                  <input type="text" class="form-control" id="inputtext2" value="${e.nationality}" name = "manager_nationality[]">
                              </div>
                          </div>
                      </div>
                      <div class="col-6 align-self-center" style="padding-top: 33px;">
                          <div class="id"><img src="${e.prev}" alt="" width="100%" name = "manager_personal_id2" id="imagePrev_${i}" class="imgId">
                          <input type="hidden" name="hidden_personal_id2" />
                          </div>
                      </div>
                  </div>
              </div>
              <div class="card-body" id='card_${x}'>
                  <h6 class="h6part">${h6Name}</h6>
                  <div class="form-check">
                  <label class="form-check-label" for="flexCheckDefault1">Signing before banks, opening bank accounts and operate on the company’s account.</label>
                  <input class="form-check-input allow" type="checkbox" value="1" name = "manager[${random}][perm1]">
                    </div>
                    <div class="form-check">
                    <label class="form-check-label" for="flexCheckChecked2">Signing contracts on behalf of the company</label>
                    <input class="form-check-input allow" type="checkbox" value="1" name = "manager[${random}][perm2]">
                    </div>
                    <div class="form-check">
                    <label class="form-check-label" for="flexCheckChecked3">Appear on behalf of the company before the governmental entities.</label>
                    <input class="form-check-input allow" type="checkbox" value="1" name = "manager[${random}][perm3]">
                    </div>
              </div>
              <div class="card-footer align-self-center" style="display:none;">
                  <div class="buttons">
                      <button class="btn save" type="button">حفظ</button>
                      <button class="btn edit" type="button">تعديل</button>
                  </div>
              </div></div>`
            parentCard.appendChild(newCard)
            // console.log('dcds')
            }
        });
    }else{
        if(autocompleteinput.value !== ''){
            //   console.log(autocompleteinput.value)
            // const newCard = document.createElement('div');
            newCard.classList.add('col-xl-4','col-md-6','pt-3');
            newCard.innerHTML= `<div class="card">
            <div class="card-header">
        <div class="close">
            <img src="${imgclose.value}" alt="" 
            onclick="this.parentNode.parentNode.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode.parentNode.parentNode);onRest();">
        </div>
        <div class="mt-3 mb-3 "  style="display:${displayٍSelect};"> 
            <label class="visually-hidden" for="specificSizeSelect2">Preference</label>
            <select class="form-select selectMangerSpec" name = "manager_type[]" id="specificSizeSelect2">
                <option selected disabled>Please select the position</option>
                <option value = "ceo" class="ceo">Chairman of The Board</option>
                <option value = "director_member" class="director_member">Member of the Board </option> 
                <option value = "director_manager">Managing Director</option> 
            </select>
        </div>
        <div class="row">
            <div class="col-6">
                <div class=" g-3 justify-content-around" >
                    <div class="">
                      <label for="input1" class="form-label mang">${lname}</label>
                      <input type="text" class="form-control" id="input1" value="${autocompleteinput.value}"  name = "manager_name[]" data-id="input_${x}">
                    </div>
                    <div class="">
                        <label for="inputtext2" class="form-label mang">${lnation}</label>
                        <input type="text" class="form-control" id="inputtext2" name = "manager_nationality[]" data-id="input_${x}">
                    </div>
                </div>
            </div>
            <div class="col-6 align-self-center" style="padding-top: 33px;">
            <div class="id dispBlo" style="display: none;"><img src="" class="imageUpload imgId" id="img_prev_${i}" name="manager_personal_id3">
            <input type="hidden" name="hidden_personal_id3" />
            </div>
            <div class="id d-flex justify-content-center align-items-center">
                <div class="form-group">
                <div class="form-line">
                    <div class="btn-file align-items-center">
                    <input type="file" id="event_image" accept="image/png, image/gif, image/jpeg" name = "upload_manager[]"  value="" onchange="onFileSelected(event,${i})" data-id="input_${x}">
                        <div class=" change-file-ico">
                           <img src="${iconupload.value}" width="25%" class="disNone">
                           </div>
                        <div class="full-width">
                            <p id="wowonder-movie-name" class="disNone">Add National ID</p>
                        </div>
                    </div>
                </div>
                </div>
            </div>
    
            </div>
        </div>
        </div>
        <div class="card-body" id='card_${x}'>
        <h6 class="h6part">${h6Name}</h6>
        <div class="form-check">
        <label class="form-check-label" for="flexCheckDefault1">Signing before banks, opening bank accounts and operate on the company’s account.</label>
        <input class="form-check-input allow" type="checkbox" name = "manager[${random}][perm1]"  value="1" >
          </div>
          <div class="form-check">
          <label class="form-check-label" for="flexCheckChecked2">Signing contracts on behalf of the company</label>
          <input class="form-check-input allow" type="checkbox" name = "manager[${random}][perm2]" value="1" >
          </div>
          <div class="form-check">
          <label class="form-check-label" for="flexCheckChecked3">Appear on behalf of the company before the governmental entities.</label>
          <input class="form-check-input allow" type="checkbox" name = "manager[${random}][perm3]" value="1" >
          </div>
        </div>
        <div class="card-footer align-self-center" style="display:none;">
        <div class="buttons">
            <button class="btn save" type="button">حفظ</button>
            <button class="btn edit" type="button">تعديل</button>
        </div>
        </div>
        </div>`
        parentCard.appendChild(newCard);
    } 
        else{
            //   console.log('null')
            // const newCard = document.createElement('div');
            newCard.classList.add('col-xl-4','col-md-6','pt-3');
            newCard.innerHTML= `<div class="card">
            <div class="card-header">
        <div class="close">
            <img src="${imgclose.value}" alt="" 
            onclick="this.parentNode.parentNode.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode.parentNode.parentNode);onRest();">
        </div>
        <div class="mt-3 mb-3"  style="display:${displayٍSelect};"> 
            <label class="visually-hidden" for="specificSizeSelect2">Preference</label>
            <select class="form-select selectMangerSpec" name = "manager_type[]" id="specificSizeSelect2">
                <option selected disabled>Please select the position</option>
                <option value = "ceo" class="ceo">Chairman of The Board</option>
                <option value = "director_member" class="director_member">Member of the Board </option> 
                <option value = "director_manager">Managing Director</option> 
            </select>
        </div>
        <div class="row">
            <div class="col-6">
                <div class=" g-3 justify-content-around" >
                    <div class="">
                      <label for="inputtext1" class="form-label mang">${lname}</label>
                      <input type="text" class="form-control" id="inputtext1" value="${autocompleteinput.value}"  name = "manager_name[]" data-id="input_${y}">
                    </div>
                    <div class="">
                        <label for="inputtext2" class="form-label mang">${lnation}</label>
                        <input type="text" class="form-control" id="inputtext2"   name = "manager_nationality[]" data-id="input_${y}">
                    </div>
                </div>
            </div>
            <div class="col-6 align-self-center" style="padding-top: 33px;">
            <div class="id dispBlo" style="display: none;"><img src="" class="imageUpload imgId" id="img_prev_${i}"></div>
                <div class="id d-flex justify-content-center align-items-center">
                <div class="form-group">
                <div class="form-line">
                    <div class="btn-file align-items-center">
                    <input type="file" id="event_image" accept="image/png, image/gif, image/jpeg" name = "upload_manager[]" value="" data-id="input_${y}" onchange="onFileSelected(event, ${i})">
                        <div class=" change-file-ico">
                           <img src="${iconupload.value}" width="25%">
                        </div>
                        <div class="full-width">
                            <p id="wowonder-movie-name">Add National ID</p>
                        </div>
                    </div>
                </div>
                </div>
                </div>
            </div>
        </div>
        </div>
        <div class="card-body" id='card_${x}'>
        <h6 class="h6part">${h6Name}</h6>
        <div class="form-check">
        <label class="form-check-label" for="flexCheckDefault1">Signing before banks, opening bank accounts and operate on the company’s account.</label>
        <input class="form-check-input allow" type="checkbox" name = "manager[${random}][perm1]" value="1">
          </div>
          <div class="form-check">
          <label class="form-check-label" for="flexCheckChecked2">Signing contracts on behalf of the company</label>
          <input class="form-check-input allow" type="checkbox" name = "manager[${random}][perm2]" value="1" >
          </div>
          <div class="form-check">
          <label class="form-check-label" for="flexCheckChecked3">Appear on behalf of the company before the governmental entities.</label>
          <input class="form-check-input allow" type="checkbox" name = "manager[${random}][perm3]" value="1" >
          </div>
        </div>
        <div class="card-footer align-self-center" style="display:none;">
        <div class="buttons">
            <button class="btn save" type="button">حفظ</button>
            <button class="btn edit" type="button">تعديل</button>
        </div>
        </div>
        </div>`
        parentCard.appendChild(newCard)
        // y++;
          }
       }
    }
    }
   x++ ; i++; z++; y++;

//    const directorManager = document.getElementsByClassName('director_manager');
    //let arrayChoosen = [];
   [...selectValue].forEach((val)=>{
    //    console.log(val);
    val.addEventListener('click',(e)=>{
        e.preventDefault();
        // console.log(chooseCeo);
        if(val.value == 'ceo'){
            chooseCeo = true;
            // choosedirMember = false;
            // console.log(chooseCeo);  
        }
        if(chooseCeo){
            [...ceo].forEach((v)=>{
                // console.log(v);
                // v.setAttribute('readonly',StatusAttr);
                // v.style.display = 'none';
                // v.hidden = true;
                // v.style.pointerEvents = 'none';
                v.style.display = 'none';
            });
            // [...directorMember].forEach((v)=>{
            //     v.style.display = 'block';
            // })
        }else{
            [...ceo].forEach((v)=>{
                // console.log('disceo');
                // v.removeAttribute('readonly');
                // v.style.display = 'block';
                // v.style.pointerEvents = 'all';
                v.style.display = 'block';

            })
        }
        if(val.value == 'director_member'){
            choosedirMember = true;
            // chooseCeo = false;
            // console.log(choosedirMember)
        }
        if(choosedirMember){
            [...directorMember].forEach((v)=>{
                // console.log(v);
                // v.setAttribute('readonly',StatusAttr);
                // v.hidden = true;
                // v.style.pointerEvents = 'none';
                v.style.display = 'none';
            })
        }else{
            [...directorMember].forEach((v)=>{
                // console.log(v); 
                // v.removeAttribute('readonly');
                // v.hidden = false;
                // v.style.pointerEvents = 'all';
                v.style.display = 'block';

            })
        }
    })
   })
});
function onRest(){
    if(parentCard.getElementsByTagName('div').length == 0 ){
        chooseCeo = false;
        choosedirMember = false;
        // console.log(parentCard.getElementsByTagName('div').length)
    } 
    else{
        [...selectValue].forEach((val)=>{
            if(val.value == 'ceo'){
                chooseCeo = true;
            } else{
                 chooseCeo = false;
            }
            if(val.value == 'director_member'){
                choosedirMember = true;
            } else{
                choosedirMember = false;
            }
        })
      
    }
}


////////////////////////////////////
function onFileSelected(event,i) {
    let disNone = $('.id.d-flex');
    let disblock = $('.dispBlo');
    [...disNone].forEach(e=>{
        e.classList.add('displayNone');
        // console.log(e)
    });
    [...disblock].forEach(e=>{
        e.classList.add('displayBlock');
    })
    let selectedFile = event.target.files[0];
    let reader = new FileReader();
  
    let imgtag = document.getElementById("img_prev_"+i);
    // console.log("img_prev_"+i)
    // [...imgtag].forEach(e=>{
        imgtag.title = selectedFile.name;
    // })
  
    reader.onload = function(event) {
        // [...imgtag].forEach(e=>{
            imgtag.src=event.target.result;
        // })
    //   imgtag.src = 
    };
  
    reader.readAsDataURL(selectedFile);
  }
///////////////////auto-complete function/////////////////////////////////
function autoComplete(inputname,namesArr){
    let currentFocus;
  inputname.addEventListener("input", function(e) {
      let a, b, i, val = this.value;
      closeAllLists();
      if (!val) { return false;}
      currentFocus = -1;
      a = document.createElement("DIV");
      a.setAttribute("id", this.id + "autocomplete-list");
    //   a.setAttribute('dir','rtl');
      a.classList.add("autocomplete-items",'col-6');
      /*append the DIV element as a child of the autocomplete container:*/
      this.parentNode.appendChild(a);
      /*for each item in the array...*/
      for (i = 0; i < namesArr.length; i++) {
        /*check if the item starts with the same letters as the text field value:*/
        if (namesArr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
          /*create a DIV element for each matching element:*/
          b = document.createElement("DIV");
          /*make the matching letters bold:*/
          b.innerHTML = "<strong>" + namesArr[i].substr(0, val.length) + "</strong>";
          b.innerHTML += namesArr[i].substr(val.length);
          /*insert a input field that will hold the current array item's value:*/
          b.innerHTML += "<input type='hidden' value='" + namesArr[i] + "'>";
          /*execute a function when someone clicks on the item value (DIV element):*/
          b.addEventListener("click", function(e) {
              /*insert the value for the autocomplete text field:*/
              inputname.value = this.getElementsByTagName("input")[0].value;
              /*close the list of autocompleted values,
              (or any other open lists of autocompleted values:*/
              closeAllLists();
          });
          a.appendChild(b);
        }
      }
  });
  /*execute a function presses a key on the keyboard:*/
  inputname.addEventListener("keydown", function(e) {
      var x = document.getElementById(this.id + "autocomplete-list");
      if (x) x = x.getElementsByTagName("div");
      if (e.keyCode == 40) {
        /*If the arrow DOWN key is pressed,
        increase the currentFocus variable:*/
        currentFocus++;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 38) { //up
        /*If the arrow UP key is pressed,
        decrease the currentFocus variable:*/
        currentFocus--;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 13) {
        /*If the ENTER key is pressed, prevent the form from being submitted,*/
        e.preventDefault();
        if (currentFocus > -1) {
          /*and simulate a click on the "active" item:*/
          if (x) x[currentFocus].click();
        }
      }
  });
  function addActive(x) {
    /*a function to classify an item as "active":*/
    if (!x) return false;
    /*start by removing the "active" class on all items:*/
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = (x.length - 1);
    /*add class "autocomplete-active":*/
    x[currentFocus].classList.add("autocomplete-active");
  }
  function removeActive(x) {
    /*a function to remove the "active" class from all autocomplete items:*/
    for (var i = 0; i < x.length; i++) {
      x[i].classList.remove("autocomplete-active");
    }
  }
  function closeAllLists(elmnt) {
    /*close all autocomplete lists in the document,
    except the one passed as an argument:*/
    var x = document.getElementsByClassName("autocomplete-items");
    for (var i = 0; i < x.length; i++) {
      if (elmnt != x[i] && elmnt != inputname) {
        x[i].parentNode.removeChild(x[i]);
      }
    }
  }
  /*execute a function when someone clicks in the document:*/
  document.addEventListener("click", function (e) {
      closeAllLists(e.target);
  });
}
const autocompleteinput = document.getElementById('autocompleteinput');
$('#autocompleteinput').on('focus', function(e){
    e.preventDefault();
    // console.log(autoComplete(autocompleteinput,arrayNames));
    autoComplete(autocompleteinput,arrayNames);
});
    //////////////////file uploda area
function arabicValue(txt) {
    yas = txt.value;
    yas = Number(yas.replace(/[٠١٢٣٤٥٦٧٨٩]/g, function (d) {
        return d.charCodeAt(0) - 1632;                
        }).replace(/[۰۱۲۳۴۵۶۷۸۹]/g, function (d) { return d.charCodeAt(0) - 1776; })
    );
}

///promo code
const promoApply = document.getElementById('promoApply');
const promocode = document.getElementById('promocode');
const price = document.getElementById('price');
const codeApp = document.getElementById('codeApp');
const oldPrice = document.getElementById('oldPrice');
const promoDiv = document.getElementById('promoDiv');
const radio1 = document.getElementById('radio_1');
const radio2 = document.getElementById('radio_2');
const radio3 = document.getElementById('radio_3');
const bank_id = document.getElementById('bank_id');

radio1.addEventListener('click',()=>{
    radio1.setAttribute('checked','checked');
    showPromoDiv();
        radio2.removeAttribute('checked');
        radio3.removeAttribute('checked');
        bank_id.value = 'BankCard';
});
radio2.addEventListener('click',()=>{
    radio2.setAttribute('checked','checked');
    hidePromoDiv();
        radio1.removeAttribute('checked');
        radio3.removeAttribute('checked');
        bank_id.value = 'BanckCard';
});
radio3.addEventListener('click',()=>{
    radio3.setAttribute('checked','checked');
    hidePromoDiv();
        radio1.removeAttribute('checked');
        radio2.removeAttribute('checked');
        bank_id.value = 'BankInstallment';
});

function hidePromoDiv(){
    promoDiv.style.display = 'none';  
    price.innerHTML = '';
    oldPrice.style.textDecoration = 'none';
    oldPrice.style.fontSize = '3rem';
}
function showPromoDiv(){
    promoDiv.style.display = 'block';
    promocode.value = '';
    codeApp.innerHTML = '';
}
promoApply.addEventListener('click',(e)=>{
    e.preventDefault();
    if(promocode.value == 'TLC ONLINE 22'){
        price.innerHTML = '/2500';
        oldPrice.style.textDecoration = 'line-through  3px';
        oldPrice.style.fontSize = '1.5rem';
        price.style.color = '#000086';
        codeApp.innerHTML = 'code Applied';
        codeApp.style.color = '#FDC041';
        
    }else{
        price.innerHTML = '';
        price.style.color = '#000086';  
        oldPrice.style.textDecoration = 'none';
        oldPrice.style.fontSize = '3rem';
        codeApp.innerHTML = 'invalid code';
        codeApp.style.color = 'red';

    }
});


$(".search-toggler").on("click", function(e) {
    e.preventDefault();
    $(".search-popup").toggleClass("active");
    // console.log('fjf')
});
