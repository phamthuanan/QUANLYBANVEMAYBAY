var btnEdit = document.getElementsByClassName('btnEdit');
for(var i = 0; i <btnEdit.length ; i++ ){
    btnEdit[i].addEventListener('click', editInfor);
}

function editInfor(){
    var item = document.getElementsByClassName("inputrow");
    var inforRow = document.getElementsByClassName("inforRow")
    var btnSave = document.getElementsByClassName("btnSubmitSave");
    var btnCofig = document.getElementsByClassName("dropdownMenuRowTable");
    for(var i =0 ; i< item.length ; i++){
        item[i].style.display = "block";
        inforRow[i].style.display = 'none';
    }
    for(var i = 0; i < btnSave.length; i++){
        btnSave[i].style.display = "block";
        btnCofig[i].style.display = "none";
    }
    
}