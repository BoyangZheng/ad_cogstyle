<!--#include file="conn.asp"-->
<%
dim rs,sql
sex=request.Form("sex")
schoolID=request.Form("schID")
age=request.Form("age")
tele=request.Form("tele")
sparetime=request.Form("sparetime")

set rs=server.CreateObject("ADODB.recordset")
sql="select * from participant where schoolID='"&HTMLEncode(schoolID)&"'"
rs.open sql,conn,1,3

if not rs.eof then
	rs.close
	set rs=nothing
	response.write "<script>window.alert('此学号已登记！');history.go(-1);</script>"
	response.End()
else
	rs.addnew
	rs("schoolID")=HTMLEncode(schoolID)
	rs("sex")=HTMLEncode(sex)
	rs("age")=HTMLEncode(age)
	rs("tele")=HTMLEncode(tele)
	rs("sparetime")=HTMLEncode(sparetime)
'	rs("testtime")=now()
	
	set rs2=server.CreateObject("ADODB.recordset")
	rs2.open "select * from participant",conn,1,3
	sequence=rs2.recordcount mod 4 +1
	rs2.close
	
	rs("sequence")=sequence
'	session("sequence")=sequence
	rs.update
	rs.close
	set rs=nothing
end if
%>
<script>
window.alert('登记完成，谢谢！');
window.location.href("login.asp");
//window.close();
</script>
<%
'response.redirect("intro.asp")
conn.close
%>