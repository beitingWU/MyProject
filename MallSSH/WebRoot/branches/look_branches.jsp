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
                支部信息管理
            </h1>


        </div>

        <div id="page-inner">

            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="card">
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>支部编号</th>
                                        <th>名称</th>
                                        <th>人数</th>
                                        <th>创建时间</th>
                                        <th>所属单位</th>
                                        <th>操作</th>

                                    </tr>
                                    </thead>
                                    <tbody id="branchBody">
                                    </tbody>
                                </table>

                            </div>

                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>

        </div>
    </div>
</div>

<!-- JS Scripts-->
<!-- jQuery Js
<script src="../assets/js/jquery-1.10.2.js"></script>-->
<script src="../assets/js/jquery-3.3.1.min.js"></script>
<!-- Bootstrap Js -->
<script src="../assets/js/bootstrap.min.js"></script>

<script src="../assets/materialize/js/materialize.min.js"></script>

<!-- Metis Menu Js -->
<script src="../assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->


<!-- Custom Js -->
<script src="../assets/js/custom-scripts.js"></script>
<script type="text/javascript">
    // $(document).ready(function () {
    //     alert('111111');
    //     $.ajax({
    //         url: '/lookBranch',
    //         type: "POST",
    //         dataType: "json",
    //         data: {},
    //         aysnc: false,
    //         success: function (backData) {
    //             // alert(backdata);
    //             // alert(JSON.stringify(backData));
    //             console.log(backData);
    //         },
    //         error: function (ajax) {
    //             //alert(ajax.readyState);
    //         }
    //     })
    //     //$('#branchBody')
    // });
    /**
     *
     *
     * <tr class="success">
     <td>1</td>
     <td>党支部</td>
     <td>10000</td>
     <td>2018-04-30</td>
     <td>中国共产党</td>
     <td>
     <a class="btn btn-danger" href="javascript:void(0)" onclick="lookDetails()">
     <i class="material-icons dp48">search</i><span>查看详情</span>
     </a>
     <a class="btn btn-danger" href="javascript:void(0)" onclick="editData()">
     <i class="material-icons dp48">mode_edit</i><span>编辑</span>
     </a>
     <a class="btn btn-danger" href="javascript:void(0)" onclick="delData()">
     <i class="material-icons dp48">delete</i><span>删除</span>
     </a>
     </td>
     </tr>
     *
     * */
    window.onload = function () {
        $.ajax({
            url: '/lookBranch',
            type: "POST",
            dataType: "json",
            data: {},
            aysnc: false,
            success: function (backData) {
                var jsonObj = backData;
                //ret 1表示正常,0表示异常
                if (jsonObj.ret == 1) {
                    for (var i = 0; i < jsonObj.retinfo.length; i++) {
                        console.log(i);
                        var html = '<tr>' +
                            '<td>' + jsonObj.retinfo[i].bid + '</td>' +
                            '<td>' + jsonObj.retinfo[i].bname + '</td>' +
                            '<td>' + jsonObj.retinfo[i].peoNum + '</td>' +
                            '<td>' + jsonObj.retinfo[i].createTime + '</td>' +
                            '<td>' + jsonObj.retinfo[i].belong + '</td>' +
                            '<td>' +
                            '<a class="btn btn-danger" href="javascript:void(0)" onclick="lookDetails(' + jsonObj.retinfo[i].bid + ')">' +
                            '<i class="material-icons dp48">search</i><span>查看详情</span>' +
                            '</a>' +
                            '<a class="btn btn-danger" href="javascript:void(0)" onclick="editData(' + jsonObj.retinfo[i].bid + ')">' +
                            '<i class="material-icons dp48">mode_edit</i><span>编辑</span>' +
                            '</a>' +
                            '<a class="btn btn-danger" href="javascript:void(0)" onclick="delData(' + jsonObj.retinfo[i].bid + ')">' +
                            '<i class="material-icons dp48">delete</i><span>删除</span>' +
                            '</a>' +
                            '</td>' +
                            '</tr>';
                        $('#branchBody').append(html);
                    }

                } else {
                    var flag = confirm('数据加载失败，是否重新加载！');
                    if (flag) {
                        window.location.href = './look_branch.jsp';
                    } else {
                        window.location.href = '../index.html';
                    }
                }
                // alert(JSON.stringify(backData));
                console.log(backData);
            },
            error: function (ajax) {
                //alert(ajax.readyState);
            }
        })
    }


    function lookDetails(param) {
        $.ajax({
            url: '/getBranchById',
            type: "POST",
            dataType: "json",
            data: {'id':param},
            aysnc: false,
            success: function (backData) {
                var ret = backData.ret;
                if (ret == 1){
                    //JSON.stringify将JSON对象格式化为字符串
                    var jsonParam = JSON.stringify(backData.retinfoBranch);
                    console.log('---jsonparam:'+jsonParam);
                    alert(jsonParam);
                    tpData(jsonParam);
                    window.location.href = './lookDetails_branch.jsp';
                } else{

                    window.location.href = './look_branches.jsp';
                }

                console.log(backData);
            },
            error: function (ajax) {
                //alert(ajax.readyState);
            }
        });
        return;

    }


    /**
     *
     *编辑对象
     */
    function editData(param) {
        $.ajax({
            url: '/getBranchById',
            type: "POST",
            dataType: "json",
            data: {'id':param},
            aysnc: false,
            success: function (backData) {
                var ret = backData.ret;
                if (ret == 1){
                    //JSON.stringify将JSON对象格式化为字符串
                    var jsonParam = JSON.stringify(backData.retinfoBranch);
                    console.log('---jsonparam:'+jsonParam);
                    tpData(jsonParam);
                    window.location.href = './update_branches.jsp';
                } else{

                    window.location.href = './look_branches.jsp';
                }

                console.log(backData);
            },
            error: function (ajax) {
                //alert(ajax.readyState);
            }
        });
        return;
    }

    /**
     *
     * 删除一个对象
     */
    function delData(param) {
        var ret = confirm('确定删除？');
        if (ret) {
            $.ajax({
                url: '/delBranch',
                type: "POST",
                dataType: "json",
                data: {'id':param},
                aysnc: false,
                success: function (backData) {
                    var ret = backData.ret;
                    if (ret == 1){
                        alert('删除成功！');
                        window.location.href = './look_branches.jsp';
                    } else{
                        alert('删除失败！');
                        window.location.href = './look_branches.jsp';
                    }

                    console.log(backData);
                },
                error: function (ajax) {
                    //alert(ajax.readyState);
                }
            })
            return;
        }
    }

    /**
     *
     * h5的WEB存储
     * @param jsonParam
     */
    function tpData(jsonParam) {
        if(typeof(Storage)!=="undefined")
        {
            // 是的! 支持 localStorage  sessionStorage 对象!
            // 一些代码.....
            if (sessionStorage.jsonData)
            {
                sessionStorage.jsonData="";
                sessionStorage.jsonData=jsonParam;
            }
            else
            {
                sessionStorage.jsonData=jsonParam;
            }
        } else {
            // 抱歉! 不支持 web 存储。
            alert('抱歉! 不支持 web 存储');
        }
    }


</script>
</body>
</html>

