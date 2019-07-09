<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>成理房缘</title>
<link type="text/css" href="style/css.css" rel="stylesheet" />
<link rel="stylesheet" href="style/style.css" />
	<!--导入js-->
<script type="text/javascript" src="js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
<script type="text/javascript" src="style/jquery.js"></script>
<script type="text/javascript" src="style/js.js"></script>
</head>

<body> 
 <!--header/-->
 <div class="logo-phone">
  <div class="width1190">
   <h1 class="logo1"><img src="images/chenglifangyuan.png"/>&nbsp;欢&nbsp;迎&nbsp;您</h1>
   <div class="clears"></div>
  </div><!--width1190/-->
 </div>

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

 
 <div>
  <div>
   <div align="center" >
    <td>
    <div float="left">
    <img width="230px" height="250px" src="images/2.jpg">
    <img width="230px" height="250px"src="images/3.jpg">
    <img width="230px" height="250px"src="images/6.jpg">
     </div>
    </td>
   </div>
  <div align="middle">
    <td><strong>电话/手机：</strong>${tblFwxx.telephone}</td>
		<br />
		<br />
		<td><strong>联系人：</strong>${tblFwxx.lxr}</td>
		<br />
		<br />
		<td><strong>出租类型：${tblFwlx.fwlx}</strong></td>
		<br />
		<br />
		<td><strong>区域：</strong>${tblQx.qx}&nbsp;&nbsp;${tblJd.jd}</td>
		<br />
		<br />
		<td><strong>户型：</strong>${tblFwxx.shi}室${tblFwxx.ting}厅</td>
		<br />
		<br />
		<td><strong>楼层：</strong>${tblFwxx.lcid}&nbsp;层</td>
		<br />
		<br />
		<td><strong>租金：</strong>${tblFwxx.zj}&nbsp;元</td>
		<br />
		<br />
		<td><strong>发布时间：</strong> ${tblFwxx.date}</td>
		<br/>
		<br/>
		<td><strong>面积：</strong> ${tblFwxx.mj}&nbsp;平方米</td>
		<br/>
		<br />
		<td><strong>配套设施：</strong> ${tblFwxx.fwxx}</td>
		<br/>
		<br />
		<td><strong>旧物信息：</strong> ${tblFwxx.jwxx}</td>
		<br/>
		</div>    
  </div>
</body>
</html>
