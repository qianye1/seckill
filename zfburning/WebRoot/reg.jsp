<!-- aready -->
<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<!--����css-->
<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style/style.css" />

<!--����js-->
<script type="text/javascript" src="js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
<title>�û�ע��</title>

<!--ע�������ж�-->
<script lang="javascript">
	function pass(){
		var pass = false;
		if( document.myForm.uname.value =="" ){
			alert("�û�������Ϊ��");
			pass= false;
		}else if(document.myForm.upass.value == ""){
			alert("���벻��Ϊ��");
			pass = false;
		} else if(document.myForm.upass.value != document.myForm.upass1.value){
			alert("�������벻һ��");
			pass = false;
		}  else {
			pass = true;
		}
		return pass;
	}
</script>
</HEAD>


<BODY>
<div class="header">
    <h1 class="logo1"><img src="images/chenglifangyuan.png"/>&nbsp;��&nbsp;ӭ&nbsp;��</h1>
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
</body>

<table border="5" style="width:100%; ">
  <tr>
  </tr>
  <tr>
  
    <td width="210" class="style06">
        <!--ע��form��-->
    	<form action="tblFwxx!addUser.action"  name="myForm" onsubmit="return pass()">
		<table style="height:20%;width:30%">
			<tr>
				<td>ע��</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td>�û�����</td>
				<td><input type="text" name="uname" style="background:rgba(0, 0, 0, 0);"></td>
			<tr>
				<td>���룺</td>
				<td><input type="password" name="upass" style="background:rgba(0, 0, 0, 0);"></td>
			<tr>
			<tr>
				<td>�ظ����룺</td>
				<td><input type="password" name="upass1" style="background:rgba(0, 0, 0, 0);"></td>
			<tr>
				<td><input type="submit"  style="font-family: STXingkai;font-size: 15px"value="ע��" class="btn" ></td>
				<td><input type="reset"  style="font-family: STXingkai;font-size: 15px" value="����" class="btn" ></td>
			</tr>
		</table>
		</form>
		    <a href="index.jsp" style="color:rgb(0,0,255)">������ҳ</a>
    <a href="login_form.jsp" style="color:rgb(0,0,255)">�û���½</a></td>
    <td width="495" class="style05" style="background-color:rgb(127,255,0)">
		<table width="88%" cellspacing="0">
				<tr>
					<TD width='250' class="style07" " style="font-family: STXingkai;font-size: 20px;color:red">����</TD>
					<TD width='90' align='center' class="table_title" style="font-family: STXingkai;font-size: 20px;color:red">�����</TD>
					<TD align='center' class="table_title" style="font-family: STXingkai;font-size: 20px;color:red">��������</TD>
				</tr>
				
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">���ⶫԷ������</a></td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>1500Ԫ</td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>2019-06-20</td>
				</tr>
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">��Է�����к���</a></td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>700Ԫ</td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>2019-06-25</td>
				</tr>
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">��ɶ�����ѧ�����ں���</a></td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>850Ԫ</td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>2019-06-26</td>
				</tr>
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">��Է�����</a></td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>1000Ԫ</td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>2019-05-28</td>
				</tr>
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">��Է����</a></td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>1000Ԫ</td>
					<td align='center'></td>
				</tr>
				<br>
				<br>


				<tr>
					<td colspan='3'><hr/></td>
				</tr>
			</table>

	</td>
    
  </tr>

</table> <td colspan="5"></td>
<P align="center">buringС��</P>
<br/>
</BODY>
</HTML>