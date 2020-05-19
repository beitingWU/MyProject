<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%@ page isELIgnored="false" %> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="<%=path%>/css/woncore.css" type="text/css"></link>
		<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
	</head>

	<BODY>
<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		<div class="page_row">
			<!--左边的 -->
			<div class="page_main_msg left">		
		        <div class="left_row">
		             <div class="list pic_news">
		  	                <div class="list_bar">&nbsp;留言板</div>

		<TABLE cellSpacing=1 cellPadding=4 width="100%" border=0>
			<s:iterator value="#request.liuyanList" id="liuyan">
			    <TR>
				<TD>
					<TABLE class=tpt width="100%" border=0>
						<TBODY>
							<TR bgColor=#cccccc>
								<TD align=middle width="10%">
									<STRONG>留言人：</STRONG>
								</TD>
								<TD width="47%">
									<FONT color=#000000>&nbsp;<s:property value="#liuyan.liuyanUser"/></FONT>
								</TD>
								<TD align=middle width="14%">
									<STRONG>留言时间：</STRONG>
								</TD>
								
								<TD width="29%">
									<FONT color=#000000>&nbsp;<s:property value="#liuyan.liuyanDate"/></FONT>
								    &nbsp;&nbsp;&nbsp;&nbsp;
								    								       						
    				 <s:if test='#session.user.userName==#liuyan.liuyanUser'> 
						<a style="color: red" href="<%=path %>/myliuyanDel.action?liuyanId=<s:property value="#liuyan.liuyanId"/>">删除</a>
				   	 </s:if>     	         
								</TD>
							</TR>
							<TR>
								<TD align=middle>
									<STRONG>标题：</STRONG>
								</TD>
								<TD colSpan=3>
									<FONT color=#000000>&nbsp;<s:property value="#liuyan.liuyanTitle"/></FONT>
								</TD>
							</TR>
							<TR>
								<TD vAlign=top align=middle>
									<STRONG>内容：</STRONG>
								</TD>
								<TD colSpan=3>
									<s:property value="#liuyan.liuyanContent" escape="false"/>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
			</s:iterator>
		</TABLE>
		<BR>
		<form action="<%=path %>/liuyanAdd.action" method="post">
		<table border="0">
		     <tr>
		         <td style="font-size: 11px;">标题</td>
		         <td><input type="text" name="liuyanTitle" size="50"/></td>
		     </tr>
		     <tr>
		         <td style="font-size: 11px;">内容</td>
		         <td>
		              <FCK:editor instanceName="liuyanContent"  basePath="/fckeditor" width="500" height="200" value="请输入内容" toolbarSet="Basic">
                      </FCK:editor>
                 </td>
		     </tr>
		     <tr>
		         <td style="font-size: 11px;">&nbsp;</td>
		         <td>
		             <input type="submit" name="" value="提交留言">
                 </td>
		     </tr>
		</table>
		</form>
	 </div>
	 </div>	
	        </div>
			<!--左边的 -->
			<!-- 右边的用户登录。留言。投票 -->
			<jsp:include flush="true" page="/qiantai/inc/incRight.jsp"></jsp:include>
			<!-- 右边的用户登录。留言。投票 -->
		</div>
		
		<div class="foot">
		   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	    </div>
	</BODY>
</html>
