<!-- aready -->
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8");//设置取值的编码格式
String title=request.getParameter("title");
String qxid = request.getParameter("qxid");
int qyid2=Integer.parseInt(qxid);//取到的值是数字，需转换为对应的区域
String qyid1 = "";
	if(qyid2==1){
	qyid1 = "理工南苑";
	}
    if(qyid2==2){
	qyid1 = "理工北苑";
	}
    if(qyid2==3){
	qyid1 = "理工东苑";
	}
    if(qyid2==4){
	qyid1 = "铁建广场";
	}
    if(qyid2==5){
	qyid1 = "罗兰小镇";
	}
    if(qyid2==6){
	qyid1 = "华西花园";
	}
String jdid = request.getParameter("jdid");
String zj = request.getParameter("zj");
String shi = request.getParameter("shi");
String ting = request.getParameter("ting");
String lxid = request.getParameter("lxid");
String lxid1 = "";  
int lxid2=Integer.parseInt(lxid);
  if(lxid2==1){
	lxid1 = "单间";
	}
  if(lxid2==0){
	lxid1 = "整套";
	}
String mj = request.getParameter("mj");
String lcid = request.getParameter("lcid");
String lxr = request.getParameter("lxr");
String telephone = request.getParameter("telephone");
String fwxx = request.getParameter("fwxx");
String jwxx = request.getParameter("jwxx");
%>
<HTML>
<head>
    <TITLE>确认发布房源</TITLE>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="style/fabu.css" rel="stylesheet" type="text/css" /> 
        <link rel="stylesheet" href="style/style.css" />
	<!--导入js-->
<script type="text/javascript" src="js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
    
</head>
<BODY>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
     <div class="header">
          <h1 class="logo1"><img src="images/chenglifangyuan.png"/>&nbsp;欢&nbsp;迎&nbsp;您</h1>
     </div><!--width1190/-->
     </DIV>
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
	</tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="rent.jsp">求租</a></td>
	</tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">返回首页</a></td>
	</tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="tblFwxx!leave.action"><font color='red'>[注销]</font></a></td>
	</tr>
	</table>
</td>
    <td width="70%">
    <!--  
	<form action="tblFwxx!postConfirm.action" method="post"  name="mf" onsubmit="return validateTitle()">
	-->
		<!-- 
		<input type="hidden" name="affirm" value="n">
		-->
		<table id="fabu" width="100%" border="0" align="center" cellpadding="3" cellspacing="0">
			<tr>
				<td id="fabu-title" colspan="2" align="center">确&nbsp;认&nbsp;发&nbsp;布&nbsp;信&nbsp;息</td>
			</tr>
			<tr>
				<td id="fabu-titles" colspan="2" align="center" >成理人自己的租赁房屋网站</td>
			</tr>
			<tr>
			  <td align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标题：</td>
				<td><%=title%></td>
			</tr>
			<tr>
			  <td align="right">区域：</td>
				<td><%=qyid1%></td>
			</tr>
			<tr>
			  <td align="right">栋数：</td>
				<td><%=jdid%>&nbsp;栋</td>
			</tr>
			<tr>
			  <td align="right">楼层：</td>
				<td><%=zj%>&nbsp;楼</td>
			</tr>
			<tr>
			  <td align="right">面积：</td>
				<td>
				<%=mj%>&nbsp;平方米
				</td>
			</tr>
			<tr>
			  <td align="right">租金：</td>
				<td><%=zj%>&nbsp;元/月</td>
			</tr>
			<tr>
			  <td align="right">户型：</td>
				<td><%=shi%>&nbsp;室
				<%=ting%>&nbsp;厅</td>
			</tr>
			<tr>
			  <td align="right">出租类型：</td>
				<td><%=lxid1%></td>
			</tr>
			<tr>
			  <td align="right">联系电话：</td>
				<td><%=telephone%></td>
			</tr>
			<tr>
			  <td align="right">联系人：</td>
				<td><%=lxr%></td>
			</tr>
			<tr>
			  <td align="right">配套设施：</td>
				<td><%=fwxx%></textarea></td>
			</tr>
			<tr>
			  <td align="right">旧物信息：</td>
				<td><%=jwxx%></textarea></td>
			</tr>
		</table>
		<form action="tblFwxx!postConfirm.action" method="post"> 
		   <input type="submit" value="确认提交" id="tijiao" >
			<input type="hidden" name="qxid" value="<%=qxid%>">
			<input type="hidden" name="jdid" value="<%=jdid%>">
			<input type="hidden" name="mj" value="<%=mj%>"> 
			<input type="hidden" name="lxid" value="<%=lxid%>"> 
			<input type="hidden" name="lcid" value="<%=lcid%>">
			<input type="hidden" name="shi" value="<%=shi%>">
			<input type="hidden" name="ting" value="<%=ting%>"> 
			<input type="hidden" name="lxr" value="<%=lxr%>">
			<input type="hidden" name="telephone" value="<%=telephone%>">
			<input type="hidden" name="fwxx" value="<%=fwxx%>"> 
			<input type="hidden" name="jwxx" value="<%=jwxx%>">
			<input type="hidden" name="zj" value="<%=zj%>">
			<input type="hidden" name="title" value="<%=title%>">
		</form>
	</td>
  </tr>
</table>
<P align="center" size="10px">burning小组</P>
<br/>
</BODY>
</HTML>