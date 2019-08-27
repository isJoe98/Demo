<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/3
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>重庆实时彩</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}static/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}static/css/style.css">
</head>
<body style="width: 100%;height: 100%">
<div class="login-main">
    <header class="layui-elip" style="font-size: 35px;">登&emsp;&emsp;录</header>
    <form class="layui-form" action="${pageContext.request.contextPath}/queryFrmuser" method="get">
        <div class="layui-input-inline">
            <input type="text" name="account" required lay-verify="required" placeholder="用户名" autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-input-inline">
            <input type="password" name="pwd" required lay-verify="required" placeholder="密码" autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-input-inline login-btn">
            <button  lay-submit lay-filter="*" class="layui-btn" >登录</button>
        </div>
        <hr/>
    </form>
</div>
<script src="${pageContext.request.contextPath}static/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}static/layui/layui.js" type="text/javascript"></script>
</body>
<script>
    layui.use(['layer', 'form'], function(){
        var layer = layui.layer
            ,form = layui.form;
        form.on('submit(*)', function(data){
            var loadingIndex = layer.load(2, { //icon支持传入0-2
                shade: [0.5, 'gray'], //0.5透明度的灰色背景
                content: '加载中...',
                success: function (layero) {
                    layero.find('.layui-layer-content').css({
                        'padding-top': '39px',
                        'width': '60px'
                    });
                }
            });
            var t = 0;
            $.ajax({
                url:"${pageContext.request.contextPath}/checkFrmuser",    //请求的url地址
                dataType:"json",   //返回格式为json
                async:false,//请求是否异步，默认为异步，这也是ajax重要特性
                data:data.field,    //参数值
                type:"POST",   //请求方式
                success:function(req){
                    t=req;
                }
            });
            layer.closeAll('loading');
            if(t=="1"){
                layer.msg('登录成功！',{icon: 1});
                return true;
            }else{
                layer.msg("用户不存在或账号密码错误！",{icon: 2});
            }
            return false;
        });
    });
</script>
</html>
