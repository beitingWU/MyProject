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
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                查看支部详情
            </h1>


        </div>

        <div id="page-inner">
            <div class="dashboard-cards">

                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-3">

                        <div class="card horizontal cardIcon waves-effect waves-dark">
                            <div class="card-image red">
                                <i class="material-icons dp48">import_export</i>
                            </div>
                            <div class="card-stacked red">
                                <div class="card-content">
                                    <h3>支部编号</h3>
                                </div>
                                <div class="card-action">
                                    <strong id="bid"></strong>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="card horizontal cardIcon waves-effect waves-dark">
                            <div class="card-image red">
                                <i class="material-icons dp48">import_export</i>
                            </div>
                            <div class="card-stacked red">
                                <div class="card-content">
                                    <h3>名称</h3>
                                </div>
                                <div class="card-action">
                                    <strong id="bname"></strong>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">

                        <div class="card horizontal cardIcon waves-effect waves-dark">
                            <div class="card-image red">
                                <i class="material-icons dp48">shopping_basket</i>
                            </div>
                            <div class="card-stacked red">
                                <div class="card-content">
                                    <h3>人数</h3>
                                </div>
                                <div class="card-action">
                                    <strong id="peoNum"></strong>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">

                        <div class="card horizontal cardIcon waves-effect waves-dark">
                            <div class="card-image red">
                                <i class="material-icons dp48">lock_outline</i>
                            </div>
                            <div class="card-stacked red">
                                <div class="card-content">
                                    <h3>创建时间</h3>
                                </div>
                                <div class="card-action">
                                    <strong id="createTime"></strong>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">

                        <div class="card horizontal cardIcon waves-effect waves-dark">
                            <div class="card-image red">
                                <i class="material-icons dp48">import_export</i>
                            </div>
                            <div class="card-stacked red">
                                <div class="card-content">
                                    <h3>所属单位</h3>
                                </div>
                                <div class="card-action">
                                    <strong id="belong"></strong>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="row" id="rulesRow">
                <%--<div class="col-md-4 col-sm-4">--%>
                    <%--<div class="card teal">--%>
                        <%--<div class="card-content white-text">--%>
                            <%--<span class="card-title">Card Title</span>--%>
                            <%--<p>I am a very simple card. I am good at containing small bits of information.--%>
                                <%--I am convenient because I require little markup to use effectively.</p>--%>
                        <%--</div>--%>
                        <%--<div class="card-action">--%>
                            <%--<a href="#">This is a link</a>--%>
                            <%--<a href="#">This is a link</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 col-sm-4">--%>
                    <%--<div class="card">--%>
                        <%--<div class="card-content">--%>
                            <%--<span class="card-title">Card Title</span>--%>
                            <%--<p>I am a very simple card. I am good at containing small bits of information.--%>
                                <%--I am convenient because I require little markup to use effectively.</p>--%>
                        <%--</div>--%>
                        <%--<div class="card-action">--%>
                            <%--<a href="#">This is a link</a>--%>
                            <%--<a href="#">This is a link</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 col-sm-4">--%>
                    <%--<div class="card blue-grey darken-1">--%>
                        <%--<div class="card-content white-text">--%>
                            <%--<span class="card-title">Card Title</span>--%>
                            <%--<p>I am a very simple card. I am good at containing small bits of information.--%>
                                <%--I am convenient because I require little markup to use effectively.</p>--%>
                        <%--</div>--%>
                        <%--<div class="card-action">--%>
                            <%--<a href="#">This is a link</a>--%>
                            <%--<a href="#">This is a link</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
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
<script src="../assets/js/morris/raphael-2.1.0.min.js"></script>

<script src="../assets/js/morris/morris.js"></script>


<script src="../assets/js/easypiechart.js"></script>

<script src="../assets/js/easypiechart-data.js"></script>

<script src="../assets/js/Lightweight-Chart/jquery.chart.js"></script>

<!-- Custom Js -->
<script src="../assets/js/custom-scripts.js"></script>
</body>
</html>

<script>
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
                alert('wuzhi');
                return null;
            }
        } else {
            // 抱歉! 不支持 web 存储。
            alert('抱歉! 不支持 web 存储');
        }
    }

    window.onload = function () {
        var jsonStr = getTpData();
        var jsonData = JSON.parse(jsonStr);
        $.ajax({
            url: '/getRules',
            type: "POST",
            dataType: "json",
            data: {'bid':jsonData.bid},
            aysnc: false,
            success: function (backData) {
                loadData(backData);
            },
            error: function (ajax) {
                //alert(ajax.readyState);
            }
        }).done(function () {
            console.log('----jsonStr-----'+jsonStr);

            $('#bid').html(jsonData.bid);
            $('#createTime').html(jsonData.createTime)
            $('#bname').html(jsonData.bname);
            $('#peoNum').html(jsonData.peoNum);
            $('#belong').html(jsonData.belong);
        });
    }


    function loadData(param) {
        var jsonObj = JSON.parse(param);
        console.log(jsonObj);
        if (jsonObj.ret == 1) {
            for (var i = 0; i < jsonObj.retinfo.length; i++) {
                console.log(i);
                var html = '<div class="col-md-4 col-sm-4">' +
                    '<div class="card teal">' +
                    '<div class="card-content white-text">' +
                    '<span class="card-title">' + jsonObj.retinfo[i].rname + '</span>' +
                    '<p>' + jsonObj.retinfo[i].content+ '</p>' +
                    '</div>'+
                    '<div class="card-action">' +
                    '<a href="#">' + getMyDate(jsonObj.retinfo[i].setTime )+ '</a>' +
                    '</div>' +
                    '</div>' +
                    '</div>';
                $('#rulesRow').append(html);
            }

        } else {
            var flag = confirm('数据加载失败，是否重新加载！');
            if (flag) {
                //window.location.href = './look_party_members.jsp';
            } else {
                //window.location.href = '../index.html';
            }
        }
        // alert(JSON.stringify(backData));

    }

    //获得年月日      得到日期oTime
    function getMyDate(str) {
        var oDate = new Date(str),
            oYear = oDate.getFullYear(),
            oMonth = oDate.getMonth() + 1,
            oDay = oDate.getDate(),
            oHour = oDate.getHours(),
            oMin = oDate.getMinutes(),
            oSen = oDate.getSeconds(),
            oTime = oYear + '-' + getzf(oMonth) + '-' + getzf(oDay) + ' ' + getzf(oHour) + ':' + getzf(oMin) + ':' + getzf(oSen);//最后拼接时间
        return getzf(oTime);
    };

    //补0操作
    function getzf(num) {
        if (parseInt(num) < 10) {
            num = '0' + num;
        }
        return num;
    }

</script>
