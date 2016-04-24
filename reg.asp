<html>
<head>
<title>欢迎参加心理学实验！</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.mainfont {	font-size: 12px;
}
input {
	font-size: 12px;
}
-->
</style>
<script language="javascript">
function submit_onclick()
{
	var errnum=0;
	Emailvalid="abcdefghijklmnopqrstuvwxyz0123456789@.-";
	SchoolIDvalid="abcdefghijklmnopqrstuvwxyz0123456789";
	Numbervalid="0123456789";
/*手机*/
	if (f1.tele.value.length>15&&f1.tele.value.length<8) errnum=9;
	else
	{	
		for (var i=0; i < f1.tele.value.length; i++) 
		{
			var letter = f1.tele.value.charAt(i).toLowerCase();
			
			if (Numbervalid.indexOf(letter) != -1)
			continue;
			errnum=9;
			break;
		}
	}
	if (f1.tele.value == "") errnum=8;
/*学号*/
	for (var i=0; i < f1.schid.value.length; i++) 
	{
		var letter = f1.schid.value.charAt(i).toLowerCase();
		
		if (SchoolIDvalid.indexOf(letter) != -1)
		continue;
		errnum=5;
		break;
	}
	if (f1.schid.value == "") errnum=4;
//年龄
	if (f1.age.value =="" || parseInt(f1.age.value)>30 || parseInt(f1.age.value)<15) errnum=12
//sex	
	if (f1.sex.value =="") errnum=14;

	switch(errnum)
	{
		case 0:f1.submit();break;
		//case 1:alert("请填写姓名！");break;
		case 4:alert("请填写学号！");break;
		case 5:alert("学号不正确！");break;
		case 8:alert("请填写手机号码！");break;
		case 9:alert("手机号码不正确");break;
		case 12:alert("年龄不正确");break;
	} 
}
</script>

</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!-- ImageReady Slices (招人.psd) -->
<table width="600" height="450" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
<tr>
		<td colspan="3">
			<img src="images/reg_01.jpg" width="600" height="163" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/reg_02.jpg" width="171" height="287" alt=""></td>
		<td width="276" height="206" background="images/reg_03.gif"><form id="f1" name="f1" method="post" action="reg_ok.asp" >
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="mainfont">
            <tr>
              <td width="90" height="24" align="right">您的学号：</td>
              <td width="186" align="left"><input name="schid" type="text" id="schid" size="13" maxlength="10" />              </td>
            </tr>
            <tr>
              <td height="24" align="right">您的性别： </td>
              <td align="left"><input name="sex" type="radio" id="sex" value="0" checked="CHECKED" />
                男
                <input type="radio" name="sex" id="sex2" value="1" />
                女</td>
            </tr>
            <tr>
              <td height="24" align="right">您的年龄： </td>
              <td align="left"><input name="age" type="text" id="age" size="13" maxlength="2" />              </td>
            </tr>
            <tr>
              <td height="24" align="right">手机号码： </td>
              <td align="left"><input name="tele" type="text" id="tele" size="13" maxlength="20" /></td>
            </tr>
            <tr>
              <td height="24" align="right">空余时间： </td>
              <td align="left"><textarea name="sparetime" id="sparetime" cols="25" rows="2"></textarea></td>
            </tr>
          </table>
		  </label>
          <p align="center">
            <input type="button" name="button" id="button" value="登记完成" onClick="submit_onclick()" />
          </p>
	    </form></td>
<td rowspan="2">
			<img src="images/reg_04.jpg" width="153" height="287" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/reg_05.jpg" width="276" height="81" alt=""></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
</body>
</html>