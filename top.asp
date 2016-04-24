<!--#include file="conn.asp"-->
<html>
<head>
<title>top</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
body {
	background-color: #D4D0C8;
}
.STYLE1 {font-size: 12px}
.STYLE2 {
	color: #000099;
	font-size: 12px;
}
.submit {
	font-size: 12px;
	border: 1px solid #FFCC00;
}

-->
</style>
<SCRIPT language=javascript>
var time_start = new Date();
var clock_start = time_start.getTime();
function show_secs () // show the time user spent on the side
{ 
	var time_now = new Date();
	var i_total_secs = Math.round((time_now.getTime() - clock_start)/1000); 
	document.form1.pasttime.value = i_total_secs ;
	window.setTimeout('show_secs()',1000); 
}
function click() {
	if (event.button==2) {
	alert('实验需要，禁止使用右键，谢谢！');
	}
//	if (event.KeyCode==116) {
//	alert('实验需要，禁止使用F5，谢谢！');
//	}
//	if (event.altKey==true）{
//	alert('实验需要，禁止使用Alt+Tab，谢谢！');
//	}
}
document.onKeyDown=click;
</SCRIPT> 

</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="window.setTimeout('show_secs()',1);">
<!-- ImageReady Slices (top.psd) -->
<table id="__01" width="999" height="80" border="0" cellpadding="0" cellspacing="0">
<tr>
		<td width="250" height="80" align="left" valign="top">
    <iframe width="250" height="80" frameborder=0 scrolling=no src="button.asp" name="button"></iframe></td>

<td>
        <form action="submit_ok.asp" method="post" name="form1" class="STYLE1">
	<span class="STYLE2">
	<%
	if isempty(request("quesno")) or cint(request("quesno"))<0 or cint(request("quesno"))>quesnum then
		response.write "<script>window.alert('发生错误！');history.go(-1);</script>"
		response.End()
	end if
	
	'session("quesno")=session("quesno")+1
	id=(session("judge")-1)*quesnum+cint(request("quesno"))
	set rs=server.CreateObject("ADODB.recordset")
	sql="select * from question where id="&id
	rs.open sql,conn,1,3
	response.Write(request("quesno")&". "&rs("question"))
	%>
	</span>	<br>
	<label>
	<input type="radio" name="answer" id="answer" value="1">
	1. <%=rs("option1")%></label>
	<label>
	<input type="radio" name="answer" id="answer2" value="2">
	2. <%=rs("option2")%></label>
	<label>
	<input type="radio" name="answer" id="answer3" value="3">
	3. <%=rs("option3")%></label>
	<label>
	<input type="radio" name="answer" id="answer4" value="4">
	4. <%=rs("option4")%></label><br>
	<label>
	<input name="submit" type="submit" id="button" value="提交">
	</label><input name="questionid" type="hidden" value="<%=id%>">
    <input name="quesno" type="hidden" value="<%=request("quesno")%>">
    <input name="pasttime" type="hidden" value="0">
      </form>
      <%rs.close
	  set rs=nothing
	  conn.close%>      </td>
  </tr>
</table>
<!-- End ImageReady Slices -->
</body>
</html>