<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>

<HTML>
<HEAD>
<TITLE>����Ե</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style/style.css" />
	<!--����js-->
<script type="text/javascript" src="js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>
<div class="header">
    <h1 class="logo1"><img src="images/chenglifangyuan.png"/>&nbsp;��&nbsp;ӭ&nbsp;��</h1>
    <div>
  <tr>
    <div>
    <tr>
    <td colspan="5" >
      <div id="box"><!--�õ�Ƭ����-->
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
		<td width=''><font color='red'>��ǰ�û���${tblUser.uname}</font>
		</td>
	</tr>
	<tr>
		<td width='150'><a href="tblFwxx!myFwxxInfo.action">����Դ</a></td>
	</tr>
	<tr>
		<td width='100'><a href="post.jsp">��Դ����</a></td>
	</tr>
	<tr>
		<td width='100'><a href="index.jsp">������ҳ</a></td>
	</tr>
	<tr>
		<td width='100'><a href="tblFwxx!leave.action">[ע��]</a></td>
	</tr>
	</table>
</td>
			<td width="50px">&nbsp;</td>
			<td width="400px">
			
			
			<table width='450' border='5px'>
				<tr>
					<TD class="style07">����㳡</TD>

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
							����Է��1000-1500�ķ�����?
						</td>
					</tr>
										<tr>
						<td align='left' >
							��Է�м۸���˵���?
						</td>
					</tr>
										<tr>
						<td align='left' >
							��һ�ױ�Է����
						</td>
					</tr>
										<tr>
						<td align='left' >
							ûǮ�ˣ��뻻������һ��ķ�����
						</td>
					</tr>
										<tr>
						<td align='left' >
							��һ�����������ķ���
						</td>
					</tr>
										<tr>
						<td align='left' >
							׼�����У���Է�з�Դ������
						</td>
					</tr>
										<tr>
						<td align='left' >
							����ʧ�ܣ�׼����ս���󻷾������ķ���
						</td>
					</tr>
				</s:iterator>
				
				<tr>
					<td colspan='5'>
					&nbsp;&nbsp;&nbsp;&nbsp;

				<input type="button" value="��һҳ" style="width: 145px; height: 36px; "></tr>
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