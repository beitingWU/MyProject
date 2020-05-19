<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
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
	<link href="<%=path %>/css/Common.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../../css/nd.css" type="text/css"></link>
    <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>
    
  </head>

  <body>
        <table align="center">
          <tr><td>
             <center><h2><s:property value="#request.notice.title" escape="false"/></h2></center>
             </td>          
          </tr>
          <tr>     
             <td>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="#request.notice.content" escape="false"/>
             </td>
          </tr>
      </table>
  </body>
</html>
