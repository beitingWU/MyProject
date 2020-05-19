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
					<span class="sr-only"></span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only"></span>
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
					<li>
			            <a href="/news/newsdeailed/d08223d2-1c00-4ac1-af44-d6f2540d0cca?Discuss=True" target="_blank">北部城区暨新旧动能转换先行区管委会...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/c6d2fce1-adf8-4e57-9f2f-52f738a55694?Discuss=True" target="_blank">全市扶贫开发领导小组2018年第二次会...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/90196bfb-74a7-4b9b-92fb-738925ba26dc?Discuss=True" target="_blank">常绪扩走访慰问福利企业和贫困残疾人</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/7debc659-d303-4da6-851c-a1f9ae956280?Discuss=True" target="_blank">市委召开常委（扩大）会议</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/320e97a0-04f1-43c9-89d9-cb3a4bb5fb0e?Discuss=True" target="_blank">泰安市养生保健康复学会来我市开展“...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/e8071dbc-29e0-4c86-8429-2b11611dad53?Discuss=True" target="_blank">殷锡瑞到市房管局调研指导棚户区改造...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/ff67fe0a-0b04-489d-8fd7-ee97af85e081?Discuss=True" target="_blank">常绪扩调研指导林业生产工作</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/ea518478-bd1b-420b-8f4b-4454eb106d15?Discuss=True" target="_blank">崔洪刚来我市调研时强调 加快推动乡...</a>
			        </li>
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
					<li>- <a href="<%=path %>/noticeDetailQian.action?nid=<s:property value="#notice.nid"/>"><s:property value="#notice.title"/></a></li>									
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
					<li>
			            <a href="/news/newsdeailed/2d4e90a8-8a74-4122-aab3-4913aae6fd4b?Discuss=True" target="_blank">市食药监局：狠抓作风建设  重塑食药监管新形...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/5cbad2db-9e8f-4d04-b2ba-2e2fedc76ae3?Discuss=True" target="_blank">老城街道：打好棚改硬仗 圆百姓安居梦</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/5c1bcffa-33e0-49c6-a5cd-55b62fc35394?Discuss=True" target="_blank">石横国税分局：五项措施狠抓新时代基层党建工...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/a34f092d-7213-432e-b3b7-41d53c55922b?Discuss=True" target="_blank">市建管局：组织党员干部参观孟良崮纪念馆</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/de130904-e103-417d-b6e5-ac7833528eda?Discuss=True" target="_blank">高新区：全面发力稳步推进创城工作</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/4c10326f-e827-4a8f-a480-df74637101b3?Discuss=True" target="_blank">市建管局：做文明使者 我为创城做贡献</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/c850d4f1-a6f3-4441-a627-a426304d340b?Discuss=True" target="_blank">新城街道：开展“文明创城  你我同行”主题党...</a>
			        </li>
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
					<li>
			            <a href="/news/newsdeailed/618bc0f5-d080-4117-838b-e3da40b19a8d?Discuss=True" target="_blank">孙伯镇：“三个三”扎实推进棚户区改造</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/4b0b26d7-2e72-43f0-a26e-2e976f62ef06?Discuss=True" target="_blank">老城街道：乡村振兴走新路 联合党委谱新篇</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/763c7dc6-3e52-465f-9417-64f139ed31b0?Discuss=True" target="_blank">【支书论坛】肥城边院李士凯：返乡创业展作为...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/863e994e-cd58-4ca2-be24-9adfe4f0e781?Discuss=True" target="_blank">【支书论坛】肥城王庄杨强：党建引领聚力 共...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/9ef140f9-9fb9-4b7e-9b8f-f2a1002b0fa8?Discuss=True" target="_blank">肥城市委市直机关工委：建设过硬支部 筑牢党...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/7474b6be-09df-4559-980a-52763244ca33?Discuss=True" target="_blank">市公安局：突出重点  聚焦主责  全面提升党建...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/b4d8251c-e7a4-45d4-83a7-fb80fcf0fbde?Discuss=True" target="_blank">市煤炭局：严格党的组织生活  激发干事创业激...</a>
			        </li>
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
					<li>
			            <a href="/news/newsdeailed/e10b6a07-9ed4-4849-b49e-04c53f7ccfab?Discuss=True" target="_blank">不忘初心 以身许党——追记北京卫戍区...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/82e5b108-1133-4ca5-8b8e-46acb134a373?Discuss=True" target="_blank">今天，一起缅怀这八位“全国优秀组工干...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/ba34ba79-bb38-4a51-a58a-bd06c13481e2?Discuss=True" target="_blank">肥城东赵：树牢支部为民心 做实致富小...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/3ea163a0-8072-4db0-96fa-a8aadd24630e?Discuss=True" target="_blank">仪阳街道鱼山村：栽好梧桐树，引来凤凰...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/d262a3ae-1112-4263-ab5a-1bbb15268118?Discuss=True" target="_blank">肥城牛庄：龙头带动促转型 破茧成蝶绽...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/fc1dad54-bcf6-48b5-a2b6-1737a4d87cc4?Discuss=True" target="_blank">肥城柳沟：享绿色生态之美 走富民强村...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/3b6c6e96-0a3b-44ec-84c9-2590291af898?Discuss=True" target="_blank">肥城北台：走好“五彩”增收路 绘就山...</a>
			        </li>
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
					<li>
			            <a href="/news/newsdeailed/4dc289c6-a2c4-4ef1-b092-12fe1eaf9f99?Discuss=True" target="_blank">2018年4月份肥城智慧党务平台用稿情况通报</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/c9fbf225-335e-4b0b-bc24-c89ff18260d9?Discuss=True" target="_blank">市管党（工）委智慧党务学用及格率情况通报</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/6604a9e6-9698-431f-b536-548acad8bdbf?Discuss=True" target="_blank">中共肥城市委关于命名表彰肥城市先进基层党组...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/ec4a0c36-f1cb-41da-b10d-2c8b3f7fbffe?Discuss=True" target="_blank">2016年度智慧党务先进个人、先进单位表彰通报</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/51f944d5-630d-4550-995c-a0e84eeefa10?Discuss=True" target="_blank">2016年度“体彩杯&#183;‘两学一做’学习教育奖答...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/5fc3579e-cd9f-4dee-b21e-1b61a9df2267?Discuss=True" target="_blank">肥城市“两学一做”学习教育党章部分测试情况...</a>
			        </li>
			        <li>
			            <a href="/news/newsdeailed/b49ca97a-9997-48e0-98e4-5ee10facc270?Discuss=True" target="_blank">市政务办党委荣获“山东省先进基层党组织”荣...</a>
			        </li>
				</ul>
			</div>
		</div>
		<div class="part ">
		<div class="p_top">
				<span class="p_top_left">先锋文苑</span>
				<span class="p_top_right"><a href="<%=path %>/memberstyleShow.action">更多</a></span>
			</div>
			<s:iterator value="#request.memberList" id="member">
			<div class="p_main">
				<ul>	
				<br>				
					<li> 
                       <a href="<%=path %>/memberstyleDetail.action?mid=<s:property value="#member.mid"/>">
                       <img width="100px" height="100px" src="..<%=path %><s:property value='#member.photo'/>"/>
					        优秀党员：<s:property value="#member.mname"/>	
					   </a>
					</li>
				<br>
											   
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
