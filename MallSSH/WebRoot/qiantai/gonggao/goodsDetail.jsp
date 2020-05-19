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
	        function buy1(goodsKucun)
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            <s:else>
	            if(document.buy.quantity.value=="")
	            {
	                alert("请输入购买数量");
	                return false;
	            }
	            if(document.buy.quantity.value>goodsKucun)
	            {
	                alert("库存不足");
	                return false;
	            }
	            
	            document.buy.submit();
	            </s:else>
	        }
	        function add() 
			{
			    alert("hhh");
			    //获得文本框对象
				var t = document.getElementById(text_box);			
				//数量增加操作		
				t.value=(parseInt(t.value()) + 1);
						
				if (parseInt(t.val()) != 1) {
				document.getElementByIdx(min).disabled=false;
				/* 
			function add() 
			{
			    //获得文本框对象
				var t = document.getElementById(text_box);
				//初始化数量为1,并失效减
				document.getElementById("min").disabled=true;	
				//数量减少操作				 
					t.val(parseInt(t.val()) - 1);
					if (parseInt(t.val()) == 1) {
						$('#min').attr('disabled', true);
					}
			
				} */
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
		            
		  	                <div class="list_bar">&nbsp;宝贝详情</div>		  	               
		  	                 <img style="padding-left: 80px" width="200px" height="200px" src="..<%=path %><s:property value='#request.goods.goodsPic'/>"/>		  	               
						  	<form action="<%=path %>/addToCart.action" method="post" name="buy">
                                  <table border="0" cellpadding="6">
                                      <tr><td width="30"></td><td style="font-size: 11px;">品名：</td><td style="font-size: 11px;"><s:property value="#request.goods.goodsName"/></td></tr>
                                      <tr><td width="30"></td><td style="font-size: 11px;">简介：</td><td style="font-size: 11px;"><s:property value="#request.goods.goodsMiaoshu" escape="false"/></td></tr>
                                      <tr><td width="30"></td><td style="font-size: 11px;">价格：</td><td style="font-size: 11px;"><s:property value="#request.goods.goodsTejia"/></td></tr>
                                      <tr><td width="30"></td><td style="font-size: 11px;">库存：</td><td style="font-size: 11px;"><s:property value="#request.goods.goodsKucun"/></td></tr>
                                      <tr><td width="30"></td><td style="font-size: 11px;">购买数量：</td><td style="font-size: 11px;">
                                                                <input id="min" style="width:20px;" type="button" value="-" onclick="min()"/>
                                                                <input id="text_box"  type="text" name="quantity" value="1" size="8" style="width:30px;" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
                                                                <input id="add" style="width:20px;" type="button" value="+" onclick="add()"/></td></tr>
                                      <tr><td width="30"></td><td style="font-size: 11px;"><input type="hidden" name="goodsId" value="<s:property value="#request.goods.goodsId"/>"/><img onclick="buy1(<s:property value="#request.goods.goodsKucun"/>)" src="<%=path %>/images/icon_buy.gif"/></td><td style="font-size: 11px;"></td></tr>
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
