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
		
        <script language="javascript">
           function noticeAdd()
           {
              var url="<%=path %>/admin/notice/noticeAdd.jsp";
              window.location.href=url;
           }    
            function noticeDel(nid)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/noticeDel.action?nid="+nid;
               }
           }                  
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" background="<%=path %>/images/index/gg.gif">&nbsp;公告&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="25%">标题</td>
					<td width="25%">发布时间</td>
					<td width="25%">内容</td>
					<td width="25%">操作</td>
		        </tr>	
				<s:iterator value="#request.pagegonggao.data" id="notice" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						 <s:property value="#notice.title"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#notice.createTime"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">				   
					 <a href="<%=path %>/noticeDetail.action?nid=<s:property value="#notice.nid"/>" class="pn-loperator">查看内容</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">											
						<a href="#" onclick="noticeDel(<s:property value="#notice.nid"/>)" class="pn-loperator"><span style="line-height:2;font-size:15px;font-family:SimSun;">删除</span></a>		     	
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td><input type="button" value="添加公告" style="width: 80px;" onclick="noticeAdd()" /></td>
			    <td class="page" width="80%"><s:set name="page" value="#request.pagegonggao" /> ${page.getPageDisplay()}</td>
			  </tr>
		    </table>
	</body>
</html>
