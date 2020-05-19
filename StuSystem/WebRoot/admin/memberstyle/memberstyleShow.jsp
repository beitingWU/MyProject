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

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script language="javascript">                 
           function memberstyleDel(mid)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/memberstyleDel.action?mid="+mid;
               }
           }
           function memberstyleUpdate(mid)
           {              
                   window.location.href="<%=path %>/memberstyleOne.action?mid="+mid;             
           }     
           
           function memberstyleAdd()
           {
                 var url="<%=path %>/admin/memberstyle/memberstyleAdd.jsp";               
				 window.location.href=url;
           }  	
       </script>          
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="9" background="<%=path %>/images/index/gg.gif">&nbsp;党员风采&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">照片展示</td>
					<td width="10%">名称</td>
					<td width="20%">风采介绍</td>									
					<td width="10%">上传时间</td>						
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.pagememberstyle.data" id="member">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">		  
					  <img width="100px" height="100px" src="..<%=path %><s:property value='#member.photo'/>"/>				
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#member.mname"/>
					</td>					
					<td bgcolor="#FFFFFF" align="center">
					     <s:property value="#member.content"/>
					</td>										
					<td bgcolor="#FFFFFF" align="center">
					     <s:property value="#member.loadTime"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="memberstyleUpdate(<s:property value="#member.mid"/>)" class="pn-loperator">修改</a>
						<a href="#" onclick="memberstyleDel(<s:property value="#member.mid"/>)" class="pn-loperator">删除</a>
					</td>				
						

				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td><input type="button" value="添加" style="width: 80px;" onclick="memberstyleAdd()"/></td>
			    <td class="page" width="80%"><s:set name="page" value="#request.pagememberstyle" /> ${page.getPageDisplay()}</td>
			  </tr>
		    </table>		   
	</body>
</html>
