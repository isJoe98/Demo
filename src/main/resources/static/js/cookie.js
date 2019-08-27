/**
 * 查询
 * @param key
 * @returns {*}
 */
function getCookie(key) {
    var cookie = document.cookie; //"key1=value1; key2=value2; key3=value3"
    if (cookie) {
        var cookieList = cookie.split("; ");//变成一个集合 集合中存放一组一组的
        for (var i = 0; i < cookieList.length; i++) {
            var item = cookieList[i].split("=");
            var itemKey = item[0];
            var itemValue = item[1];
            if (itemKey == key) {
                return itemValue;
            }
        }
        return "";
    } else {
        return "";
    }
}

/**
 * cookie的增删改
 * @param key
 * @param value
 * @param days
 */
function setCookie(key, value, days) {
    if (days) {
        var date = new Date();
        date.setDate(date.getDate() + days);
        date.setHours(0);
        date.setMinutes(0);
        date.setSeconds(0);
        document.cookie = key + "=" + value + ";expires=" + date;
    } else {
        document.cookie = key + "=" + value;
    }
}
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return null;
}

function geturl(key) {
    var url = window.location.search;
    var str = url.slice(1, url.length);
    var arr = str.split("&");
    var arr1 = [];
    arr.map(function (item) {
        arr1.push(item.split("="))
    });
    var jg = "";
    arr1.forEach(function (item) {
        if (item[0] == key) {
            return jg = decodeURI(item[1]);
        }
    })
    return jg;
}

function login() {
    var cookiename = getCookie("username");
    if (cookiename) {
        $(".sign").html("欢迎您，" + cookiename);
        $(".register").hide("500");
    }
    $(".search_icon").click(function () {
        window.location.href = "search.html?" + "id=" + $(".search input").val();
    })
}


/*
 * 传入时分和天，如果有d就将时间+1
 * */
function time(h, m, d) {
    var a = new Date();
    a.setMilliseconds(0);
    a.setSeconds(0);
    if (d) {
        a.setDate(a.getDate() + d * 1)
    }
    a.setHours(h);
    a.setMinutes(m);
    return a;
}

/*
 * 传入开奖时间，获取到开奖期数
 * */
function dateGs(date) {
    var mon = date.getMonth() * 1 + 1;
    var day = date.getDate();
    var q = qs(date);
    if (mon < 10) {
        mon = "0" + mon
    }
    if (day < 10) {
        day = "0" + day
    }
    if (q < 100) {
        if (q < 10) {
            q = "00" + q;
        } else {
            q = "0" + q;
        }
    }
    return date.getFullYear() + mon + day + q;
}

/*
 *
 * 传入下一期开奖时间，返回下一期的期数
 * */
