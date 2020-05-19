<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		
		<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script type="text/javascript">
	    </script>
	</head>

	<body>
	<center><img src="images/dj/toplogo.PNG" width="1001" height="191"/></center>
		<div class="page_row">
			<div class="page_main_msg left">&nbsp;&nbsp;&nbsp;
		        <div class="left_row">
		            <div class="list pic_news">
						  	<div class="ctitle ctitle1"><s:property value="#request.notice.title"/></div>
							<div class="ctitleinfo">发布日期：<s:property value="#request.notice.createTime"/>&nbsp;&nbsp;&nbsp;</div>
							<div class="pbox"><s:property value="#request.notice.content" escape="false"/></div>							
		             </div>
		         </div>	
	        </div>
			
		</div>		
	</body>
</html>
