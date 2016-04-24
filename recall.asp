<!--#include file="conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="CSS/default.CSS" rel="stylesheet" type="text/css" />

<title>图片再认</title>
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

<table width="600" height="473" border="0" align="center" cellpadding="0" cellspacing="0" background="images/questionnaire.jpg">
  <tr>
    <td width="58" height="53">&nbsp;</td>
    <td width="486">&nbsp;</td>
    <td width="56">&nbsp;</td>
  </tr>
  <tr>
    <td height="350">&nbsp;</td>
    <td align="center" valign="middle">
      
        <%
set rs=server.CreateObject("ADODB.recordset")
i=cint(request.QueryString("id"))
sql="select * from question where id="&(i+40)
rs.open sql,conn,1,3

dim newsequ
newsequ=5-cint(session("sequence"))

if i<=16 then
	if ( (i-1)\4 + 1)<>newsequ then
	%>
      <p><strong><%=rs("question")%></strong></p>
     
	<form action="recall_ok.asp" method="post">   
        <input type="radio" name="answer" id="answer" value="1">
        1. <%=rs("option1")%><br />
        <input type="radio" name="answer" id="answer2" value="2">
        2. <%=rs("option2")%><br />
        <input type="radio" name="answer" id="answer5" value="5">
        3. 完全记不清了<br />
        <input name="questionid" type="hidden" id="questionid" value="<%= i+40 %>" />
   		<input type="submit" value="提交" />
   </form>
    <% Else
	sql="Insert into answerlog(schoolid,questionid,answer) values('" & session("schoolid") & "',"  & i+40 & ","  & 0 & ")"
	conn.execute(sql)	
	response.Redirect("recall.asp?id="&i+1) 
	End If
Else %>
    <p><strong><%=rs("question")%></strong></p>
	<form action="recall_ok.asp" method="post">   
        <input type="radio" name="answer" id="answer" value="1">
        1. <%=rs("option1")%><br />
        <input type="radio" name="answer" id="answer2" value="2">
        2. <%=rs("option2")%><br />
        <input type="radio" name="answer" id="answer3" value="3">
        3. <%=rs("option3")%><br />
        <input type="radio" name="answer" id="answer4" value="4">
        4. <%=rs("option4")%><br />
        <input type="radio" name="answer" id="answer5" value="5">
        5. 完全同意<br />
        <input name="questionid" type="hidden" id="questionid" value="<%= i+40 %>" />
   		<input type="submit" value="提交" />
   </form>
<% End If %>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<%
rs.close
set rs=nothing
set conn=nothing
%>
</body>

</html>
