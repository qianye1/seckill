<!-- aready -->
<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<!--导入css-->
<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style/style.css" />
<!--导入js-->
<script type="text/javascript" src="js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
</HEAD>


<BODY>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  	<div class="header">
    <h1 class="logo1"><img src="images/chenglifangyuan.png"/>&nbsp;欢&nbsp;迎&nbsp;您</h1>
    </div><!--header/-->
    
  <tr>
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
  </tr>
  <tr>
    <td colspan="5"></td>
  </tr>
  <tr>
    <td width="180"></td>
    <td width="172" valign="top">

	<table align="center" border="5px" >
	<tr>
		<td width=''><font color='red'>当前用户：${tblUser.uname }</font>
		</td>
	</tr>
	<tr>
		<td width='150'><a href="my.jsp" >管理我的租房信息</a></td>
	</tr>
	<tr>
		<td width='100'><a href="post.jsp">发布租房信息</a></td>
	</tr>
	<tr>
		<td width='100'><a href="my.jsp">返回首页</a></td>
	</tr>
	<tr>
		<td width='100'><a href="index.jsp"><font color='red'>[注销]</font></a></td>
	</tr>
	</table>
</td>
<td width="49"/>
<!--房屋list-->
<td width="495" class="style09" style="background-color:rgb(127,255,0)">
		<table width="88%" cellspacing="0">
				<tr>
					<TD width='250' style="font-family: STXingkai;font-size: 20px;color:red" >热门</TD>
					<TD width='90' align='center' style="font-family: STXingkai;font-size: 20px;color:red">月租金</TD>
					<TD align='center' style="font-family: STXingkai;font-size: 20px;color:red">发布日期</TD>
				</tr>
				
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">出租东苑二居室</a></td>
					<td align='center' style='height:30px;'>1500元</td>
					<td align='center'>2019-06-20</td>
				</tr>
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">南苑附近招合租</a></td>
					<td align='center' style='height:30px;'>700元</td>
					<td align='center'>2019-06-25</td>
				</tr>
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">求成都理工大学地铁口合租</a></td>
					<td align='center' style='height:30px;'>850元</td>
					<td align='center'>2019-06-26</td>
				</tr>
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">北苑找妹子合租</a></td>
					<td align='center' style='height:30px;'>1000元</td>
					<td align='center'>2019-05-28</td>
				</tr>
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">想找个女朋友</a></td>
					<td align='center' style='height:30px;'>爱情无价</td>
					<td align='center'></td>
				</tr>
				<br>
				<br>
				<tr>
					<td colspan='3'><hr/></td>
				</tr>
			</table>
</td>
<td width="100px"></td>

  </tr>
</table>
<br/>
</BODY>
</HTML>