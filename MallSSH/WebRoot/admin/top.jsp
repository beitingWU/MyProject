<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css">
    <script language='javascript'>
		var preFrameW = '206,*';
		var FrameHide = 0;
		var curStyle = 1;
		var totalItem = 9;
		function ChangeMenu(way){
			var addwidth = 10;
			var fcol = top.document.all.btFrame.cols;
			if(way==1) addwidth = 10;
			else if(way==-1) addwidth = -10;
			else if(way==0){
				if(FrameHide == 0){
					preFrameW = top.document.all.btFrame.cols;
					top.document.all.btFrame.cols = '0,*';
					FrameHide = 1;
					return;
				}else{
					top.document.all.btFrame.cols = preFrameW;
					FrameHide = 0;
					return;
				}
			}
			fcols = fcol.split(',');
			fcols[0] = parseInt(fcols[0]) + addwidth;
			top.document.all.btFrame.cols = fcols[0]+',*';
		}
		
		function logout()
		{
		   if(confirm("确定要退出本系统吗??"))
		   {
			   window.parent.location="<%=path %>/Users_login.jsp";
		   }
		}
    </script>
  </head>
  
  <body bgColor='#ffffff' style="margin: 0;padding: 0"><!-- topbg.gif  slider_bg.gif-->
	<table width="100%" border="0" cellpadding="0" cellspacing="0" background="<%=path %>/images/header_bg.jpg">
	  <tr>
	    <td height="60" style="font-size:26px; font-weight: bold; color: #191970;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;后台系统</td>
	    <td width='50%' align="right">
	    	<table width="750" border="0" cellspacing="0" cellpadding="0">
		      <tr>
			      <td align="right" height="26" style="line-height:26px;font-size:17px;color: #191970">
			         
			        	<font style="font-size:16px; font-weight: bold;">
			        	欢迎<span style="color:#483D8B;font-size:25px"><s:property value="#session.admin.userName"/></span>使用本系统&nbsp;&nbsp;&nbsp;&nbsp;
			        	</font>
			        	[<a href="#" onClick="logout()" style="color:#191970">注销退出</a>]
						[<a href="javascript:ChangeMenu(0);" style="color:#191970">显示主框架</a>]
			      </td>
	          </tr>
	        </table>
	    </td>
	  </tr>
	</table>
  </body>
</html>
