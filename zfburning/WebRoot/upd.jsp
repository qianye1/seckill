<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<HTML>
<HEAD>
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
<title>成理房缘</title>
</HEAD>
<script language="javascript">

<!--  javascript数组信息  -->
var v = new Array();
var n = new Array(7);
v[0] = new Array('0');
n[0] = new Array('不限--');
v[1] = new Array('1','2','3','4','5','6','7','8','9');
n[1] = new Array('南苑一栋','南苑二栋','南苑三栋','南苑四栋','南苑五栋','南苑六栋','南苑七栋','南苑八栋','其他');
v[2] = new Array('10','11','12','13','14','15','16','17','18','19','20');
n[2] = new Array('北苑一栋','北苑二栋','北苑三栋','北苑四栋','北苑五栋','北苑六栋','北苑七栋','北苑八栋','北苑九栋','北苑十栋','其他');
v[3] = new Array('21','22','23','24','25','26','27','28');
n[3] = new Array('东苑一栋','东苑二栋','东苑三栋','东苑四栋','东苑五栋','东苑六栋','东苑七栋','其他');
v[4] = new Array('29','30','31','32','33','34');
n[4] = new Array('铁建广场一栋','铁建广场二栋','铁建广场三栋','铁建广场四栋','铁建广场五栋','其他');
v[5] = new Array('35','36','37','38','39','40');
n[5] = new Array('罗兰小镇一栋','罗兰小镇二栋','罗兰小镇三栋','罗兰小镇四栋','罗兰小镇五栋','其他');
v[6] = new Array('41','42','43','44','45','46','47');
n[6] = new Array('华西花园一栋','华西花园二栋','华西花园三栋','华西花园四栋','华西花园五栋','华西花园六栋','其他');

    <!--选择函数-->
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
</script>
</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" class="style05" >
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

<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="38" background="images/middle2.jpg">&nbsp;</td>
    <td width="172" valign="top">

<script language="javascript">
<!--
	function login(){
		if( document.myForm.uname.value =="" ){
			alert("用户名不能为空");
			return false;
		}else if(document.myForm.upass.value == ""){
			alert("密码不能为空");
			return false;
		} else {
			return true;
		}
	}
-->
</script>

	<table align="center">
	<tr>
		<td width=''><font color='red'>当前用户：

			${tblUser.uname}</font>
		</td>
	</tr>
	<tr>
		<td width='150'><a href="tblFwxx!myFwxxInfo.action">管理房源</a></td>
	</tr>
	<tr>
		<td width='100'><a href="post.jsp">房源发布</a></td>
	</tr>
	<tr>
		<td width='100'><a href="index.jsp">返回首页</a></td>
	</tr>
	<tr>
		<td width='100'><a href="tblFwxx!leave.action">[注销]</a></td>
	</tr>
	</table>
</td>
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495">

	<form action="tblFwxx!upd.action" method="post"  name="mf" onsubmit="return validateTitle()">
		<!--<input type="hidden" name="affirm" value="n">-->
		<table >
			<tr>
				<td colspan="2">修改租房信息：</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
			  <td>标题：</td>
				<td><input type="text" name="title" value="${tblFwxx.title}"></td>
			</tr>
			<tr>
			  <td>区域:</td>
				<td><select name="qxid" onChange="selectjd()" style="width:80">
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
			  <td>租金：</td>
				<td><input type="text" name="zj" value="${tblFwxx.zj}">元/月</td>
			</tr>
			<tr>
			  <td>户型：</td>
				<td><select name="shi">
					<option value="${tblFwxx.shi}">${tblFwxx.shi}</option>  
					<option value="1">1</option> 
					<option value="2">2</option> 
					<option value="3">3</option> 
					<option value="4">4</option> 
				</select>室<select name="ting"> 
					<option value="${tblFwxx.ting}">${tblFwxx.ting}</option>
					<option value="1">1</option> 
					<option value="2">2</option> 
				</select>厅</td>
			</tr>
			<tr>
			  <td>联系电话：</td>
				<td><input type="text" name="telephone" value="${tblFwxx.telephone}"></td>
			</tr>
			<tr>
			  <td>出租类型：</td>
				<td><select name="lxid"> 
					<option value="1">单间</option> 
					<option value="0">整套</option> 
				</select></td>
			</tr>
			<tr>
			  <td>面积：</td>
				<td><input type="text" name="mj" value="${tblFwxx.mj}"></td>
			</tr>
			<tr>
			  <td>联系人：</td>
				<td><input type="text" name="lxr" value="${tblFwxx.lxr}"></td>
			</tr>
			<tr>
			  <td>楼层：</td>
				<td><input type="text" name="lcid" value="${tblFwxx.lcid}"></td>
			</tr>
			<tr>
			  <td>配套设施：</td>
				<td><textarea name="fwxx" rows="10" cols="40">${tblFwxx.fwxx}</textarea></td>
			</tr>
			
			<tr>
			 <td>旧物信息：</td>
				<td><textarea name="jwxx" rows="10" cols="40">${tblFwxx.jwxx}</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<div align="center"><input type="submit" value="修改" class="btn"></div></td>
			</tr>
		</table>
	</form>
	</td>
</table>
<P align="center">burning小组</P>
</BODY>
</HTML>