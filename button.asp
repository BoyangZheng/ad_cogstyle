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
	alert('ʵ����Ҫ����ֹʹ���Ҽ���лл��');
	}
	if (event.KeyCode==8) {
	alert('ʵ����Ҫ����ֹʹ��F5��лл��');
	}
//	if (event.altKey==true��{
//	alert('ʵ����Ҫ����ֹʹ��Alt+Tab��лл��');
//	}

}
document.onkeydown=click;
document.onmousedown=click;
</SCRIPT> 
<a href="web<%=session("judge")%>.asp?id=<%=session("lastnode")%>" target="mainFrame"><img src="images/top_01.gif" alt="" width="120" height="80" border="0"></a><a href="web<%=session("judge")%>.asp?id=1" target="mainFrame"><img src="images/top_02.gif" alt="" width="117" height="80" border="0"></a>