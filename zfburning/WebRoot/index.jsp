<!--完成 -->
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
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
</head>

<body> 
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

<script language="javascript">

<!--  javascript数组信息  -->
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
</script>
</HEAD>
<BODY>
<table width="100%" height="350" border="5" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="172" valign="top" align="center" class="style06" >
<script language="javascript">
</script>
	<!-- 
			//获取本地Cookie
			Cookie[] cookies = request.getCookies();
			// 判断cookies
			if(cookies!=null){
				for (int i = 0; i < cookies.length; i++) {
					Cookie temp = cookies[i];
					if(temp.getName().equals("autoLogin") && temp.getValue().equals("allowAutoLogin"))
					{
						//跳转到主界面
						response.sendRedirect("indexSucess.jsp");
					}
				}
			}
		%>
	-->
<!-- form表单 -->
<form action="tblFwxx!login.action" method="post" name="myForm" onsubmit="return login()">
  	<p>&nbsp;</p>
	  <table align="center">
	  	<c:set var="user" value="${sessionScope.tblUser }" scope="session" />
			<c:if test="${tblUser.uname==null }">
				<tr>
					<td colspan="2" class="style07">用户名：</td>
				</tr>
				<tr>
				  <td colspan="2"><input type="text" name="uname" size=10" class="editbox"></td>
				</tr>
				<br/>
				<br/>
				<tr>
					<td colspan="2" class="style07">密&nbsp;&nbsp;码：</td>
					</tr>
				<tr>
				  <td colspan="2"><input type="password" name="upass" size=10"  class='editbox'></td>
				  </tr>
				<tr>
					<td>
						<input type="hidden" name="sign" value="login"/>						
						<input type="submit" style="font-family: STXingkai;font-size: 15px" value="登陆" class='btn'>
						<input type="reset"  style="font-family: STXingkai;font-size: 15px" value="重置" class='btn'>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="checkbox" name="remember" id="remember" value="auto">
						记住密码
						</td>
				</tr>
				<tr>
				  <td><a href="reg.jsp">注册用户</a></td>
				</tr>
		
		</c:if>
		
		<c:if test="${tblUser.uname!=null }">
				<tr>
					<td ><font color='red'>当前用户：${tblUser.uname }</font>
					</td>
				</tr>
				<tr>
					<td><a href="tblFwxx!myFwxxInfo.action">管理房源</a></td>
				</tr>
				<tr>
					<td><a href="post.jsp">房源发布</a></td>
				</tr>
				<tr>
					<td><a href="rent.jsp">求租</a></td>
				</tr>
				<tr>
					<td width='100'><a href="tblFwxx!leave.action"><font color='red'>[注销]</font></a></td>
				</tr>
		</c:if>
	  </table>
   </form>
</td>


<!-- 查询表单 -->
 <td width="495" style = "background-color:#C5C1AA">
<form action="tblFwxx!sea.action" method="post" name="mf">
		<input type="hidden" name="pageno" value="0"/>
<script>
function fswitch(id){
	var o = document.getElementById(id);
	if (o){
		if (o.style.display == "none"){ o.style.display = "block"; } else {o.style.display = "none";} 
		//获取当前页面里面id为id的标签，改变该标签的样式，使其不显示。
	}
}
</script>
				<div style="text-align:left;width:88%;">
					<input id="title" name="title">
					<input type="submit" value="查询" class="btn"> <span onclick="fswitch('advSearch');" style="cursor:hand;color:blue;">高级搜索</span>
				</div>

		<table width="88%;" id="advSearch" style="border:solid 0px #000;display:none;">
<tr>
				<td style="color:rgb(255,255,0);font-size: 15px">区域：</td>
				<td><select name="qxid" onChange="selectjd()" style="width:80">
					<option value='0'>不限--</option>
					<option value='1'>理工南苑</option>
					<option value='2'>理工北苑</option>
					<option value='3'>理工东苑</option>
					<option value='4'>铁建广场</option>
					<option value='5'>罗兰小镇</option>
					<option value='6'>华西花园</option>
				</select></td>
				<td rowspan="6">&nbsp;</td>
			</tr>
			<tr>
				<td style="color:rgb(255,255,0);font-size: 15px">栋数：</td>
				<td><select name="jdid" style="width:80">
					<option value="0">不限--</option>
				</select></td>
			</tr>
			<tr>
				<td style="color:rgb(255,255,0) ;font-size: 15px">租金：</td>
				<td style="color:rgb(255,255,0);font-size: 15px"><input type="text" name="zj" size="5" class="unnamed1" > 至 <input type="text" name="zj1" size="5" class="unnamed1" > 元/月</td>
			</tr>							
			<tr>
				<td colspan='3'><hr/></td>
			</tr>
</table>
<!-- 房屋信息表格 -->
<table width="90%" celspacing="0">
			<tr  >
					<TD width='250' class="table_title"  style="color:rgb(255,255,0);font-family: STXingkai;font-size: 15px">标题</TD>
					<TD width='90' align='center' class="table_title" style="color:rgb(255,255,0);font-family: STXingkai;font-size: 15px">月租金</TD>
					<TD align='center' class="table_title" style="color:rgb(255,255,0);font-family: STXingkai;font-size: 15px">发布日期</TD>
				</tr>		
			    <s:iterator value="#session.tblFwxxList" var="tblFwxx">
			    <tr>
			    	<td>
			    		<a href='tblFwxx!showInfo.action?fwid=<s:property value="#tblFwxx.fwid" />&&lxid=<s:property value="#tblFwxx.lxid" />&&jdid=<s:property value="#tblFwxx.jdid" />'>
							<s:property value="#tblFwxx.title" />
						</a>
					</td>
					<td align='center' style='height:30px;'>
						<s:property value="#tblFwxx.zj" /><font style='color:black'>元</font>
					</td>
					<td align='center'>
						<s:property value="#tblFwxx.date" />
					</td><td>					
				</tr>	
				</s:iterator>										
				<tr>
					<td colspan='3'><hr/></td>
				</tr>
				<tr>
					<td colspan="3">
						<div align="right" class="myspan" style="background-color: #FAEDs1;">
										<span>${pagemsg}</span>
										<a href="tblFwxx!queryAllPage.action?pageno=1" style='color:blue'>首页</a>
										<a href="tblFwxx!queryAllPage.action?pageno=${pageno-1}" style='color:blue'>上一页</a>
										<a href="tblFwxx!queryAllPage.action?pageno=${pageno+1}" style='color:blue'>下一页</a>
										<a href="tblFwxx!queryAllPage.action?pageno=${pageMax}" style='color:blue'>尾页</a>
										<a style='color:black;font-family:Microsoft JhengHei'>第${pageno}页 / 共${pageMax}页</a>
						</div>
					</td>
				</tr>
			</table>
	</form>
	</td>
  </tr>
</table>
<br/>
</BODY>
</HTML>