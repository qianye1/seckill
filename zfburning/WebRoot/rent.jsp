<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<HTML>
<HEAD>
<TITLE>成理房缘</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%request.setCharacterEncoding("utf-8");//设置取值的编码格式 %>
<!--导入css-->
<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style/style.css" />

<!--导入js-->
<script type="text/javascript" src="js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
</HEAD>
<body> 
	<div class="header">
    <h1 class="logo1"><img src="images/chenglifangyuan.png"/>&nbsp;欢&nbsp;迎&nbsp;您</h1>
    <div>
    <tr>
    <td colspan="5" >
      <div id="box"><!--幻灯片代码-->
			<div class="btnright">
				<img src="img/right.png" />
			</div>
			<ul id="list">
				<li class="hover"></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
			<div id="imgbox">
				<img class="first" src="images/ban1.jpg" />
				<img src="images/ban2.jpg" />
				<img src="images/ban3.jpg" />
				<img src="images/ban4.jpg" />
				<img src="images/ban5.jpg" />
				<img src="images/ban6.jpg" />
				<img src="images/ban7.jpg" />
				<img src="images/ban8.jpg" />
			</div>
    </td>
  </tr>
  </div>

</body>


<BODY>
   <table width="100%" align="center" cellpadding="0" cellspacing="0">
    <tr>
    <td width="200px" style = "background-color:rgb(100,,)"/>
    <td width="250px" valign="top" style = "background-color:rgb(100,109,40)">
    <!--用户功能表格-->
	<table align="center" class="style06" >
	<tr>
		<td width=''><font color='red'>当前用户：${tblUser.uname}</font>
		</td>
	</tr>
	<tr>
		<td width='150'><a href="tblFwxx!myFwxxInfo.action">管理房源</a></td>
	</tr>
	<tr>
		<td width='100'><a href="post.jsp">房源发布</a></td>
	</tr>
	<tr>
		<td width='100'><a href="rent.jsp">求租</a></td>
	</tr>
	<tr>
		<td width='100'><a href="index.jsp">返回首页</a></td>
	</tr>
	<tr>
		<td width='100'><a href="tblFwxx!leave.action"> <font color='red'>[注销]</font></a></td>
	</tr>
	</table>
</td>
    <td width="495" >

	<form action="tblFwxx!postRent.action" method="post"  name="mf" onsubmit="return validateTitle()">
		<input type="hidden" name="affirm" value="n">
		<!--发布信息的表格-->
		<table  border="5px" >
			<tr>
				<td colspan="2" > <font color='blue'>发布信息：</font></td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
			  <td>标题：</td>
				<td><input type="text" name="qtitle"></td>
			</tr>
			
			
			<tr>
			  <td>求租描述：</td>
				<td><textarea name="qfxx" rows="10" cols="40"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<div align="center"><input type="submit" value="提交" class="btn"></div>				</td>
			</tr>
		</table>
	</form>
	</td>
  </tr>
</table>
<br/>
</BODY>
</HTML>