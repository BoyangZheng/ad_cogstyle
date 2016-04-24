<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>session</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 16px;
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>

<body>

<span class="STYLE1">更改session：</span>
<form action="session.asp" method="post" name="form1" target="_self">
  Session name : 
  <input type="text" name="name">
  <br>
  Session Value: 
  <input type="text" name="val">
  <br>
  <input type="submit" name="Submit" value="提交">
</form>
<p>
  <%
if request.Form("name")<>"" and request.Form("val")<>"" then
session(request.Form("name"))=request.Form("val")
%>
  <br>
  Session("<%=request.Form("name")%>")Created!<br>
Value  is <%=request.Form("val")%>
<%
end if
%>
</p>
<hr width="300" align="left" />
<p><span class="STYLE1">查看session</span>
</p>
<form action="session.asp" method="post" name="form2" target="_self">
  Session name : 
  <input type="text" name="name2">
  <br>
  <input type="submit" name="Submit" value="提交">
</form>
<%
if request.Form("name2")<>"" then
%>
<br>Session("<%=request.Form("name2")%>")<br>
Value  is <%=session(request.Form("name2"))%>
<%
end if
%>
</body>
</html>
