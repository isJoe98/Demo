//当前月份的天数
function currentMonthDays () {
    var tempDate = new Date("2000-01-01");
    tempDate.setFullYear(this.getFullYear());
    tempDate.setMonth(this.getMonth() + 1);
    tempDate.setDate(0);
    return tempDate.getDate();
}
//上一个月有多少天‘
function prevMonthDays() {
    var tempDate = new Date("2000-01-01");
    tempDate.setFullYear(this.getFullYear());
    tempDate.setMonth(this.getMonth());
    tempDate.setDate(0);
    return tempDate.getDate();
}
//当前月份的第一天是星期几
function firstDayWeek() {
    var tempDate = new Date("2000-01-01");
    tempDate.setFullYear(this.getFullYear());
    tempDate.setMonth(this.getMonth());
    return tempDate.getDay();
}

function dateFormat(str) {
    var year = this.getFullYear();
    var month = this.getMonth() + 1;
    var day = this.getDate();

    var hour = this.getHours();
    var min = this.getMinutes();
    var sec = this.getSeconds();
    return str.replace("yyyy", year).replace("mm", month).replace("dd", day).replace("hh", hour).replace("mm", min).replace("ss", sec);
}

function gshdate(){
    var date = new Date();
    return "时间："+date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+"　　"+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
}
































