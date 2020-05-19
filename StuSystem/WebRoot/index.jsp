<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="style/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style/utilstyle.css">
	<link rel="stylesheet" type="text/css" href="style/style.css">
	<script src="style/jquery-1.11.1.js"></script>
	<script src="style/bootstrap.min.js"></script>
	
	
  </head>
  
  <body>
    <header>
	<div class="header_main">
		<div class="header_main_left">2018年05月20日 星期日</div>
		<div class="header_main_right">欢迎访问党建信息系统　
			<a href="#">登录</a>
		</div>
	</div>
</header>
<div class="content">
	<div class="top">
		<div class="top_img"><img src="images/dj/bgg.png" style="width:1000px;"></div>
		<div class="nav">
			<ul>
				<li><a href="#">首页</a></li>
				<li><a href="#">党建动态</a></li>
				<li><a href="#">党建专题</a></li>
				<li><a href="#">基层活动</a></li>
				<li><a href="#">经验交流</a></li>
				<li><a href="#">先进典型</a></li>
				<li><a href="#">表彰通报</a></li>
				<li><a href="#">先锋文苑</a></li>
			</ul>
		</div>
	</div><!-- topEND -->
	<div class="content_main">
		<!-- 图片新闻轮Carousel_img播 -->
		<div class="carousel_img">
			<div id="myCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>   
				<!-- 轮播（Carousel）项目 -->
			    <div class="carousel-inner">
			        <div class="item active">
			            <img src="images/dj/carousel-1.jpg" alt="First slide" style="height:273px;">
			            <div class="carousel-caption">”学习新思想，践行新时代”主题培训</div>
			        </div>
			        <div class="item">
			            <img src="images/dj/carousel-2.jpg" alt="Second slide" style="height:273px;">
			            <div class="carousel-caption">天津市学生联合会第十四次代表大会</div>
			        </div>
			        <div class="item">
			            <img src="images/dj/carousel-3.jpg" alt="Third slide" style="height:273px;">
			            <div class="carousel-caption">弘扬五四文化</div>
			        </div>
			    </div>
				<!-- 轮播（Carousel）导航 -->
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div> 
		</div>
		<!-- 党建动态 -->
		<div class="d_trends">
			<div class="d_top">
				<span class="d_top_left">党建动态</span>
				<span class="d_top_right"><a href="#">更多</a></span>
			</div>
			<div class="d_main">
				<ul>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
				</ul>
			</div>
		</div>
		<!-- 通知公告 -->
		<div class="d_notice">
			<div class="d_top">
				<span class="d_top_left">通知公告</span>
				<span class="d_top_right"><a href="<%=path %>/noticeFenye.action">更多</a></span>
			</div>
			<s:iterator value="#request.noticeList" id="notice">
			<div class="d_main">
				<ul>
					<li>- <a href="<%=path %>/noticeDetail.action?nid=<s:property value="#notice.nid"/>"><s:property value="#notice.title"/></a></li>									
				</ul>
			</div>
			</s:iterator>
		</div>
	</div>
	<!-- 中间图片 -->
	<div class="zt">
		<div class="zt_left">
			<a href="#"><img src="images/dj/bg-2.jpg"></a>
		</div>
		<div class="zt_right">
			<a href="#"><img src="images/dj/bg-1.jpg" style="width:870px;height:113px;"></a>
		</div>
	</div>
	<!-- 六大部分 -->
	<div class="part part_left">
		<div class="p_top">
				<span class="p_top_left">基层活动</span>
				<span class="p_top_right"><a href="#">更多</a></span>
			</div>
			<div class="p_main">
				<ul>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
				</ul>
			</div>
		</div>
		<div class="part">
		<div class="p_top">
				<span class="p_top_left">经验交流</span>
				<span class="p_top_right"><a href="#">更多</a></span>
			</div>
			<div class="p_main">
				<ul>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
				</ul>
			</div>
		</div>
		<div class="part">
		<div class="p_top">
				<span class="p_top_left">先进典型</span>
				<span class="p_top_right"><a href="#">更多</a></span>
			</div>
			<div class="p_main">
				<ul>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
				</ul>
			</div>
		</div>
		<div class="part part_left">
		<div class="p_top">
				<span class="p_top_left">表彰通报</span>
				<span class="p_top_right"><a href="#">更多</a></span>
			</div>
			<div class="p_main">
				<ul>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
				</ul>
			</div>
		</div>
		<div class="part ">
		<div class="p_top">
				<span class="p_top_left">先锋文苑</span>
				<span class="p_top_right"><a href="#">更多</a></span>
			</div>
			<s:iterator value="#request.memberList" id="member">
			<div class="p_main">
				<ul>					
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<a href="<%=path %>/memberstyleShow.action?mid=<s:property value="#member.mid"/>">
					<img width="100px" height="100px" src="..<%=path %><s:property value='#member.photo'/>"/>
					</a></li>
			   <!-- <li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li>
					<li><a href="#">- 我校进行“弘扬五四文化”主题活动</a></li> -->
				</ul>
			</div>
			</s:iterator>
		</div>
		<div class="part">
			<div class="">
				<ul>
					<li><img src="images/dj/logo-1.jpg" style="width:318px;height:74.5px;"></li>
					<li><img src="images/dj/logo-2.png" style="width:318px;height:74.5px;"></li>
					<li><img src="images/dj/logo-3.png" style="width:318px;height:74.5px;"></li>
					<li><img src="images/dj/logo-4.png" style="width:318px;height:74.5px;"></li>
				</ul>
			</div>
		</div>
	<!-- 友情链接 -->	
	<div class="yq_link">
		<div class="link">
			<span>友情链接</span>
			<a href="http://www.12371.cn/" target="_blank">共产党员网</a>
			<a href="http://www.ccdi.gov.cn/" target="_blank">中纪委官网</a>
			<a href="http://www.ccln.gov.cn/" target="_blank">中国干部学习网</a>
			<a href="http://www.wenming.cn/" target="_blank">中国文明网</a>
			<a href="http://www.dygbjy.gov.cn:8008/" target="_blank">全国党员干部现代远程教育网</a>
			<a href="http://www.dtdjzx.gov.cn/" target="_blank">灯塔—党建在线</a>
			<a href="http://www.dtts.gov.cn/" target="_blank">泰山先锋</a>
			<a href="http://www.tj.gov.cn/" target="_blank">天津政务网</a>
		</div>
	</div>	
	<!-- footer -->
	<div class="footer">
		<p>CopyRight@ZXL20180523</p>
	</div>
</div><!--content-END  -->



<script type="text/javascript">
		$('.carousel').carousel({
			interval:1000,
		    wrap:true
		})	
</script>

</body>
</html>
