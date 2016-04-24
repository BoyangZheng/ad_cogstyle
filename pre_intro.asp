<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>走遍非洲</title>


<link href="CSS/default.CSS" rel="stylesheet" type="text/css" />


<style type="text/css">
<!--
#ad1_1 {
	color: #333333;
	visibility: visible;
	clear: left;
}
#ad1_2 {
	color: #333333;
	visibility: visible;
	clear: left;
}
#ad2 {
	color: #333333;
	visibility: visible;
}
#ad3 {
	color: #333333;
	Z-INDEX: 2;
	POSITION: absolute;
	height: 300px;
}
-->
</style>

<SCRIPT language=javascript >
var start_pos=0;
function right_click() {
	if (event.button==2) {
	alert('实验需要，禁止使用右键，谢谢！');
	}
}
document.onmousedown=right_click;
</SCRIPT> 
</head>

<body>
<%
if session("firstv")="1" then
	session("last")="pre_intro.asp"
	session("firstv")="0"
else
	session("last")="pre_intro_2.asp"
end if
%>



<table width="601" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2"><div align="left"><img src="images/reg_01.jpg" alt="banner" width="600" height="163" /></div></td>
  </tr>
  <tr>
    <td width="566" height="31"><strong>您现在所在的位置：
    <a href="pre_intro.asp" target="_self">首页</a></strong></td>
    <td width="35" rowspan="2" align="center" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="566" align="left" valign="top"><p>&nbsp;</p>
      <p>您好！</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;感谢您参加我们的心理学实验！</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;这是一个示例站点，而接下来您将会浏览四个网站，您的任务是在保证正确的条件下，尽快回答在页面顶部呈现的问题。</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;这些问题都可以在网站中都可以找到。但是请您注意：</p>
      <ol>
        <li><strong>每一道题目回答后就不可更改！</strong></li>
        <li><strong>整个过程只需使用使用鼠标左键；请不要使用鼠标右键、刷新（F5）和键盘上的Backspace键，</strong>否则将对我们的实验结果造成一定影响，谢谢</li>
        <li>每一个站点都包含多个页面，通向这些页面的超链接在正文文本内都可以找到。</li>
      </ol>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;比如说，请您<a href="pre_intro_2.asp">点击这里</a>来了解有关页面顶部的“返回”、“主页”按钮的功能。</p>
    <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td colspan="2">    <hr width="95%" align="center" />
      <p align="center" class="mainfont">copyright&copy;浙江大学心理与行为科学系 Power by JDStudio<br />
    <br />
    </p></td>
  </tr>
</table>

</body>
</html>