function qs(obj) {
    var h;
    var m;
    if (obj.getHours() < 10) {
        h = "0" + obj.getHours();
    } else {
        h = obj.getHours();
    }
    if (obj.getMinutes() < 10) {
        m = "0" + obj.getMinutes();
    } else {
        m = obj.getMinutes()
    }
    var time = h + ":" + m;
    var index;
    switch (time) {
        case "00:00":
            index = "120";
            break;
        case "00:05":
            index = "1";
            break;
        case "00:10":
            index = "2";
            break;
        case "00:15":
            index = "3";
            break;
        case "00:20":
            index = "4";
            break;
        case "00:25":
            index = "5";
            break;
        case "00:30":
            index = "6";
            break;
        case "00:35":
            index = "7";
            break;
        case "00:40":
            index = "8";
            break;
        case "00:45":
            index = "9";
            break;
        case "00:50":
            index = "10";
            break;
        case "00:55":
            index = "11";
            break;
        case "01:00":
            index = "12";
            break;
        case "01:05":
            index = "13";
            break;
        case "01:10":
            index = "14";
            break;
        case "01:15":
            index = "15";
            break;
        case "01:20":
            index = "16";
            break;
        case "01:25":
            index = "17";
            break;
        case "01:30":
            index = "18";
            break;
        case "01:35":
            index = "19";
            break;
        case "01:40":
            index = "20";
            break;
        case "01:45":
            index = "21";
            break;
        case "01:50":
            index = "22";
            break;
        case "01:55":
            index = "23";
            break;
        case "10:00":
            index = "24";
            break;
        case "10:10":
            index = "25";
            break;
        case "10:20":
            index = "26";
            break;
        case "10:30":
            index = "27";
            break;
        case "10:40":
            index = "28";
            break;
        case "10:50":
            index = "29";
            break;
        case "11:00":
            index = "30";
            break;
        case "11:10":
            index = "31";
            break;
        case "11:20":
            index = "32";
            break;
        case "11:30":
            index = "33";
            break;
        case "11:40":
            index = "34";
            break;
        case "11:50":
            index = "35";
            break;
        case "12:00":
            index = "36";
            break;
        case "12:10":
            index = "37";
            break;
        case "12:20":
            index = "38";
            break;
        case "12:30":
            index = "39";
            break;
        case "12:40":
            index = "40";
            break;
        case "12:50":
            index = "41";
            break;
        case "13:00":
            index = "42";
            break;
        case "13:10":
            index = "43";
            break;
        case "13:20":
            index = "44";
            break;
        case "13:30":
            index = "45";
            break;
        case "13:40":
            index = "46";
            break;
        case "13:50":
            index = "47";
            break;
        case "14:00":
            index = "48";
            break;
        case "14:10":
            index = "49";
            break;
        case "14:20":
            index = "50";
            break;
        case "14:30":
            index = "51";
            break;
        case "14:40":
            index = "52";
            break;
        case "14:50":
            index = "53";
            break;
        case "15:00":
            index = "54";
            break;
        case "15:10":
            index = "55";
            break;
        case "15:20":
            index = "56";
            break;
        case "15:30":
            index = "57";
            break;
        case "15:40":
            index = "58";
            break;
        case "15:50":
            index = "59";
            break;
        case "16:00":
            index = "60";
            break;
        case "16:10":
            index = "61";
            break;
        case "16:20":
            index = "62";
            break;
        case "16:30":
            index = "63";
            break;
        case "16:40":
            index = "64";
            break;
        case "16:50":
            index = "65";
            break;
        case "17:00":
            index = "66";
            break;
        case "17:10":
            index = "67";
            break;
        case "17:20":
            index = "68";
            break;
        case "17:30":
            index = "69";
            break;
        case "17:40":
            index = "70";
            break;
        case "17:50":
            index = "71";
            break;
        case "18:00":
            index = "72";
            break;
        case "18:10":
            index = "73";
            break;
        case "18:20":
            index = "74";
            break;
        case "18:30":
            index = "75";
            break;
        case "18:40":
            index = "76";
            break;
        case "18:50":
            index = "77";
            break;
        case "19:00":
            index = "78";
            break;
        case "19:10":
            index = "79";
            break;
        case "19:20":
            index = "80";
            break;
        case "19:30":
            index = "81";
            break;
        case "19:40":
            index = "82";
            break;
        case "19:50":
            index = "83";
            break;
        case "20:00":
            index = "84";
            break;
        case "20:10":
            index = "85";
            break;
        case "20:20":
            index = "86";
            break;
        case "20:30":
            index = "87";
            break;
        case "20:40":
            index = "88";
            break;
        case "20:50":
            index = "89";
            break;
        case "21:00":
            index = "90";
            break;
        case "21:10":
            index = "91";
            break;
        case "21:20":
            index = "92";
            break;
        case "21:30":
            index = "93";
            break;
        case "21:40":
            index = "94";
            break;
        case "21:50":
            index = "95";
            break;
        case "22:00":
            index = "96";
            break;
        case "22:05":
            index = "97";
            break;
        case "22:10":
            index = "98";
            break;
        case "22:15":
            index = "99";
            break;
        case "22:20":
            index = "100";
            break;
        case "22:25":
            index = "101";
            break;
        case "22:30":
            index = "102";
            break;
        case "22:35":
            index = "103";
            break;
        case "22:40":
            index = "104";
            break;
        case "22:45":
            index = "105";
            break;
        case "22:50":
            index = "106";
            break;
        case "22:55":
            index = "107";
            break;
        case "23:00":
            index = "108";
            break;
        case "23:05":
            index = "109";
            break;
        case "23:10":
            index = "110";
            break;
        case "23:15":
            index = "111";
            break;
        case "23:20":
            index = "112";
            break;
        case "23:25":
            index = "113";
            break;
        case "23:30":
            index = "114";
            break;
        case "23:35":
            index = "115";
            break;
        case "23:40":
            index = "116";
            break;
        case "23:45":
            index = "117";
            break;
        case "23:50":
            index = "118";
            break;
        case "23:55":
            index = "119";
            break;
    }
    return index;
}

