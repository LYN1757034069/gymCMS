<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE4 {
	font-size: 12px;
	color: #1F4A65;
	font-weight: bold;
}

a:link {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;

}
a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
}
a:active {
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}

-->
</style>
</head>

<body>

<table width="80%" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30">
      <form action="stockSearch.action" id="serchform" method="post">
		  <table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
			  <td width="15" height="30"><img src="images/tab_03.gif" width="15" height="30" /></td>
			  <td background="images/tab_05.gif"><img src="images/311.gif" width="16" height="16" /> 
				<span class="STYLE4">进货记录
					&nbsp;&nbsp;&nbsp;&nbsp;输入编号: <input type="text" name="goods.id" id="serchform" size="3"/>
						<a href="javascript:;" onclick="document.getElementById('serchform').submit();">点击查询</a>
					&nbsp;&nbsp;&nbsp;&nbsp;输入名称: <input type="text" name="goods.name" id="serchform" size="3"/>
						<a href="javascript:;" onclick="document.getElementById('serchform').submit();">点击查询</a>
						<a href="stockExport.action" style="float: right;">导出报表</a></span></td>
			  <td width="14"><img src="images/tab_07.gif" width="14" height="30" /></td>
			</tr>
		  </table>
	  </form>
	</td>
  </tr>
  <tr>
    <td>
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="9" background="images/tab_12.gif">&nbsp;</td>
          <td bgcolor="e5f1d6">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CECECE">
				<tr>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">编号</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">商品</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">数量</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">员工</div></td>
					<td width="20%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">日期</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">备注</div></td>
					<!-- <td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2">编辑</div></td> -->
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2">删除</div></td>
				</tr>
				
				<!-- 用struts的iterator标签遍历news集合, 并去处每一个name显示 -->
				<s:iterator value="stockList">
	
					<tr>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="id"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="goods.name"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="amount"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="user.username"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:date name="createdate"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="remark"/></div></td>
						<%-- 		
						<td height="20" bgcolor="#FFFFFF"><div align="center">
							<img src="images/037.gif" width="9" height="9" />
							<span class="STYLE1"> [</span><a href="stockUpdatePage.action?stock.id=<s:property value="id"/>&page=${page}">修改</a><span class="STYLE1">]</span></div></td>
						 --%>
						<td height="20" bgcolor="#FFFFFF"><div align="center">
							<img src="images/010.gif" width="9" height="9" />
							<span class="STYLE1">[</span><a href="stockDelete.action?stock.id=<s:property value="id"/>&page=${page}">删除</a><span class="STYLE1">]</span></div></td>
					</tr>
					
				</s:iterator>
				
			</table>
		  </td>
		  <td width="9" background="images/tab_16.gif">&nbsp;</td>
		</tr>
	  </table>
	</td>
  </tr>
  <tr>
    <td height="29">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td width="15" height="29"><img src="images/tab_20.gif" width="15" height="29" /></td>
			<td background="images/tab_21.gif">
				<a href="stockAddPage.action">商品入库</a>${pageTool}
			</td>
			<td width="14"><img src="images/tab_22.gif" width="14" height="29" /></td>
		  </tr>
		</table>
	</td>
  </tr>
</table>

</body>
</html>
