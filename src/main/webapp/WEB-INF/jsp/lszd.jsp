<%@ page import="com.hncp.cqssc.entity.frmuser" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/4
  Time: 6:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>历史账单</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}static/layui/css/layui.css">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<div class="demoTable" align="center">

    <div class="layui-inline" align="center">
        <input type="text" class="layui-input" id="rq"  name = "rq" style="width: 270px">
    </div>
    <button class="layui-btn" data-type="reload">搜索</button>
    <button class="layui-btn" data-type="back">返回</button>
</div>

<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table>


<script src="${pageContext.request.contextPath}static/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}static/layui/layui.js" type="text/javascript"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#rq' //指定元素
        });
    });
    layui.use('table', function(){
        var table = layui.table;

        //方法级渲染
        table.render({
            elem: '#LAY_table_user'
            ,url: '${pageContext.request.contextPath}/getLszd'
            ,totalRow: true
            ,cols: [[
                {checkbox: true, fixed: true}
                ,{field:'qh', title: '期数',  sort: true ,totalRowText: '合计'}
                ,{field:'kjhm', title: '开奖号码',  sort: true}
                ,{field:'mrlx', title: '类型',  sort: true}
                ,{field:'mrwz', title: '位置',  sort: true}
                ,{field:'mrje', title: '下注', sort: true,totalRow: true}
                ,{field:'kyje', title: '中奖',   sort: true ,style:'color:red;',totalRow: true}
                ,{field:'sfzj', title: '是否中奖',  sort: true}
            ]]
            ,loading: true
            ,id: 'oid'
            ,page: true
            ,height: 870
            ,even: true
            ,limit: 10000
            ,limits: [10000]
        });

        var $ = layui.$, active = {
            reload: function(){
                var demoReload = $('#rq');
                //执行重载
                table.reload('oid', {
                    url : '${pageContext.request.contextPath}/getLszd',
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        rq: demoReload.val()
                    }
                });
            }
        };


        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            if(type=="back"){
                window.location.href="${pageContext.request.contextPath}/queryFrmuser";
            }
            if(type=="reload"){
                active[type] ? active[type].call(this) : '';
            }
        });
    });
</script>

</body>
</html>
