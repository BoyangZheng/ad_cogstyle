<%
	Connstr="driver={Microsoft Access Driver (*.mdb)};dbq="&Server.Mappath("db.mdb")
	Set conn = Server.CreateObject("ADODB.Connection")
	conn.open ConnStr
	
	const quesnum=10 'ÿ���ڵ����Ŀ��
'result.asp dim t(80) should be edited
	
 %>  

<%
'ת�庯��
function HTMLEncode(fString)
	if not isnull(fString) then
		dim s
		s=fString
		s = Replace(s,"&","&amp;")
		s = Replace(s,"<","&lt;")
		s = Replace(s,">","&gt;")
		s = Replace(s,"\t","    ")
		s = Replace(s,"\r\n","\n")
		s = Replace(s,"\n","<br>")
		s = Replace(s,"  "," &nbsp;")
		s = Replace(s,"'","&#39;")
		s = Replace(s,"\\","&#92;")
		s=replace(s," ","&nbsp;")
		s=replace(s,chr(13)&chr(10),"<Br>")
		HTMLEncode = s
	end if
end function
%>