function leibie(zl) {
    if (zl == "da") {
        return "大";
    }
    if (zl == "xiao") {
        return "小";
    }
    if (zl == "dan") {
        return "单";
    }
    if (zl == "shuang") {
        return "双";
    }
    if (zl == "xiaodan") {
        return "小单";
    }
    if (zl == "xiaoshuang") {
        return "小双";
    }
    if (zl == "dadan") {
        return "大单";
    }
    if (zl == "dashuang") {
        return "大双";
    }
    if (zl == "jd") {
        return "极大";
    }
    if (zl == "jx") {
        return "极小";
    }
    if (zl == "red") {
        return "红";
    }
    if (zl == "green") {
        return "绿";
    }
    if (zl == "blue") {
        return "蓝";
    }
    if (zl == "bz") {
        return "豹子";
    }
    if (zl == "sz") {
        return "顺子";
    }
    if (zl == "dz") {
        return "对子";
    }
    if (zl % 1 == 0) {
        return zl;
    }
    switch (zl) {
        case "da":
            return "大";
            break;
        case "xiao":
            return "小";
            break;
        case "dan":
            return "单";
            break;
        case "shuang":
            return "双";
            break;
        case "zda":
            return "总大";
            break;
        case "zdan":
            return "总单";
            break;
        case "zxiao":
            return "总小";
            break;
        case "zshuang":
            return "总双";
            break;
        case "long":
            return "龙";
            break;
        case "hu":
            return "虎";
            break;
        case "he":
            return "和";
            break;
        case "qsbz":
            return "豹子";
            break;
        case "qssz":
            return "顺子";
            break;
        case "qsdz":
            return "对子";
            break;
        case "qszl":
            return "杂六";
            break;
        case "qsbs":
            return "半顺";
            break;
        case "zsbz":
            return "豹子";
            break;
        case "zssz":
            return "顺子";
            break;
        case "zsdz":
            return "对子";
            break;
        case "zszl":
            return "杂六";
            break;
        case "zsbs":
            return "半顺";
            break;
        case "hsbz":
            return "豹子";
            break;
        case "hssz":
            return "顺子";
            break;
        case "hsdz":
            return "对子";
            break;
        case "hszl":
            return "杂六";
            break;
        case "hsbs":
            return "半顺";
            break;
        default:
            return str;
    }
}

function djs(date) {
    var nextDate = date.split(" ");
    var next = nextDate[0].split("-");
    var time = nextDate[1].split(":");
    var timer = new Date(next[0], next[1] - 1, next[2], time[0], time[1], time[2]);
    var newdate = new Date();
    return ((timer.getTime() - newdate.getTime()) / 1000).toFixed(0);
}

