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
            function back1()
	        {
	           window.history.go(-1);
	        }
        </script>
	</head>

	<body>
		<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		<div class="page_row">
			<!--左边的 -->
			<div class="page_main_msg left">		
		        <div class="left_row">
		            <div class="list pic_news">
		  	                <div class="list_bar">&nbsp;订单确认</div>
						  	<form action="<%=path %>/orderSubmit.action" name="f" method="post">		                     		        				
		        				<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" style="margin-top:8px">
					              <tr>
						            <td><h3>确认收货地址
										<span class="manage-address">
										<a href="<%=path %>/addAddress.action">新增收货地址</a>										
										</span>
										</h3>
									 </td>
					              </tr>
					              <tr bgcolor="#FFFFFF" height="22">            
					                <%-- <td><input name="address"type="radio" checked="checked" >
					                    <s:property value="#session.user.userRealname"/>&nbsp;&nbsp;&nbsp;					                					           
					                    <s:property value="#session.user.userTel"/>&nbsp;&nbsp;&nbsp;
					                    <s:property value="#session.user.userAddress"/></td> --%>
					                  <td>					                  					                 
					                   <!--  <input type="text" name="odderSonghuodizhi"/>	 -->	
					                   <input name="odderSonghuodizhi" type="radio" checked="checked" value="天津市 西青区 天津工业大学新校区 软件园6号楼（张三收） 18427717260"/>
					                   <span>天津市 西青区 天津工业大学新校区 软件园6号楼（张三收） 18427717260</span>		                 					                   
					                  </td>				                 
					              </tr>
					              <tr bgcolor="#FFFFFF" height="22">            					              
					                  <td>					                  					                 					                 	
					                   <input name="odderSonghuodizhi" type="radio" value="广东省 茂名市 油城八路金墩大厦15号  2904房 （吴倍婷收） 13502059856"/>
					                   <span>广东省 茂名市 油城八路金墩大厦15号  2904房 （吴倍婷收） 13502059856</span>		                 					                   
					                  </td>					                  				                 
					              </tr>
					              <tr bgcolor="#FFFFFF" height="22">            					              
					                  <td>					                  					                 					                 	
					                   <input name="odderSonghuodizhi" type="radio" value="山东省 济南市 山东财经大学 （李南收） 18929730658"/>
					                   <span>山东省 济南市 山东财经大学 （李南收） 18929730658</span>		                 					                   
					                  </td>					                  				                 
					              </tr>
					              <s:if test='#request.newAddress!=null'>
					              <tr bgcolor="#FFFFFF" height="22">            					              
					                  <td>		
					                  <input name="odderSonghuodizhi"type="radio" value="<s:property value='#request.newAddress'/>"/>			                  					                 					                 	
					                  <s:property value="#request.newAddress"/>
					                  </td>					                  				                 
					              </tr>
					              </s:if>			              
					              <tr bgcolor="#FFFFFF" height="22">
					                  <td>运送方式：
		   		                          <select name="odderFukuangfangshi" style="width:155px;">		   		                               
		   		                               <option value="快递">快递</option>
		   		                               <option value="EMS">EMS</option>
		   		                               <option value="平邮 ">平邮</option>
		   		                               <option value="货到付款">货到付款</option>
		   		                               <option value="他人代付 ">他人代付 </option>   		                             
		   		                          </select>
		                              </td>
					              </tr>
		        				</table>
		        				<table>
		        				   <tr height="7"><td></td></tr>
				                   <tr>
				                       <td width="120"></td>
				                       <td><a href="#" onclick="back1()"><img border="0" src="<%=path %>/images/Car_icon_back.gif"/></a></td>
				                       <td><img border="0" src="<%=path %>/images/Car_icon_06.gif" onclick="javascript:document.f.submit();"/></td>
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
	</body>
</html>
