<html>
<head>
<title>��ӭ�μ�����ѧʵ�飡</title>
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
/*�ֻ�*/
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
/*ѧ��*/
	for (var i=0; i < f1.schid.value.length; i++) 
	{
		var letter = f1.schid.value.charAt(i).toLowerCase();
		
		if (SchoolIDvalid.indexOf(letter) != -1)
		continue;
		errnum=5;
		break;
	}
	if (f1.schid.value == "") errnum=4;
//����
	if (f1.age.value =="" || parseInt(f1.age.value)>30 || parseInt(f1.age.value)<15) errnum=12
//sex	
	if (f1.sex.value =="") errnum=14;

	switch(errnum)
	{
		case 0:f1.submit();break;
		//case 1:alert("����д������");break;
		case 4:alert("����дѧ�ţ�");break;
		case 5:alert("ѧ�Ų���ȷ��");break;
		case 8:alert("����д�ֻ����룡");break;
		case 9:alert("�ֻ����벻��ȷ");break;
		case 12:alert("���䲻��ȷ");break;
	} 
}
</script>

</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!-- ImageReady Slices (����.psd) -->
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
              <td width="90" height="24" align="right">����ѧ�ţ�</td>
              <td width="186" align="left"><input name="schid" type="text" id="schid" size="13" maxlength="10" />              </td>
            </tr>
            <tr>
              <td height="24" align="right">�����Ա� </td>
              <td align="left"><input name="sex" type="radio" id="sex" value="0" checked="CHECKED" />
                ��
                <input type="radio" name="sex" id="sex2" value="1" />
                Ů</td>
            </tr>
            <tr>
              <td height="24" align="right">�������䣺 </td>
              <td align="left"><input name="age" type="text" id="age" size="13" maxlength="2" />              </td>
            </tr>
            <tr>
              <td height="24" align="right">�ֻ����룺 </td>
              <td align="left"><input name="tele" type="text" id="tele" size="13" maxlength="20" /></td>
            </tr>
            <tr>
              <td height="24" align="right">����ʱ�䣺 </td>
              <td align="left"><textarea name="sparetime" id="sparetime" cols="25" rows="2"></textarea></td>
            </tr>
          </table>
		  </label>
          <p align="center">
            <input type="button" name="button" id="button" value="�Ǽ����" onClick="submit_onclick()" />
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