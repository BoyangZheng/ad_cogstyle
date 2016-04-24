<!--#include file="conn.asp"-->
<%
if isempty(request.Form("answer")) then
	response.Write("<script>alert('«Î—°‘Ò“ªœÓ£°');history.go(-1);</script>")
	response.end()
end if

set rs=server.CreateObject("ADODB.recordset")
i=cint(request.Form("questionid"))
sql="Insert into answerlog(schoolid,questionid,answer) values('" & session("schoolid") & "',"  & i & ","  & cint(request.Form("answer")) & ")"
conn.execute(sql)	
conn.close

if i<60 then
	response.Redirect("recall.asp?id="&i-40+1)
else
	response.Redirect("end.asp")
end if
%>