<!--#include file="conn.asp"-->
<%
dim rs,sql
schoolID=request.Form("schID")

set rs=server.CreateObject("ADODB.recordset")
sql="select * from participant where schoolID='"&HTMLEncode(schoolID)  &"'"
rs.open sql,conn,1,3

if rs.eof then
	rs.close
	set rs=nothing
	response.write "<script>window.alert('此学号未登记！');history.go(-1);</script>"
	response.End()
else
	if rs("testtime") then
		response.write "<script>window.alert('此学号已测试过！');history.go(-1);</script>"
		response.End()
	end if

	rs("testtime")=now()
	
'	set rs2=server.CreateObject("ADODB.recordset")
'	sql2="select * from participant where sequence is not null"
'	rs2.open sql2,conn,1,3
'	sequence=(rs2.recordcount mod 4) +1
'	rs2.close
'	
'	rs("sequence")=sequence
	sequence=rs("sequence")
	
	rs.update
	rs.close
	set rs=nothing
end if

session("schoolid")=schoolID
session("sequence")=sequence
session("period")=1
%>
<script>
window.open("pre_frame.asp","intro","toolbar=0,location=0,directories=0,status=0,menubar=0,height=768,fullscreen=1,width=1100,scrollbars=1,resizable=0");
</script>
实验网站已在新页面打开！
<%
session("last")="pre_intro.asp"
session("firstv")="1"
%>
<%
'response.redirect("intro.asp")
conn.close
%>