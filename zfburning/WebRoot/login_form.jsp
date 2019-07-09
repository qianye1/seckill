<!-- 完成 -->
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!--导入css-->
<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style/style.css" />
<!--导入js-->
<script type="text/javascript" src="js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
<title>用户注册</title>
<%request.setCharacterEncoding("utf-8");//设置取值的编码格式 %>
<!--条件判断是否账号密码满足不为空-->
<script lang="javascript">
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
</script>

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
</body>

<table border="5" style="width:100%; ">
  <tr>
  </tr>
  <tr>
  
    <td width="172" class="style06">
    <!--登录表单-->
    		<form action="tblFwxx!login_form.action" method="post" name="myForm" onsubmit="return login()">
		<table align="center">
			<tr>
				<td colspan="2" align="center">
								
				</td>
			</tr>
			<tr>
				<td>用户登陆：</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="uname"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="upass"></td>
			</tr>
			<tr>
				<td>
				<input type="hidden" name="sign" value="login"/>
				<input type="submit" style="font-family: STXingkai;font-size: 15px" value="登陆" >
				</td>
			</tr>
		</table>
	</form>
		    <a href="index.jsp" style="color:rgb(0,0,255)">返回首页</a>
            <a href="reg.jsp" style="color:rgb(0,0,255)">用户注册</a>
    <td width="495" class="style05" style="background-color:rgb(120,205,30)">
    <!--房屋list数据-->
		<table width="88%" cellspacing="0">
				<tr>
					<TD width='250' style="font-family: STXingkai;font-size: 20px;color:red">热门</TD>
					<TD width='90' align='center' style="font-family: STXingkai;font-size: 20px;color:red">月租金</TD>
					<TD align='center' style="font-family: STXingkai;font-size: 20px;color:red">发布日期</TD>
				</tr>
				
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">出租东苑二居室</a></td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>1500元</td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>2019-06-20</td>
				</tr>
				
				<tr>
					<td><a href='detail.jsp' >南苑附近招合租</a></td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>700元</td>
					<td align='center'style='height:30px;color:black;font-family:Microsoft JhengHei'>2019-06-25</td>
				</tr>
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">求成都理工大学地铁口合租</a></td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>850元</td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>2019-06-26</td>
				</tr>
				
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">北苑找妹子合租</a></td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei'>1000元</td>
					<td align='center'style='height:30px;color:black;font-family:Microsoft JhengHei'>2019-05-28</td>
				</tr>
				<tr>
					<td><a href='detail.jsp' style="color:rgb(0,0,255)">想找个女朋友</a></td>
					<td align='center' style='height:30px;color:black;font-family:Microsoft JhengHei''>爱情无价</td>
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

</table>
 <td colspan="5"></td>
<P align="center">buring小组</P>
<br/>
</BODY>
</HTML>