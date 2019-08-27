<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/4
  Time: 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>重庆时时彩</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}static/css/cqssc.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}static/css/normalize.css">

</head>
<body>
<div class="top">
    <div class="w">
        <p>登录名：<span class="username">${frmuser.name}</span></p>
        <p>余　额：<span class="balance">${frmuser.money}</span></p>
        <a id="exit" href="javascript:;">退出</a>
        <a href="${pageContext.request.contextPath}/goLszd">历史账单</a>
       <a href="${pageContext.request.contextPath}/goWjmx">未结明细</a>

    </div>
</div>
<div class="kj">
    <div class="w">
        <div class="zl">重庆时时彩

        </div>
        <div class="left">
            <div class="dqqs">第<span id="dqqs"></span>期</div>
            <p>还剩<span class="djs">0</span>秒</p>
            <div class="jg">
                <div class="qs">第<span id="kjqs"></span>期</div>
                <span class="num1"></span>
                <span class="num2"></span>
                <span class="num3"></span>
                <span class="num4"></span>
                <span class="num5"></span>
            </div>
        </div>
        <div class="right">点击查看走势图</div>
    </div>
</div>
<div class="con">
    <div class="w">
        <div class="sz">
            <ul id="q1">
                <li class="one">第一球（万）</li>
                <li>0:<input type="text" zl="0" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>1:<input type="text" zl="1" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>2:<input type="text" zl="2" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>3:<input type="text" zl="3" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>4:<input type="text" zl="4" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>5:<input type="text" zl="5" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>6:<input type="text" zl="6" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>7:<input type="text" zl="7" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>8:<input type="text" zl="8" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>9:<input type="text" zl="9" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>大:<input type="text" zl="da" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>小:<input type="text" zl="xiao" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>单:<input type="text" zl="dan" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>双:<input type="text" zl="shuang" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
            </ul>
            <ul id="q2">
                <li class="one">第二球（千）</li>
                <li>0:<input type="text" zl="0" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>1:<input type="text" zl="1" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>2:<input type="text" zl="2" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>3:<input type="text" zl="3" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>4:<input type="text" zl="4" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>5:<input type="text" zl="5" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>6:<input type="text" zl="6" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>7:<input type="text" zl="7" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>8:<input type="text" zl="8" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>9:<input type="text" zl="9" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>大:<input type="text" zl="da" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>小:<input type="text" zl="xiao" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>单:<input type="text" zl="dan" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>双:<input type="text" zl="shuang" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
            </ul>
            <ul id="q3">
                <li class="one">第三球（百）</li>
                <li>0:<input type="text" zl="0" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>1:<input type="text" zl="1" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>2:<input type="text" zl="2" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>3:<input type="text" zl="3" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>4:<input type="text" zl="4" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>5:<input type="text" zl="5" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>6:<input type="text" zl="6" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>7:<input type="text" zl="7" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>8:<input type="text" zl="8" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>9:<input type="text" zl="9" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>大:<input type="text" zl="da" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>小:<input type="text" zl="xiao" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>单:<input type="text" zl="dan" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>双:<input type="text" zl="shuang" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
            </ul>
            <ul id="q4">
                <li class="one">第四球（十）</li>
                <li>0:<input type="text" zl="0" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>1:<input type="text" zl="1" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>2:<input type="text" zl="2" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>3:<input type="text" zl="3" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>4:<input type="text" zl="4" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>5:<input type="text" zl="5" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>6:<input type="text" zl="6" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>7:<input type="text" zl="7" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>8:<input type="text" zl="8" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>9:<input type="text" zl="9" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>大:<input type="text" zl="da" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>小:<input type="text" zl="xiao" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>单:<input type="text" zl="dan" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>双:<input type="text" zl="shuang" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
            </ul>
            <ul id="q5">
                <li class="one">第五球（个）</li>
                <li>0:<input type="text" zl="0" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>1:<input type="text" zl="1" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>2:<input type="text" zl="2" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>3:<input type="text" zl="3" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>4:<input type="text" zl="4" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>5:<input type="text" zl="5" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>6:<input type="text" zl="6" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>7:<input type="text" zl="7" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>8:<input type="text" zl="8" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>9:<input type="text" zl="9" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
                <li>大:<input type="text" zl="da" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>小:<input type="text" zl="xiao" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>单:<input type="text" zl="dan" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>双:<input type="text" zl="shuang" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
            </ul>
        </div>
        <div class="dx">
            <ul>
                <li>总大：<input type="text" zl="zda" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>总小：<input type="text" zl="zxiao" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>总单：<input type="text" zl="zdan" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>总双：<input type="text" zl="zshuang" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
            </ul>
        </div>
        <div class="lh">
            <ul>
                <li>龙：<input type="text" zl="long" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>虎：<input type="text" zl="hu" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>10000)value=10000"></li>
                <li>和：<input type="text" zl="he" placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>2000)value=2000"></li>
            </ul>
        </div>
        <div class="bz">
            <div id="qs">前三</div>
            <ul>
                <li>豹子：<input type="text" zl="qsbz"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>100)value=100"></li>
                <li>顺子：<input type="text" zl="qssz"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>1000)value=1000"></li>
                <li>半顺：<input type="text" zl="qsbs"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>5000)value=5000"></li>
                <li>对子：<input type="text" zl="qsdz"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>5000)value=5000"></li>
                <li>杂六：<input type="text" zl="qszl"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>5000)value=5000"></li>
            </ul>
            <div id="zs">中三</div>
            <ul>
                <li>豹子：<input type="text" zl="zsbz"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>100)value=100"></li>
                <li>顺子：<input type="text" zl="zssz"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>1000)value=1000"></li>
                <li>半顺：<input type="text" zl="zsbs"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>5000)value=5000"></li>
                <li>对子：<input type="text" zl="zsdz"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>5000)value=5000"></li>
                <li>杂六：<input type="text" zl="zszl"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>5000)value=5000"></li>
            </ul>
            <div id="hs">后三</div>
            <ul>
                <li>豹子：<input type="text" zl="hsbz"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>100)value=100"></li>
                <li>顺子：<input type="text" zl="hssz"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>1000)value=1000"></li>
                <li>半顺：<input type="text" zl="hsbs"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>5000)value=5000"></li>
                <li>对子：<input type="text" zl="hsdz"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>5000)value=5000"></li>
                <li>杂六：<input type="text" zl="hszl"  placeholder="" oninput = "value=value.replace(/[^\d]/g,'');if(value>5000)value=5000"></li>
            </ul>
        </div>
    </div>
