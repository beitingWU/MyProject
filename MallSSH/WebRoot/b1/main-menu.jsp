<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--左边菜单-->
<nav class="navbar-default navbar-side" role="navigation" style="background-color: #ff0712;color: #ffffff">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">

            <li>
                <a class="active-menu waves-effect waves-red" href="index.html"><i class="fa fa-dashboard"></i>
                    Dashboard</a>
            </li>

            <li>
                <a href="#" class="waves-effect waves-red">
                    <i class="fa fa-sitemap"></i> 支部管理<span class="fa arrow"></span>
                </a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="/branches/look_branches.jsp">查看支部</a>
                    </li>
                    <li>
                        <a href="/branches/insert_branches.jsp">增加支部信息</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" class="waves-effect waves-red">
                    <i class="fa fa-user fa-fw"></i> 支部党员信息管理<span class="fa arrow"></span>
                </a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="/members/look_party_members.jsp">查看支部党员</a>
                    </li>
                    <li>
                        <a href="/members/insert_party_members.jsp">增加支部党员信息</a>
                    </li>
                </ul>
            </li>
        </ul>

    </div>

</nav>
