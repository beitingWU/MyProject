<%--
  Created by IntelliJ IDEA.
  User: aaaa
  Date: 18-4-30
  Time: 下午2:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>党建管理系统</title>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../assets/materialize/css/materialize.min.css" media="screen,projection"/>
    <!-- Bootstrap Styles-->
    <link href="../assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="../assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->
    <link href="../assets/js/morris/morris-0.4.3.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="../assets/css/custom-styles.css" rel="stylesheet"/>

    <link rel="stylesheet" href="../assets/js/Lightweight-Chart/cssCharts.css">
</head>
<body>
<div id="wrapper">
<%@include file="../b1/top-menu.jsp" %>
<%@include file="../b1/main-menu.jsp" %>
    <div id="page-wrapper" style="background-color: #ffffff">
        <div class="row">
            <div class="col-lg-12 col-sm-12" style="text-align: center">
                <h1 class="page-header">
                    添加支部信息
                </h1>
            </div>
        </div>

        <div id="page-inner">
            <div class="row">
                <div class="col-lg-12 col-sm-12">
                    <div class="card">
                        <div class="card-content">
                            <form class="col s12" id="branchForm">
                                <div class="row">
                                    <div class="col s6">
                                        <i class="material-icons prefix"></i>
                                        <label for="bid">支部ID</label>
                                        <input id="bid" name="branch.bid" type="text" class="validate">
                                    </div>
                                    <div class="col s6">
                                        <i class="material-icons prefix"></i>
                                        <label for="bname">支部名称</label>
                                        <input id="bname" name="branch.bname" type="text" class="validate">
                                    </div>
                                    <div class="col s6">
                                        <i class="material-icons prefix"></i>
                                        <label for="peoNum">人数</label>
                                        <input id="peoNum" name="branch.peoNum" type="text" class="validate">
                                    </div>
                                    <div class="col s6">
                                        <i class="material-icons prefix"></i>
                                        <label for="belong">所属单位</label>
                                        <input id="belong" name="branch.belong" type="text" class="validate">
                                    </div>
                                </div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a class="waves-effect waves-light btn" id="submitData">
                                    <i class="material-icons left"></i>修改
                                </a>
                                <a class="waves-effect waves-light btn">
                                    <i class="material-icons left"></i>重置
                                </a>
                            </form>
                            <div class="clearBoth"></div>
                        </div>
                    </div>
                </div>

                <footer><p>All right reserved. Template by: <a href="http://www.mycodes.net/">WebThemez.com</a></p>
                </footer>
            </div>
        </div>
    </div>
</div>

<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="../assets/js/jquery-1.10.2.js"></script>

<!-- Bootstrap Js -->
<script src="../assets/js/bootstrap.min.js"></script>

<script src="../assets/materialize/js/materialize.min.js"></script>

<!-- Metis Menu Js -->
<script src="../assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->


<!-- Custom Js -->
<script src="../assets/js/custom-scripts.js"></script>
</body>
</html>
<script type="text/javascript">

    $('#submitData').click(function () {
        var jsonData = {};
        //将表单格式化为数组
        var formArray = $('#branchForm').serializeArray();
        $.each(formArray,function (n,value) {
            jsonData[value.name] = value.value;
        });
        //alert('jsonData'+JSON.stringify(jsonData));
        var ret = confirm('确定修改？');
        var url = '/modifyBranch'
        if (ret) {
            $.ajax({
                url: url,
                type: "POST",
                dataType: "json",
                data: jsonData,
                aysnc: false,
                success: function (backData) {
                    var ret = backData.ret;
                    if (ret == 1){
                        alert('修改成功！');
                        window.location.href = './look_branches.jsp';
                    } else{
                        alert('修改失败！');
                        window.location.href = './update_branches.jsp';
                    }

                },
                error: function (ajax) {
                    alert('服务器发生错误！');
                    window.location.href = './look_branches.jsp';
                }
            })
           // alert('提交了！');
            return;
        }
        //alert('没提交！');
    });

    function getTpData() {
        if(typeof(Storage)!=="undefined")
        {
            // 是的! 支持 localStorage  sessionStorage 对象!
            // 一些代码.....
            if (sessionStorage.jsonData)
            {

                return sessionStorage.jsonData;
            }
            else
            {
                return null;
            }
        } else {
            // 抱歉! 不支持 web 存储。
            alert('抱歉! 不支持 web 存储');
        }
    }

    window.onload = function () {
        var jsonStr = getTpData();
        console.log('----jsonStr-----'+jsonStr);
        var jsonData = JSON.parse(jsonStr);
        $('#bid').val(jsonData.bid);
        $('#bname').val(jsonData.bname);
        $('#peoNum').val(jsonData.peoNum);
        $('#belong').val(jsonData.belong);

    }
</script>
