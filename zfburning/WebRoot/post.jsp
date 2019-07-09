<!-- aready -->
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<HTML>
<script language="javascript">
var v = new Array();
var n = new Array(7);
v[0] = new Array('0');
n[0] = new Array('不限--');
v[1] = new Array('1','2','3','4','5','6','7','8');
n[1] = new Array('南苑一栋','南苑二栋','南苑三栋','南苑四栋','南苑五栋','南苑六栋','南苑七栋','南苑八栋');
v[2] = new Array('10','11','12','13','14','15','16','17','18');
n[2] = new Array('北苑一栋','北苑二栋','北苑三栋','北苑四栋','北苑五栋','北苑六栋','北苑七栋','北苑八栋','北苑九栋');
v[3] = new Array('19','20','21','22','23','24','25');
n[3] = new Array('东苑一栋','东苑二栋','东苑三栋','东苑四栋','东苑五栋','东苑六栋','东苑七栋');
v[4] = new Array('26','27','28','29','30');
n[4] = new Array('铁建广场一栋','铁建广场二栋','铁建广场三栋','铁建广场四栋','铁建广场五栋');
v[5] = new Array('31','32','33','34','35');
n[5] = new Array('罗兰小镇一栋','罗兰小镇二栋','罗兰小镇三栋','罗兰小镇四栋','罗兰小镇五栋');
v[6] = new Array('36','37','38','39','40','41');
n[6] = new Array('华西花园一栋','华西花园二栋','华西花园三栋','华西花园四栋','华西花园五栋','华西花园六栋');
	function selectjd(){
		var row = document.mf.qxid.value;
		var col = v[row].length;
		document.mf.jdid.length = 0;
		document.mf.jdid.options[0] = new Option('不限--','0');
		for(var i=0;i<col;i++) {
			if(v[row][i]!=0){
				document.mf.jdid.options[i+1] = new Option(n[row][i],v[row][i]);
			}
		}
	}
	
	function validateTitle(){
		if(document.mf.title.value ==""){
			alert("标题不能为空");
			return false;
		}
		if(isNaN(document.mf.zj.value)){
			alert("租金不是数字");
			return false;
		}
		if(document.mf.lcid.value ==""){
			alert("楼层不能为空");
			return false;
		}
		if(document.mf.telephone.value ==""){
			alert("联系电话不能为空");
			return false;
		}
		if(document.mf.lxr.value ==""){
			alert("联系人不能为空");
			return false;
		}
		return true;
	}
</script>
<head>
    <TITLE>发布房源</TITLE>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="style/fabu.css" rel="stylesheet" type="text/css" /> 
    <link rel="stylesheet" href="style/style.css" />
	<!--导入js-->
<script type="text/javascript" src="js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
</head>
<BODY  LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
     <div class="header">
          <h1 class="logo1"><img src="images/chenglifangyuan.png"/>&nbsp;欢&nbsp;迎&nbsp;您</h1>
     </div><!--width1190/-->
     
    <div>
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
  </div>
     
        
   <tr> 
      <td width="30%" valign="top">
	  <table id="guanli" width="100%" border="0" align="center" cellspacing="0">
			<tr>
				<td id="fabu-title2" colspan="2" align="center">管&nbsp;理&nbsp;版&nbsp;块</td>
			</tr>
	<tr>
		<td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>当前用户：${tblUser.uname}</font></td>
	</tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="tblFwxx!myFwxxInfo.action">管理房源</a></td>
	</tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="post2.jsp">房源发布</a></td>
	</tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">返回首页</a></td>
	</tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="rent.jsp">求租</a></td>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="tblFwxx!leave.action"><font color='red'>[注销]</font></a></td>
	</tr>
	</table>
</td>
    <td width="70%">
	<form action="post_confirm.jsp" method="post"  name="mf" onsubmit="return validateTitle()">
		<!-- 
		<input type="hidden" name="affirm" value="n">
		-->
		<table id="fabu" width="100%" border="0" align="center" cellpadding="3" cellspacing="0">
			<tr>
				<td id="fabu-title" colspan="2" align="center">发&nbsp;布&nbsp;房&nbsp;源</td>
			</tr>
			<tr>
				<td id="fabu-titles" colspan="2" align="center" >成理人自己的租赁房屋网站</td>
			</tr>
			<tr>
			  <td align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标题：</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
			  <td align="right">区域：</td>
				<td><select name="qxid" onchange="selectjd()"> 
					<option value='0'>不限--</option>
					<option value='1'>理工南苑</option>
					<option value='2'>理工北苑</option>
					<option value='3'>理工东苑</option>
					<option value='4'>铁建广场</option>
					<option value='5'>罗兰小镇</option>
					<option value='6'>华西花园</option> 
				</select></td>
			</tr>
			<tr>
			  <td align="right">栋数：</td>
			  <td>
			  <select id="jdid" name="jdid"> 
					<option value="0">不限--</option>																			 
				</select>&nbsp;栋
				</td>
			</tr>
			<tr>
			  <td align="right">楼层：</td>
				<td>
				<input type="text" name="lcid">&nbsp;楼
				</td>
			</tr>
			<tr>
			  <td align="right">面积：</td>
				<td>
				<input type="text" name="mj">&nbsp;平方米
				</td>
			</tr>
			<tr>
			  <td align="right">租金：</td>
				<td><input type="text" name="zj">&nbsp;元/月</td>
			</tr>
			<tr>
			  <td align="right">户型：</td>
				<td><select name="shi"> 
					<option value="1">1</option> 
					<option value="2">2</option> 
					<option value="3">3</option> 
					<option value="4">4</option> 
					<option value="5">5</option>  
				</select>&nbsp;室
				<select name="ting"> 
					<option value="1">1</option> 
					<option value="2">2</option> 
				</select>&nbsp;厅</td>
			</tr>
			<tr>
			  <td align="right">出租类型：</td>
				<td><select name="lxid"> 
					<option value="1">单间</option> 
					<option value="0">整套</option> 
				</select></td>
			</tr>
			<tr>
			  <td align="right">联系电话：</td>
				<td><input type="text" name="telephone"></td>
			</tr>
			<tr>
			  <td align="right">联系人：</td>
				<td><input type="text" name="lxr"></td>
			</tr>
			<tr>
			  <td align="right">配套设施：</td>
				<td><textarea name="fwxx" rows="10" cols="40"></textarea></td>
			</tr>
			<tr>
			  <td align="right">旧物信息：</td>
				<td><textarea name="jwxx" rows="5" cols="40"></textarea></td>
			</tr>
			<tr>
			<td colspan="2" cellpadding="3" cellspacing="5">
				<div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;
                 <input id="tijiao" type="submit" value="发布房源"></div></td>
			</tr>
		</table>
	</form>
	</td>
  </tr>
</table>
<P align="center" size="10px">burning小组</P>
<br/>
</BODY>
</HTML>