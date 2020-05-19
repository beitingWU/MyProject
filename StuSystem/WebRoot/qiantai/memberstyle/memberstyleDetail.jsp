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
	</head>

	<body>	    
	    <center><img src="images/index/top.jpg" width="966" height="99"/></center>
		<div class="page_row">
			<div class="page_main_msg left">		
		        <div class="left_row">
		            <div class="list pic_news">
		  	                <div class="list_bar">&nbsp;党员详情</div>
						  	<img style="padding-left: 80px" width="200px" height="200px" src="..<%=path %><s:property value='#request.memberstyle.photo'/>"/>							  
                                  <table border="0" cellpadding="6">
                                      <tr><td width="30"></td>
                                      <td style="font-size: 11px;">姓名：</td>
                                      <td style="font-size: 11px;">
                                      <s:property value="#request.memberstyle.mname"/>
                                      </td></tr>
                                      <tr><td width="30"></td>
                                      <td style="font-size: 11px;">志愿活动：</td>
                                      <td style="font-size: 11px;">
                                      <s:property value="#request.memberstyle.content" escape="false"/>
                                      </td></tr>
                                  </table>
                          
		             </div>
		         </div>	
	        </div>

		</div>
	</body>
</html>
