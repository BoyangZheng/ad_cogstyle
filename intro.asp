<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="CSS/default.CSS" rel="stylesheet" type="text/css" />

<title>指导语</title>
<style type="text/css">
<!--
body {
	background-image: url();
	background-color: #491E0E;
}
-->
</style></head>

<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<table width="600" height="473" border="0" align="center" cellpadding="0" cellspacing="0" background="images/intro.jpg">
  <tr>
    <td width="58" height="53">&nbsp;</td>
    <td width="486">&nbsp;</td>
    <td width="56">&nbsp;</td>
  </tr>
  <tr>
    <td height="350">&nbsp;</td>
    <td align="left" valign="top"><table width="503" height="153" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td>
          <%
session("thisnode")=1
session("lastnode")=1
session("visitednode")="1"
session("visitedtime")=""
session("quesno")=0

if session("period")=1 then%>
       
          <p><strong>现在即将开始第一组实验 </strong> </p>
              <%elseif session("period")=2 or session("period")=3  or session("period")=4 then%>
           
          <p><strong>已经完成一组；<br />
              请稍微休息后开始下一组</strong></p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <%elseif session("period")=5 then%>
          <p><strong>4组实验已经完成！</strong></p>
          <p><strong>接下来，您需要对刚才在站点中出现的广告图片进行再认和评价，共16题。<br />
          </strong><strong>请您尽可能地回答出呈现的问题。如果确实记不清，请选择“完全记不清了”</strong></p>
          <p>&nbsp;</p>
       
          <%else
	response.write "<script>window.alert('session(period)发生错误！');history.go(-1);</script>"
	response.End()
end if%></td>
      </tr>
      <tr>
        <td><p align="center">
            <%if session("period")=5 then%>
            <a href="recall.asp?id=1" target="_top">我明白了！ </a>
            <%else%>
          <a href="frame.asp" target="_top">我明白了，开始吧！ </a>
            <%end if%>
        </p></td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
</body>

</html>
