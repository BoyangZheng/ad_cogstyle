<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<%
if cint(session("sequence"))=1 then
	if cint(session("period"))=1 then
		session("judge")=4
		session("judge2")=1
	end if
	if cint(session("period"))=2 then
		session("judge")=2
		session("judge2")=2
	end if
	if cint(session("period"))=3 then
		session("judge")=1
		session("judge2")=3
	end if
	if cint(session("period"))=4 then
		session("judge")=3
		session("judge2")=4
	end if
end if
if cint(session("sequence"))=2 then
	if cint(session("period"))=1 then
		session("judge")=1
		session("judge2")=2
	end if
	if cint(session("period"))=2 then
		session("judge")=3
		session("judge2")=1
	end if
	if cint(session("period"))=3 then
		session("judge")=4
		session("judge2")=4
	end if
	if cint(session("period"))=4 then
		session("judge")=2
		session("judge2")=3
	end if
end if
if cint(session("sequence"))=3 then
	if cint(session("period"))=1 then
		session("judge")=3
		session("judge2")=3
	end if
	if cint(session("period"))=2 then
		session("judge")=1
		session("judge2")=4
	end if
	if cint(session("period"))=3 then
		session("judge")=2
		session("judge2")=1
	end if
	if cint(session("period"))=4 then
		session("judge")=4
		session("judge2")=2
	end if
end if
if cint(session("sequence"))=4 then
	if cint(session("period"))=1 then
		session("judge")=2
		session("judge2")=4
	end if
	if cint(session("period"))=2 then
		session("judge")=4
		session("judge2")=3
	end if
	if cint(session("period"))=3 then
		session("judge")=3
		session("judge2")=2
	end if
	if cint(session("period"))=4 then
		session("judge")=1
		session("judge2")=1
	end if
end if
%>
<title>
<%
response.Write(session("schoolid")&",")
response.Write(session("sequence")&",")
response.Write(session("period")&",")
response.Write(judge&",")
response.Write(judge2)
%></title>
</head>

<frameset rows="80,*" frameborder="yes" border="0" framespacing="4">
  <frame src="top.asp?quesno=1" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frame src="web<%=session("judge")%>.asp?id=1" name="mainFrame" id="mainFrame" title="mainFrame" />
</frameset>
<noframes><body>
</body>
</noframes></html>
