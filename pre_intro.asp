<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>�߱����</title>


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
	alert('ʵ����Ҫ����ֹʹ���Ҽ���лл��');
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
    <td width="566" height="31"><strong>���������ڵ�λ�ã�
    <a href="pre_intro.asp" target="_self">��ҳ</a></strong></td>
    <td width="35" rowspan="2" align="center" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="566" align="left" valign="top"><p>&nbsp;</p>
      <p>���ã�</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;��л���μ����ǵ�����ѧʵ�飡</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;����һ��ʾ��վ�㣬������������������ĸ���վ�������������ڱ�֤��ȷ�������£�����ش���ҳ�涥�����ֵ����⡣</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;��Щ���ⶼ��������վ�ж������ҵ�����������ע�⣺</p>
      <ol>
        <li><strong>ÿһ����Ŀ�ش��Ͳ��ɸ��ģ�</strong></li>
        <li><strong>��������ֻ��ʹ��ʹ�����������벻Ҫʹ������Ҽ���ˢ�£�F5���ͼ����ϵ�Backspace����</strong>���򽫶����ǵ�ʵ�������һ��Ӱ�죬лл</li>
        <li>ÿһ��վ�㶼�������ҳ�棬ͨ����Щҳ��ĳ������������ı��ڶ������ҵ���</li>
      </ol>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;����˵������<a href="pre_intro_2.asp">�������</a>���˽��й�ҳ�涥���ġ����ء�������ҳ����ť�Ĺ��ܡ�</p>
    <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td colspan="2">    <hr width="95%" align="center" />
      <p align="center" class="mainfont">copyright&copy;�㽭��ѧ��������Ϊ��ѧϵ Power by JDStudio<br />
    <br />
    </p></td>
  </tr>
</table>

</body>
</html>
