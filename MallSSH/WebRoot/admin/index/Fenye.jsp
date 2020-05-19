<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />


<link rel="stylesheet" type="text/css" href="<%=path%>/css/base.css" />


<script language="javascript">
           function adminDel(userId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path%>/adminDel.action?userId="+userId;
               }
           }
           function adminAdd()
           {
          var url="<%=path%>/admin/index/adminAdd.jsp";
              window.location.href=url;
           }
       </script>
</head>


<body leftmargin="2" topmargin="2" background='<%=path%>/img/allbg.gif'>
<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top: 8px">
	<tr bgcolor="#E7E7E7">
	    <td height="14" colspan="4" background="<%=path%>/images/slider_bg.gif">&nbsp;管理员维护&nbsp;</td>
	</tr>
	<tr align="center" bgcolor="#FAFAF1" height="22">
		<td width="20%">ID</td>
		<td width="30%">用户名</td>
		<td width="30%">密码</td>
		<td width="20%">操作</td>
	</tr>
<s:if test="#request.page.data==null || #request.page.data.size() == 0">
	<tr>
	    <td colspan="4"><font size="15" color="red">没有数据</font></td>
	</tr>
</s:if>
<s:else>
	<s:iterator value="#request.page.data" status="ss" id="user">
		<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
			<td bgcolor="#FFFFFF" align="center"><s:property value="#ss.index+1" /></td>
			<td bgcolor="#FFFFFF" align="center"><s:property value="#user.userName" /></td>
			<td bgcolor="#FFFFFF" align="center"><s:property value="#user.userPw" /></td>
			<td bgcolor="#FFFFFF" align="center"><a href="#" onclick="adminDel(<s:property value="#user.userId"/>)" class="pn-loperator">删除</a></td>
		</tr>
	</s:iterator>
</s:else>
</table>
	<table width='98%' border='0' style="margin-top: 8px; margin-left: 5px;">
		<tr align='center'>
			<td align='left'><input type="button" value="添加管理员" style="width: 80px;" onclick="adminAdd()"/></td>
			<td class="page" width="80%"><s:set name="page" value="#request.page" /> ${page.getPageDisplay()}</td>
		</tr>
	</table>
</body>
</html> 