<!-- 完成 -->
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("utf-8");//设置取值的编码格式 %>
<HTML>
<HEAD>
<TITLE>成理房缘</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

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
  <tr>
    <td colspan="5">
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
  
  
<table border="5" style="width:100%;background-color:rgb(255,192,203)">
  <tr>
    <td width="172" valign="top" align="center">

	<table align="center">
	<tr>
		<td width=''><font color='red'>当前用户：${tblUser.uname}</font>
		</td>
	</tr>
	<tr>
		<td width='150'><a href="my.jsp" style="color:rgb(0,0,0);font-family: STXingkai;font-size: 15px">管理房源</a></td>
	</tr>
	<tr>
		<td width='100'><a href="post.jsp" style="color:rgb(0,0,0);font-family: STXingkai;font-size: 15px">房源发布</a></td>
	</tr>
		<tr>
		<td width='150'><a href="rent.jsp" style="color:rgb(0,0,0);font-family: STXingkai;font-size: 15px">求租</a></td>
	</tr>
	<tr>
		<td width='100'><a href="index.jsp" style="font-family: STXingkai;font-size: 15px"><font color='red'>注销</font></a></td>
	</tr>
	</table>
</td>
   
    <td width="495" align="center"><br/>
	<form action="login.htm" method="post" name="mf">
	<input type="hidden" name="page" value="1"/>
	
	
	
<!--高级搜索选项弹出-->
<script>
function fswitch(id){
	var o = document.getElementById(id);
	if (o){
		if (o.style.display == "none"){ o.style.display = "block"; } else {o.style.display = "none";}
	}
}
</script>

<div style="text-align:left;width:88%;">
		<input>
	    <input type="submit" value="查询" class="btn"> <span onclick="fswitch('advSearch');" style="cursor:hand;color:blue;">高级搜索</span>
</div>

		<table width="88%;" id="advSearch" style="border:solid 0px #000;display:none;">
             <tr>
				<td class="style07">区域：</td>
				<td><select name="qxid" onChange="selectjd()" style="width:80">
				<!--区域选择-->
					<option value='0'>不限--</option>
                    <option value='1'>南苑</option>
                    <option value='2'>北苑</option>
                    <option value='3'>东苑</option>
                    <option value='4'>铁建广场</option>
                    <option value='5'>罗兰小镇</option>
                    <option value='6'>华西花园</option>

				</select></td>
				<td rowspan="6">&nbsp;</td>
			</tr>
			<tr>
				<td class="style07">栋数：</td>
				<td><select name="jdid" style="width:80">
					<option value="0">不限--</option>
				</select></td>
			</tr>
			<tr>
				<td class="style07">租金：</td>
				<td><input type="text" name="zj" size="5" class="unnamed1" > 至 <input type="text" name="zj1" size="5" class="unnamed1" > 元/月</td>
			</tr>
			<tr>
				<td class="style07">户型：</td>
				<td><select name="shi" style="width:60">
					<option value="0">不限--</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
				</select>室 <select name="ting" style="width:60">
					<option value="0">不限--</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select> 厅</td>
			</tr>
			<tr>
				
			</tr>
			<tr>
				<td class="style07">发布日期：</td>
				<td><select name="date" style="width:80">
					<option value="0">不限--</option>
					<option value="1">当天</option>
					<option value="2">近两天</option>
					<option value="3">近三天</option>
					<option value="7">近一周</option>
					<option value="14">近两周</option>
					<option value="30">近一月</option>
				</select></td>
			</tr>
<tr>
					<td colspan='3'><hr/></td>
				</tr>

</table>
<table width="88%" cellspacing="0">
				<tr  >
					<TD width='250' class="table_title">标题</TD>
					<TD width='90' align='center' class="table_title">月租金</TD>
					<TD align='center' class="table_title">发布日期</TD>
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
			</table>
	</form>
	</td>

  </tr>
 </table>
 </table>
<P align="center">buring小组</P>
<br/>
</BODY>
</HTML>
