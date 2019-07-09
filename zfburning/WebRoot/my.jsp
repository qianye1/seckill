<!--aready-->
<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>

<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style/style.css" />
	<!--导入js-->
<script type="text/javascript" src="js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
<title>成理房缘</title>
</HEAD>

<BODY>
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


<tr>
  <table border="5px" align="center">
  <tr>
    <td width="340">
    <td width="172" valign="top" class="style06" >
	<table align="center" style = "background-color:#FFFACD">
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
<td width="150"/>
<td width="495"  style = "background-color:#FFF68F">
	<table>
		<tr>
			<td width="3%">&nbsp;</td>
			<td width="97%">
			
			
			<table width='450' border='0'>
				<tr>
					<TD class="style07">标题</TD>
					<TD width='100' align='center' class="style07">月租金</TD>
					<TD width='110'align='center' class="style07">发布日期</TD>
					<TD width='50'>&nbsp;</TD>
					<TD width='50'>&nbsp;</TD>
				</tr>
				<tr>
					<td colspan='5'><hr/></td>
				</tr>
				
				
				
				<s:iterator value="#session.myTblFwxxList" var="myTblFwxx">
					<tr>
						<td style='height:30px;'>
							<a href='tblFwxx!showInfo.action?fwid=<s:property value="#myTblFwxx.fwid" />&&lxid=<s:property value="#myTblFwxx.lxid" />&&jdid=<s:property value="#myTblFwxx.jdid" />'>
								<s:property value="#myTblFwxx.title" />
							</a>
						</td>
						<td align='center' style='height:30px;'>
							<s:property value="#myTblFwxx.zj" />元
						</td>
						<td align='center' style='height:30px;'>
							<s:property value="#myTblFwxx.date" />
						</td>
						<td align='center' style='height:30px;'><a href='tblFwxx!delzf.action?fwid=<s:property value="#myTblFwxx.fwid" />'>删除</a></td>
						<td align='center' style='height:30px;'><a href='tblFwxx!updInfo.action?fwid=<s:property value="#myTblFwxx.fwid" />'>修改</a></td>
					</tr>
				</s:iterator>
				
				<tr>
					<td colspan='5'><hr/></td>
				</tr>
			</table>
			
			
			
			
			</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
	</table>
	</td>
	<td width="350px">
  </tr>
  </table>
  </tr>
    <td colspan="5"></td>
  </tr>
</table>
<P align="center">buring小组</P>
<br/>
</BODY>
</HTML>