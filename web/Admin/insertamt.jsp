<%@ include file="MobileDB.jsp"%>
<%String ID=(String)session.getAttribute("USER");%>
<html><%@ include file="Head.jsp"%><body>
	<P style="TEXT-ALIGN: center; MARGIN-BOTTOM: 0pt"><font color="#666600"><b><font size="6" face="Garamond">
	Welcome Administrator</font></b></font></P><br><span><span class="style3"><p align="right">You are login as 
	<%out.println(ID);%><a href="logout.jsp">logout</a></p></span></span><hr>
	<span><span class="style3"><p>Add Amount in any existing Customer's Account:-</p></span></span>
	<form name="form8" method="post" action="addamt.jsp" onSubmit="return oncheck()">
	<TABLE border=0 cellSpacing=0 cellPadding=0 bordercolor="#000000" alien="center">	
	<TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>The mobile number of Customer is:</FONT></STRONG></TD>
	<TD style="width: 500px" class="ms-simple1-left"><div><INPUT size=30 type=text name=Mobno style="width: 200px" value="+91-9999-000">
	*</div></TD></TR>
	<TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>The Amount added to Account:</FONT></STRONG></TD>
	<TD style="width: 500px" class="ms-simple1-left"><div><INPUT size=30 type=text name=amount style="width: 200px">
	*</div></TD></TR>
	<TR><TD vAlign=top noWrap class="ms-simple1-left"></TD><TD vAlign=top noWrap class="ms-simple1-left">
	<input type=submit value="Submit"><input type=reset value="Reset"></TD></TR></TABLE></form>
<script type="text/javascript">
function oncheck()
{
if((document.form8.Mobno.value.length!=15)||(document.form8.Mobno.value.substring(0,12)!='+91-9999-000'))
{
alert("Mobile number must be +91-9999-000*** for addition of amount...");
return false;
}
var u=document.form8.Mobno.value.substring(12);
if(isNaN(u)||u<0||u>999)
{
alert("Mobile number must be valid for registration...");
return false;
}
if(isNaN(document.form8.amount.value))
{
alert("Amount must be only numaric value for addition...");
return false;
}}
</script>
<div class="footer">
<FONT size=-1><A href="about.jsp">About!</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="login.jsp">Home!</A> 
</FONT></div></body></html>