</div>
<div class="tz">
    <div class="w">
        <button class="cz">重置</button>
        <button class="xz" onclick="timeout()">下注</button>
    </div>
</div>
<div class="shadow"><div>封盘中...</div></div>
<input type="hidden" name="account" id="account" value="${frmuser.account}">
<input type="hidden" name="pwd" id="pwd" value="${frmuser.password}">
<script src="${pageContext.request.contextPath}static/js/jquery-1.10.2.min.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}static/js/cookie.js" type="text/javascript" language="javascript"></script>
<script src="${pageContext.request.contextPath}static/js/date.js" type="text/javascript" language="javascript"></script>
<script src="${pageContext.request.contextPath}static/js/LodopFuncs.js" language="javascript" type="text/javascript"></script>
</body>

<script>
    $(".zl button").click(function(){
        location.href = "cpzl.html"
    })
    $("#exit").click(function(){
        location.href = "../..";
    });

    csh();
    function csh (){
        $.ajax({
            type: "POST",
            dataType: "json",
            url: "${pageContext.request.contextPath}/getCqplphp",
            success:function(result){
                $("input").each(function(){
                    for(var i = 0 ;i<result.length;i++){
                        if($(this).attr("zl")==result[i].zl){
                            $(this).attr("placeholder","赔率："+result[i].pl);
                        }
                    }
                })
            }
        })

    }

    var t = null;
    var timer = null;
    var b = null;
    function start(){
        clearInterval(timer);
        clearInterval(t);
        clearInterval(b);
        var date = null;
        $.ajax({
            async: false,
            type: "GET",
            success: function(result, status, xhr) {
                date = new Date( xhr.getResponseHeader("Date"));
                var kjDate = new Date();
                var h = date.getHours();
                var m = date.getMinutes();
                kjDate.setSeconds(0);
                if(date>time("10","00")&&date<time("22","00")){
                    if(m>=50){
                        h++;
                        m=0;
                        kjDate.setHours(h);
                        kjDate.setMinutes(m);
                    }else {
                        m = m+10-(m%10);
                        kjDate.setMinutes(m);
                    }
                }else if(date>time("22","00")||date<time("1","55")){
                    if(m>=55){
                        h++;
                        m=0;
                        kjDate.setHours(h);
                        kjDate.setMinutes(0);
                    }else {
                        m = m+5-(m%5);
                        kjDate.setMinutes(m);
                    }
                }else if(date>time("1","55")&&date<time("10","00")) {
                    kjDate.setHours(10);
                    kjDate.setMinutes(0);
                }
                var kjTime = Math.round((kjDate - date)/1000)-15;
                timer2 = setInterval(function(){
                    date = new Date();
                    kjTime = Math.round((kjDate - date)/1000)-15;
                    if(kjTime<30){
                        clearInterval(timer2);
                    }
                },5000);
                var kjqs = dateGs(kjDate)*1;
                $("#dqqs").html(kjqs);
                //$(".djs").html(kjTime);
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: "${pageContext.request.contextPath}/getCqkjnumphp",
                    success: function (result) {
                        $("#kjqs").html(result[0].qs);
                        var arr = result[0].kj.split(",");
                        $(".num1").html(arr[0]);
                        $(".num2").html(arr[1]);
                        $(".num3").html(arr[2]);
                        $(".num4").html(arr[3]);
                        $(".num5").html(arr[4]);
                    }
                });

                timer = setInterval(function(){
                    kjTime--;
                   // console.log(kjTime);
                    $(".djs").html(kjTime);
                    $(".shadow").css("display","none");

                    if(kjTime<=0){
                        clearInterval(timer);
                       clearInterval(t);

                        $(".shadow").css("display","block");
                        $(".djs").html("等待");
                        t = setInterval(function(){
                            Math.round(Math.random()*9);
                            Math.round(Math.random()*9);
                            Math.round(Math.random()*9);
                            Math.round(Math.random()*9);
                            Math.round(Math.random()*9);
                        },50);
                        setTimeout(function(){
                            clearInterval(timer);
                            clearInterval(timer2);
                            start();
                        },30000);
                    }

                },1000);
            }
        });

    }
    start();
    $(".cz").click(function () {
        $("input").val("");
    });
    $(".right").click(function(){
        window.open("${pageContext.request.contextPath}/showkj");
    });


    $(document).keydown(function(event){
        if(event.keyCode==13){
            timeout();
        }
    });

    var xztime = null;

    function timeout(){
        if(xztime == null){
            xztime = new Date();
            xz();
        }else {
            var xzt = new Date();
            if(xzt - xztime <3500){

            }else {
                xztime = new Date();
                xz();
            }
        }
    }

    function xz(){
        var a = confirm("是否确认下注？");
        if($(".shadow").css("display")=="none"){
            if(a){
                var state = "";
                var je = 0;
                $("#q1 input").each(function(){
                    var that = $(this);
                    if(that.val()&&that.val()!=0){
                        state += "1-"+that.attr("zl")+"-"+that.val()+"-"+qszshs(that.attr("zl"),1)+"-"+cqleibie(that.attr("zl"))+"-"+cqpl(that.attr("zl"))+" ";
                        je += that.val()*1;
                    }
                });
                $("#q2 input").each(function(){
                    var that = $(this);
                    if(that.val()&&that.val()!=0){
                        state += "2-"+that.attr("zl")+"-"+that.val()+"-"+qszshs(that.attr("zl"),2)+"-"+cqleibie(that.attr("zl"))+"-"+cqpl(that.attr("zl"))+" ";
                        je += that.val()*1;
                    }
                });
                $("#q3 input").each(function(){
                    var that = $(this);
                    if(that.val()&&that.val()!=0){
                        state += "3-"+that.attr("zl")+"-"+that.val()+"-"+qszshs(that.attr("zl"),3)+"-"+cqleibie(that.attr("zl"))+"-"+cqpl(that.attr("zl"))+" ";
                        je += that.val()*1;
                    }
                });
                $("#q4 input").each(function(){
                    var that = $(this);
                    if(that.val()&&that.val()!=0){
                        state += "4-"+that.attr("zl")+"-"+that.val()+"-"+qszshs(that.attr("zl"),4)+"-"+cqleibie(that.attr("zl"))+"-"+cqpl(that.attr("zl"))+" ";
                        je += that.val()*1;
                    }
                });
                $("#q5 input").each(function(){
                    var that = $(this);
                    if(that.val()&&that.val()!=0){
                        state += "5-"+that.attr("zl")+"-"+that.val()+"-"+qszshs(that.attr("zl"),5)+"-"+cqleibie(that.attr("zl"))+"-"+cqpl(that.attr("zl"))+" ";
                        je += that.val()*1;
                    }
                });
                $(".dx input").each(function(){
                    var that = $(this);
                    if(that.val()&&that.val()!=0){
                        state += "1-"+that.attr("zl")+"-"+that.val()+"-"+qszshs(that.attr("zl"),1)+"-"+cqleibie(that.attr("zl"))+"-"+cqpl(that.attr("zl"))+" ";
                        je += that.val()*1;
                    }
                });
                $(".lh input").each(function(){
                    var that = $(this);
                    if(that.val()&&that.val()!=0){
                        state += "1-"+that.attr("zl")+"-"+that.val()+"-"+qszshs(that.attr("zl"),1)+"-"+cqleibie(that.attr("zl"))+"-"+cqpl(that.attr("zl"))+" ";
                        je += that.val()*1;
                    }
                });
                $(".bz input").each(function(){
                    var that = $(this);
                    if(that.val()&&that.val()!=0){
                        state += "1-"+that.attr("zl")+"-"+that.val()+"-"+qszshs(that.attr("zl"),1)+"-"+cqleibie(that.attr("zl"))+"-"+cqpl(that.attr("zl"))+" ";
                        je += that.val()*1;
                    }
                });
                if(state){
                    if($(".balance").html()>=je){
                        var str1 = state.slice(0,state.length-1);
                        var arr = str1.split(" ");
                        var str = new Array();
                        var stt = [];
                        for(var i = 0;i<arr.length;i++){
                            str.push(arr[i]);
                            stt.push(arr[i].split("-"))
                        }
                        var strJson = JSON.stringify(str);
                        $("input").val("");

                        $.ajax({
                            type: "POST",
                            dataType: "json",
                            data: {
                                qs:$("#dqqs").html(),
                                data:strJson,
                                je:je,
                                sjc:cdid()
                            },
                            url: "${pageContext.request.contextPath}/cpxz",
                            success: function (result) {
                                if(!result.obj){
                                    alert(result.msg);
                                }else {
                                    alert(result.msg);
                                    var je=result.je;
                                    var tep = <%=request.getParameter("temp")%>;
                                    if(tep!=undefined && tep==1){
                                        je =<%=request.getParameter("je")%>;
                                    }
                                    $(".balance").html((je*1).toFixed(2));
                                    var date = gshdate();
                                    var qs = $('#dqqs').html();
                                    var nr = "<table border='1 cellspacing='0' style='text-align: center;'><tr><td colspan='4' style='font-size: 20px;font-weight: 900;height: 30px;'>重庆时时彩</td></tr>" +
                                        "<tr><td colspan='4'>"+date+"</td></tr><tr><td colspan='4'>期数:"+qs+"</td></tr><tr style='height: 20px;'><td style='width: 75px;height: 25px;'>球位</td><td style='width: 75px;height: 25px;'>种类</td><td style='width: 75px;height: 25px;'>金额</td><td style='width: 75px;height: 25px;'>可赢</td></tr>";
                                    var zh = 0;
                                    for(var p = 0;p<stt.length;p++){
                                        var qiu = qszshs(stt[p][1],stt[p][0])
                                        var cqlb = cqleibie(stt[p][1]);
                                        var pl = cqpl(stt[p][1]);
                                        var win = Math.floor(pl*(stt[p][2]));
                                        zh += Math.floor(stt[p][2]*1);
                                        nr+="<tr style='height: 20px;'>"+
                                               "<td style='width: 75px;height: 25px;'>"+qiu+"</td><td style='width: 75px;height: 25px;'>"+cqlb+"</td><td style='width: 75px;height: 25px;'>"+Math.floor(stt[p][2])+"</td><td style='width: 75px;height: 25px;'>"+win+"</td></tr>";
                                    }
                                    nr+="<tr><td colspan='4' style='height: 25px;'>合计："+zh+"</td></tr></table>";
                                    prn1_print(nr);
                                }
                            }
                        })
                    }else {
                        alert("您的金额不足，请充值");
                    }
                }else {
                    alert("您还没有下注");
                }
            }else{
                alert("封盘期间无法下注");
                $("input").val("");
            }

        }else {
            $("input").val("");
        }
    }

    function cdid(){
        var date = new Date();
        return date.getTime()
    }



</script>
</html>
