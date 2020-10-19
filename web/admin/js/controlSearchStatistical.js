function controlSearchStatistical(){
    var TypeStatistical = document.getElementById("TypeStatistical");
    var month = document.getElementById("divMonth");
    var quarter = document.getElementById("divQuarter");
    switch(TypeStatistical.value){
        case "Tháng": month.style.display = "block";quarter.style.display = "none";break;
        case "Qúy": quarter.style.display = "block";  month.style.display = "none";break;
        case "Năm" :  month.style.display = "none";quarter.style.display = "none";break;
        default:
            month.style.display = "block";quarter.style.display = "none";

    }
}

document.getElementById("TypeStatistical").addEventListener("change", controlSearchStatistical)