function yanse(sum) {
    if (sum == 13 || sum == 14 || sum == 0 || sum == 27) {
        return "#A2A2A3";
    } else if (sum % 3 == 0) {
        return "#e46362"
    } else if (sum % 3 == 1) {
        return "#7CE864"
    } else if (sum % 3 == 2) {
        return "#809DE4"
    }
}


function panduan(nums) {
    var num = nums.split(",");
    var sum = num[0] * 1 + num[1] * 1 + num[2] * 1;
    num.sort(function (a, b) {
        return b - a;
    });
    var say = "";
    if (num[0] == num[1] && num[1] == num[2] && num[0] == num[2]) {
        say += "豹子,";
    } else if (num[0] == (num[1] || num[2]) || num[1] == num[2]) {
        say += "对子,";
    } else if (num[0] - 1 == num[1] && num[1] - 1 == num[2]) {
        say += "顺子,";
    }
    if (sum <= 13) {
        if (sum <= 5) {
            say += "极小,"
        } else {
            say += "小,"
        }
    } else if (sum >= 14) {
        if (sum >= 22) {
            say += "极大,"
        } else {
            say += "大,"
        }
    }
    if (sum % 2 == 0) {
        say += "双"
    } else {
        say += "单"
    }
    return say;
}
function prn1_print(con) {
    if (confirm("是否打印")) {
        CreateOneFormPage(con);
        LODOP.PRINT();
    }
}


function CreateOneFormPage(con) {
    LODOP = getLodop();
    LODOP.PRINT_INIT("打印控件功能演示_Lodop功能_表单一");
    LODOP.SET_PRINT_STYLE("FontSize", 14);
    LODOP.SET_PRINT_STYLE("Bold", 1);
    LODOP.ADD_PRINT_HTM(1, "2%", "96%", "BottomMargin:0px", con);
    LODOP.SET_PRINT_PAGESIZE(3, 800, 80, "");
}

function gz(num1, sum1) {
    var num = num1.split(",");
    var sum = sum1;
    var arr = [];
    arr.push(sum);
    if (sum == (13 || 14 || 0 || 27)) {
        arr.push("hui");
    } else if (sum % 3 == 0) {
        arr.push("red");
    } else if (sum % 3 == 1) {

        arr.push("green");
    } else if (sum % 3 == 2) {
        arr.push("blue");
    }
    num.sort(function (a, b) {
        return b - a;
    });
    if (num[0] == num[1] && num[1] == num[2] && num[0] == num[2]) {
        arr.push("bz")
    } else if (num[0] == (num[1] || num[2]) || num[1] == num[2]) {
        arr.push("dz")
    } else if (num[0] - 1 == num[1] && num[1] - 1 == num[2]) {
        arr.push("sz")
    } else {
        arr.push("zl")
    }
    if (sum <= 13) {
        if (sum <= 5) {
            arr.push("jx");
            arr.push("xiao");
        } else {
            arr.push("xiao");
        }
    } else if (sum >= 14) {
        if (sum >= 22) {
            arr.push("jd");

            arr.push("da");
        } else {
            arr.push("da");
        }
    }
    if (sum % 2 == 0) {
        arr.push("shuang");
        if (sum >= 14) {
            arr.push("dashuang");
        } else {
            arr.push("xiaoshuang");
        }
    } else {
        arr.push("dan");
        if (sum >= 14) {
            arr.push("dadan");
        } else {
            arr.push("xiaodan");
        }
    }
    return JSON.stringify(arr);

}


function qszshs(str, index) {
    if (str == "zda" || str == "zxiao" || str == "zdan" || str == "zshuang") {
        return "总和";
    } else if (str == "long" || str == "hu" || str == "he") {
        return "龙虎";
    } else if (str[0] == "q" && str[1] == "s") {
        return "前三";
    } else if (str[0] == "z" && str[1] == "s" && str[2] != "h") {
        return "中三";
    } else if (str[0] == "h" && str[1] == "s") {
        return "后三";
    } else if (index == "1") {
        return "第一球";
    } else if (index == "2") {
        return "第二球";
    } else if (index == "3") {
        return "第三球";
    } else if (index == "4") {
        return "第四球";
    } else if (index == "5") {
        return "第五球";
    }
}

