<!--#include file="conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>建筑风格博览</title>


<link href="CSS/default.CSS" rel="stylesheet" type="text/css" />


<style type="text/css">
<!--
#ad1_1 {
	color: #333333;
	visibility: visible;
	clear: left;
}
#ad1_2 {
	color: #333333;
	visibility: visible;
	clear: left;
}
#ad2 {
	color: #333333;
	visibility: visible;
	width: 300px;
}
#ad3 {
	color: #333333;
	Z-INDEX: 2;
	POSITION: absolute;
	height: 300px;
}
-->
</style>

<SCRIPT language=javascript >
var start_pos=0;
function right_click() {
	if (event.button==2) {
	alert('实验需要，禁止使用右键，谢谢！');
	}
}
document.onmousedown=right_click;
</SCRIPT> 
</head>

<body>
<%
if isempty(request.QueryString("id")) then
	id=1
else
	id=cint(request.QueryString("id"))
end if

if session("thisnode")<>id then
	session("lastnode")=session("thisnode")
	session("thisnode")=id
	session("visitednode")=session("visitednode")&"|"&id
	response.Write("<script>window.parent.topFrame.button.location.reload(); </script> ")
end if

'if session("lastnode")=session("thisnode") then
	
'end if

set rs=server.CreateObject("ADODB.recordset")
sql="select * from article where web=4 and id="&id
rs.open sql,conn,1,3
%>



<table width="950" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2"><div align="center"><img src="images/banner4.jpg" alt="banner" width="950" height="180" /></div></td>
  </tr>
  <tr>
  	<td width="300" rowspan="2" align="center" valign="top" background="images/left4.jpg">
<%if session("judge2")=4 then%>
	  <script language="javascript"> 
var specialcode="<div id=\'ad3\'><br /><p><img src=\'images/ad42.jpg\' alt=\'6\' width=\'270\' height=\'70\' /></p><p><img src=\'images/ad44.jpg\' alt=\'8\' width=\'270\' height=\'70\' /></p><br  /></div>";

document.write(specialcode); 
var divTop =5;//图层的顶端高度，可以自己调的，要和图层的top对应 
function myload(){ 
	var t=0; 
	var l=0;
	if (navigator.appName == "Opera"||navigator.appName == "Netscape"){t=pageYOffset+window.innerHeight-130-25;l=pageXOffset+window.innerWidth-200-21;}
	else
	{
		var bdy;
		if (document.documentElement.clientWidth) 
			bdy=document.documentElement;
		else 
			bdy=document.body;
		t=bdy.scrollTop+186;
		l=bdy.scrollLeft+16;
	}
	t=t>0?t:0;
	l=l>0?l:0;
	document.getElementById("ad3").style.top =t+"px"; 
	document.getElementById("ad3").style.left=l+"px";

	setTimeout("myload();",50);
} 
//	var hei=parseInt(document.getElementById("ad3").style.height.toString().replace("px",""),10)+20;
//	document.getElementById("ad3").style.height=hei+"px";

	myload();

    </script>
<%end if
if session("judge2")=3 then%>
<div id="ad2"><p>&nbsp;</p>
<p><img src="images/ad42.jpg" alt="6" width="270" height="70" /></p>
<p><img src="images/ad44.jpg" alt="8" width="270" height="70" /></p>
<br  /></div>
<% end if %>
    </td>
    <td width="650" height="31" bgcolor="#FFFFFF"><strong>您现在所在的位置：
      <%
'response.write(rs("father"))
father=rs("father")
if father="0" then
	response.Write("<a target='_self' href='web4.asp?id=1'>"&"首页"&"</a>")
else
	nodes=split(father,"/")
	set rs2=server.CreateObject("ADODB.recordset")
	For j = LBound(nodes) To UBound(nodes)
		sql2="select * from article where web=4 and id="&nodes(j)
		rs2.open sql2,conn,1,3
		response.Write("<a target='_self' href='web4.asp?id="&nodes(j)&"'>"&rs2("pagename")&"</a>"&" -> ")
		rs2.close
    Next
	response.Write("<a target='_self' href='web4.asp?id="&id&"'>"&rs("pagename")&"</a>")
	set rs2=nothing
end if
%>
    </strong></td>
    
  </tr>
  <tr>
    <td width="650" align="left" valign="top" bgcolor="#FFFFFF"><br />
   	  <%=rs("field1")%>
   	  <br />
   	  <br />
<%if session("judge2")=2 then%>
      <div id="ad1_1">
        <div align="center"><img src="images/ad42.jpg" width="270" height="70" />&nbsp;  <img src="images/ad44.jpg" width="270" height="70" /></div>
      </div>
<% end if %>
      <br />
      <%=rs("field2")%>
      <br />
      <br />
<%if session("judge2")=2 then%>
      <div id="ad1_2"> 
        <div align="center">&nbsp;</div>
      </div>
<% end if %>
      <br />
    <%=rs("field3")%>      <br /></td>
  </tr>
  <tr>
    <td colspan="2">    <hr width="95%" align="center" />
      <p align="center" class="mainfont">copyright&copy;浙江大学心理与行为科学系 Power by JDStudio<br />
    <br />
    </p></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
set conn=nothing
%>
</body>
</html>
