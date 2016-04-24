<!--#include file="conn.asp"-->
<%
if isempty(request.Form("answer")) then
	response.Write("<script>alert('«Î—°‘Ò“ªœÓ£°');history.go(-1);</script>")
	response.end()
end if

set rs=server.CreateObject("ADODB.recordset")
sql="Insert into answerlog(schoolid,questionid,answer) values('" & session("schoolid") & "',"  & cint(request.Form("questionid")) & ","  & cint(request.Form("answer")) & ")"
conn.execute(sql)
if isempty(session("visitedtime")) then
	session("visitedtime")=request.Form("pasttime")
else
	session("visitedtime")=session("visitedtime")&"/"&request.Form("pasttime")
end if
	
if cint(request.Form("quesno"))=quesnum then
	sql="update participant set visitednode" & session("judge") & "='" & session("visitednode") & "' where schoolid='" & cdbl(session("schoolid")) &"'"
	conn.execute(sql)
	sql="update participant set visitedtime" & session("judge") & "='" & session("visitedtime") & "' where schoolid='" & cdbl(session("schoolid")) &"'"
	conn.execute(sql)
	'period,return to intro
	session("period")=session("period")+1
	response.Write("<script>window.top.location.href('intro.asp'); </script> ")
else
	session("visitednode")=session("visitednode")&"/"
	quesno=cint(request.Form("quesno"))+1
	response.Redirect("top.asp?quesno="&quesno)
end if
conn.close
%>