function jisuan(str) {
    var arr = str.split(",");
    return (arr[0] * 1) + (arr[1] * 1) + (arr[2] * 1)
}

function cqleibie(str) {
    switch (str) {
        case "da":
            return "大";
            break;
        case "xiao":
            return "小";
            break;
        case "dan":
            return "单";
            break;
        case "shuang":
            return "双";
            break;
        case "zda":
            return "总大";
            break;
        case "zdan":
            return "总单";
            break;
        case "zxiao":
            return "总小";
            break;
        case "zshuang":
            return "总双";
            break;
        case "long":
            return "龙";
            break;
        case "hu":
            return "虎";
            break;
        case "he":
            return "和";
            break;
        case "qsbz":
            return "豹子";
            break;
        case "qssz":
            return "顺子";
            break;
        case "qsdz":
            return "对子";
            break;
        case "qszl":
            return "杂六";
            break;
        case "qsbs":
            return "半顺";
            break;
        case "zsbz":
            return "豹子";
            break;
        case "zssz":
            return "顺子";
            break;
        case "zsdz":
            return "对子";
            break;
        case "zszl":
            return "杂六";
            break;
        case "zsbs":
            return "半顺";
            break;
        case "hsbz":
            return "豹子";
            break;
        case "hssz":
            return "顺子";
            break;
        case "hsdz":
            return "对子";
            break;
        case "hszl":
            return "杂六";
            break;
        case "hsbs":
            return "半顺";
            break;
        default:
            return str;
    }
}

function cqpl(str) {
    if (str == 0 || str == 1 || str == 2 || str == 3 || str == 4 || str == 5 || str == 6 || str == 7 || str == 8 || str == 9 || str == "he") {
        return "8";
    }
    if (str == "da" || str == "xiao" || str == "dan" || str == "shuang" || str == "zda" || str == "zxiao" || str == "zdan" || str == "zshuang" || str == "long" || str == "hu") {
        return "1.95";
    }
    if (str == "qsbz" || str == "zsbz" || str == "hsbz") {
        return "70";
    }
    if (str == "qssz" || str == "zssz" || str == "hssz") {
        return "14";
    }
    if (str == "qsbs" || str == "zsbs" || str == "hsbs") {
        return "2.5";
    }
    if (str == "qsdz" || str == "zsdz" || str == "hsdz") {
        return "2.5";
    }
    if (str == "qszl" || str == "zszl" || str == "hszl") {
        return "2.5";
    }
}

function jndwin(str) {
    if(str == 0||str==27){
        return "450";
    }
    if(str == 1||str==26){
        return "170";
    }
    if(str==2||str==25){
        return "90";
    }
    if(str == 3||str == 24){
        return "61";
    }
    if(str == 4||str=="23"){
        return "31";
    }
    if(str == 5||str == "22"){
        return "25";
    }
    if(str == 6||str == "7" ||str =="8"||str=="9"||str=="10"||str=="11"||str=="16"||str=="17"||str=="18"||str=="19"||str=="20"||str=="21"){
        return "12";
    }
    if(str == "12"|| str == "13"||str=="14"||str=="15"){
        return "11";
    }
    if(str == "da"||str=="xiao"||str=="dan"||str=="shuang"){
        return "1.9";
    }
    if(str == "dadan"||str == "dashuang" ||str =="xiaodan"||str=="xiaoshuang"){
        return "3.5";
    }
    if(str == "red"||str=="green"||str=="blue"||str=="dz"){
        return "2.7";
    }
    if(str == "bz"){
        return "45";
    }
    if(str == "sz"||str == "jd"||str=="jx"){
        return "13";
    }
}




























