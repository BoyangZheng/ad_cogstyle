<!--#include file="conn.asp"-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>查看结果</title>
<style type="text/css">
<!--
.mainfont {font-size: 12px}
-->
</style>
</head>

<body>
<p class="mainfont">说明1：四种实验材料（1：非洲，2：乐器，3：猫科，4：建筑）和四种实验条件（a:无，b：文本内，c:文本外，d:文本外悬浮）如下<br>
  组1：1a 2d 3c 4b<br>
  组2：2d 3c 4b 1a<br>
  组3：3c 4b 1a 2d<br>
组4：4b 1a 2d 3c</p>
<p class="mainfont">说明2：时间单位为s。</p>
<table border="0" class="mainfont">
  <col width="72" span="4">
  <col width="73">
  <col width="72" span="2">
  <col width="72" span="12">
  <tr height="18">
    <td height="18" align="center" bgcolor="#FFFF99">学号</td>
    <td align="center" bgcolor="#FFFF99">性别</td>
    <td align="center" bgcolor="#FFFF99">年龄</td>
    <td align="center" bgcolor="#FFFF99">组别</td>
    <td align="center" bgcolor="#FFFF99">访问节点数1</td>
    <td align="center" bgcolor="#FFFF99">访问节点数2</td>
    <td align="center" bgcolor="#FFFF99">访问节点数3</td>
    <td align="center" bgcolor="#FFFF99">访问节点数4</td>
    <td align="center" bgcolor="#FFFF99">重复节点数1</td>
    <td align="center" bgcolor="#FFFF99">重复节点数2</td>
    <td align="center" bgcolor="#FFFF99">重复节点数3</td>
    <td align="center" bgcolor="#FFFF99">重复节点数4</td>
    <td align="center" bgcolor="#FFFF99">搜索时间1</td>
    <td align="center" bgcolor="#FFFF99">搜索时间2</td>
    <td align="center" bgcolor="#FFFF99">搜索时间3</td>
    <td align="center" bgcolor="#FFFF99">搜索时间4</td>
    <td align="center" bgcolor="#FFFF99">访问节点数（总）</td>
    <td align="center" bgcolor="#FFFF99">重复节点数（总）</td>
    <td align="center" bgcolor="#FFFF99">搜索时间（总）</td>
<% for i=1 to quesnum*4 %>
    <td align="center" bgcolor="#FFCC33">时间<%= i %></td>
    <td align="center" bgcolor="#FFCC33">节点数<%= i %></td>
    <td align="center" bgcolor="#FFCC33">正确<%= i %></td>
<% Next 
for i=quesnum*4 to quesnum*4+20 %>
    <td align="center" bgcolor="#66FF00">正确<%= i %></td>
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
	Response.Write("男")
	else
	Response.Write("女")
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

