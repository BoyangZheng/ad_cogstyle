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
		<td width="250" height="80" align="left" valign="top"><a href="<%= session("last")%>" target="mainFrame"><img src="images/top_01.gif" alt="" width="120" height="80" border="0"></a><a href="pre_intro.asp" target="mainFrame"><img src="images/top_02.gif" alt="" width="117" height="80" border="0"></a></td>

<td>
        <form action="pre_top_2.asp" method="post" name="form1" class="STYLE1">
	<span class="STYLE2">
	1. 这一区域为回答区，需要您在如下网站正文中找到所问问题的答案，然后在此处回答	</span>	<br>
	<label>
	<input name="answer" type="radio" id="answer" value="1" checked>
	1. 我已经知道了</label>
	<label>
	<input type="radio" name="answer" id="answer2" value="2">
	2. 看了下面的介绍后我知道了</label>
	<label></label><label></label>
	<br>
	<label>
	<input name="submit" type="submit" id="button" value="提交">
	</label><input name="questionid" type="hidden" value="<%=id%>">
    <input name="quesno" type="hidden" value="<%=request("quesno")%>">
    <input name="pasttime" type="hidden" value="0">
      </form>
     </td>
  </tr>
</table>
<!-- End ImageReady Slices -->
</body>
</html>