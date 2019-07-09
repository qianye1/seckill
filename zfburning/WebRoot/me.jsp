<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>

<HTML>
<HEAD>
<TITLE>成理房缘</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style/style.css" />
	<!--导入js-->
<script type="text/javascript" src="js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>
<div class="header">
    <h1 class="logo1"><img src="images/chenglifangyuan.png"/>&nbsp;欢&nbsp;迎&nbsp;您</h1>
    <div>
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
  
  
  <tr width="100%">
    
	<table>
		<tr>
		    <td width="400px">
		    <td width="172" valign="top" class="style06" >
	<table>
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
		<td width='100'><a href="index.jsp">返回首页</a></td>
	</tr>
	<tr>
		<td width='100'><a href="tblFwxx!leave.action">[注销]</a></td>
	</tr>
	</table>
</td>
			<td width="50px">&nbsp;</td>
			<td width="400px">
			
			
			<table width='450' border='5px'>
				<tr>
					<TD class="style07">求租广场</TD>

				</tr>
				<tr>
					<td colspan='5'><hr/></td>
				</tr>
									<tr>
						<td align='left' >
							<s:property value="#session.List[0]" />
						</td>
						
					</tr>
				
				
				<s:iterator >
					<tr>
						<td align='left' >
							理工南苑有1000-1500的房子吗?
						</td>
					</tr>
										<tr>
						<td align='left' >
							东苑有价格便宜的吗?
						</td>
					</tr>
										<tr>
						<td align='left' >
							求一套北苑单间
						</td>
					</tr>
										<tr>
						<td align='left' >
							没钱了，想换个便宜一点的房子租
						</td>
					</tr>
										<tr>
						<td align='left' >
							求一个环境安静的房子
						</td>
					</tr>
										<tr>
						<td align='left' >
							准备考研，东苑有房源出租吗
						</td>
					</tr>
										<tr>
						<td align='left' >
							考研失败，准备二战，求环境安静的房子
						</td>
					</tr>
				</s:iterator>
				
				<tr>
					<td colspan='5'>
					&nbsp;&nbsp;&nbsp;&nbsp;

				<input type="button" value="下一页" style="width: 145px; height: 36px; "></tr>
			</table>
			
			
			
			
			</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
	</table>
	</td>
  </tr>
<br/>
</BODY>
</HTML>