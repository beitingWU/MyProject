<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>党建管理系统</title>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../css1/materialize.min.css" media="screen,projection" type="text/css"/>
    <!-- Bootstrap Styles-->
    <link rel="stylesheet" href="../css1/bootstrap.css" type="text/css"/>
    <!-- FontAwesome Styles-->
    <link rel="stylesheet" href="../css1/font-awesome.css" type="text/css"/>
    <!-- Morris Chart Styles-->
    <link rel="stylesheet" href="../css1/morris-0.4.3.min.css" type="text/css"/>
    <!-- Custom Styles-->
    <link rel="stylesheet" href="../css1/custom-styles.css" type="text/css"/>
    <link rel="stylesheet" href="../css1/cssCharts.css" type="text/css"/>
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
                                    <div class="input-field col s6">
                                        <i class="material-icons prefix"></i>
                                        <label for="bname">支部名称</label>
                                        <input id="bname" name="branch.bname" type="text" class="validate">
                                    </div>
                                    <div class="input-field col s6">
                                        <i class="material-icons prefix"></i>
                                        <label for="peoNum">人数</label>
                                        <input id="peoNum" name="branch.peoNum" type="text" class="validate">
                                    </div>
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix"></i>
                                        <label for="belong">所属单位</label>
                                        <input id="belong" name="branch.belong" type="text" class="validate">
                                    </div>
                                </div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a class="waves-effect waves-light btn" id="submitData">
                                    <i class="material-icons left"></i>添加
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
<script src="../assets/js/custom-scripts.js"></script>
<script type="text/javascript" src="../jss/bootstrap.min.js"></script>
<script type="text/javascript" src="../jss/jquery-1.10.2.js"></script>
<script type="text/javascript" src="../jss/jquery.metisMenu.js"></script>
<script type="text/javascript" src="../jss/materialize.min.js"></script>
</body>
</html>
<script type="text/javascript">

    $('#submitData').click(function () {
        var jsonData = {};
        var formArray = $('#branchForm').serializeArray();
        $.each(formArray,function (n,value) {
            jsonData[value.name] = value.value;
        })
        //alert('jsonData'+JSON.stringify(jsonData));
        var ret = confirm('确定提交？');
        var url = '/insertBranch'
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
                        alert('添加成功！');
                        window.location.href = './look_branches.jsp';
                    } else{
                        alert('添加失败！');
                        window.location.href = './insert_branches.jsp';
                    }

                },
                error: function (ajax) {
                    alert('服务器发生错误！');
                    window.location.href = './insert_branches.jsp';
                }
            })
           // alert('提交了！');
            return;
        }
        //alert('没提交！');
    });

</script>
