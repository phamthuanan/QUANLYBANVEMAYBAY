
// Sự kiện onclick khi nhấn nút thêm
document.getElementById("btnInsert").addEventListener("click", insertFormInsert)
function insertFormInsert(){
    var formInsert = document.getElementById("formInsert");
    formInsert.style.display = "block";
}

//Sự kiện nhắn vàn nút đóng form insert
document.getElementById("btnclose").addEventListener("click", closeFormInsert)
function closeFormInsert(){
    var formInsert = document.getElementById("formInsert");
    formInsert.style.display = "none";
}
