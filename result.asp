<!--#include file="conn.asp"-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>�鿴���</title>
<style type="text/css">
<!--
.mainfont {font-size: 12px}
-->
</style>
</head>

<body>
<p class="mainfont">˵��1������ʵ����ϣ�1�����ޣ�2��������3��è�ƣ�4��������������ʵ��������a:�ޣ�b���ı��ڣ�c:�ı��⣬d:�ı�������������<br>
  ��1��1a 2d 3c 4b<br>
  ��2��2d 3c 4b 1a<br>
  ��3��3c 4b 1a 2d<br>
��4��4b 1a 2d 3c</p>
<p class="mainfont">˵��2��ʱ�䵥λΪs��</p>
<table border="0" class="mainfont">
  <col width="72" span="4">
  <col width="73">
  <col width="72" span="2">
  <col width="72" span="12">
  <tr height="18">
    <td height="18" align="center" bgcolor="#FFFF99">ѧ��</td>
    <td align="center" bgcolor="#FFFF99">�Ա�</td>
    <td align="center" bgcolor="#FFFF99">����</td>
    <td align="center" bgcolor="#FFFF99">���</td>
    <td align="center" bgcolor="#FFFF99">���ʽڵ���1</td>
    <td align="center" bgcolor="#FFFF99">���ʽڵ���2</td>
    <td align="center" bgcolor="#FFFF99">���ʽڵ���3</td>
    <td align="center" bgcolor="#FFFF99">���ʽڵ���4</td>
    <td align="center" bgcolor="#FFFF99">�ظ��ڵ���1</td>
    <td align="center" bgcolor="#FFFF99">�ظ��ڵ���2</td>
    <td align="center" bgcolor="#FFFF99">�ظ��ڵ���3</td>
    <td align="center" bgcolor="#FFFF99">�ظ��ڵ���4</td>
    <td align="center" bgcolor="#FFFF99">����ʱ��1</td>
    <td align="center" bgcolor="#FFFF99">����ʱ��2</td>
    <td align="center" bgcolor="#FFFF99">����ʱ��3</td>
    <td align="center" bgcolor="#FFFF99">����ʱ��4</td>
    <td align="center" bgcolor="#FFFF99">���ʽڵ������ܣ�</td>
    <td align="center" bgcolor="#FFFF99">�ظ��ڵ������ܣ�</td>
    <td align="center" bgcolor="#FFFF99">����ʱ�䣨�ܣ�</td>
<% for i=1 to quesnum*4 %>
    <td align="center" bgcolor="#FFCC33">ʱ��<%= i %></td>
    <td align="center" bgcolor="#FFCC33">�ڵ���<%= i %></td>
    <td align="center" bgcolor="#FFCC33">��ȷ<%= i %></td>
<% Next 
for i=quesnum*4 to quesnum*4+20 %>
    <td align="center" bgcolor="#66FF00">��ȷ<%= i %></td>
<% Next %>
    
  </tr>
<%
dim rs,sql
set rs=server.CreateObject("ADODB.recordset")
sql="select * from participant order by id"
rs.open sql,conn,1,3

i=1
while not rs.eof
%>
  <tr <% If i mod 2=0 Then %>bgcolor="#FFFFFF"<% Else %>bgcolor="#EEEEFF"<% End If %> height="18">
    <td height="18" align="center"><%=rs("schoolID")%></td>
    <td align="center">
	<%if rs("sex")=0 then
	Response.Write("��")
	else
	Response.Write("Ů")
	end if
	 %></td>
    <td align="center"><%= rs("age") %></td>
    <td align="center"><%= rs("sequence") %></td>

<%
'analysis the data
dim  t(80),n1(15),n2(15),n3(19),n4(15)

node1=rs("visitednode1")
time1=rs("visitedtime1")
node2=rs("visitednode2")
time2=rs("visitedtime2")
node3=rs("visitednode3")
time3=rs("visitedtime3")
node4=rs("visitednode4")
time4=rs("visitedtime4")

dim times1
times1=split(node1,"/")

%>

    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
<% for j=lbound(times1) to ubound(times1) %>
    <td align="center"><%= times1(j) %></td>
    <td align="center"></td>
    <td align="center"></td>
<% Next 
for j=quesnum*4 to quesnum*4+20 %>
    <td align="center"></td>
<% Next %>
  </tr>
<%
i=i+1
rs.movenext
wend%>  
</table>
<p>&nbsp;</p>
<p class="STYLE1">&nbsp;</p>
</body>

</html>

