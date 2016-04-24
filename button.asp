<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	background-color: #D4D0C8;
}
-->
</style>
<SCRIPT language=javascript>
function click() {
	if (event.button==2) {
	alert('实验需要，禁止使用右键，谢谢！');
	}
	if (event.KeyCode==8) {
	alert('实验需要，禁止使用F5，谢谢！');
	}
//	if (event.altKey==true）{
//	alert('实验需要，禁止使用Alt+Tab，谢谢！');
//	}

}
document.onkeydown=click;
document.onmousedown=click;
</SCRIPT> 
<a href="web<%=session("judge")%>.asp?id=<%=session("lastnode")%>" target="mainFrame"><img src="images/top_01.gif" alt="" width="120" height="80" border="0"></a><a href="web<%=session("judge")%>.asp?id=1" target="mainFrame"><img src="images/top_02.gif" alt="" width="117" height="80" border="0"></a>