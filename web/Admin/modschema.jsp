<%@ include file="MobileDB.jsp"%>
<%String ID=(String)session.getAttribute("USER");%>
<html><%@ include file="Head.jsp"%><body>
	<P style="TEXT-ALIGN: center; MARGIN-BOTTOM: 0pt"><font color="#666600"><b><font size="6" face="Garamond">
	Welcome Administrator</font></b></font></P><br><span><span class="style3"><p align="right">You are login as 
	<%out.println(ID);%><a href="logout.jsp">logout</a></p></span></span><hr>
	<span><span class="style3"><p>Update/Delete any available Schema of Re-charge:-</p></span></span>
<form name="form7" method="post" action="updschema.jsp" onSubmit="return schemacheck()">
<TABLE border=0 cellSpacing=0 cellPadding=0 bordercolor="#000000">
<TR><TD><STRONG>Provide a Re-charge Amount (Rs.):</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Creamt>*</DIV></TD>
<TD><STRONG>Provide Talk Time Amount (Rs.):</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Cttamt>*</DIV></TD>
<TD><STRONG>Provide a time period for Validity (Days.):</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Catpfv>*</DIV></TD></TR>
<TR><TD><STRONG>Provide free Local Minutes:</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Cflocm value="0">*</DIV></TD>
<TD><STRONG>Provide free STD Minutes:</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Cfstdm value="0">*</DIV></TD>
<TD><STRONG>Provide free ISD Minutes:</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Cfisdm value="0">*</DIV></TD></TR>
<TR><TD><STRONG>Provide free Local SMS:</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Cflocs value="0">*</DIV></TD>
<TD><STRONG>Provide free STD SMS:</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Cfstds value="0">*</DIV></TD>
<TD><STRONG>Provide free ISD SMS:</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Cfisds value="0">*</DIV></TD></TR>
<TR><TD><STRONG>Provide Local Call Rate (Rs./min):</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Crloc value="0.50">*</DIV></TD>
<TD><STRONG>Provide STD Call Rate (Rs./min):</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Crstd value="0.50">*</DIV></TD>
<TD><STRONG>Provide ISD Call Rate (Rs./min):</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Crisd value="1">*</DIV></TD></TR>
<TR><TD><STRONG>Provide Local SMS Rate (Rs.):</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Srloc value="0.50">*</DIV></TD>
<TD><STRONG>Provide STD SMS Rate (Rs.):</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Srstd value="0.50">*</DIV></TD>
<TD><STRONG>Provide ISD SMS Rate (Rs.):</STRONG></TD><TD><DIV><INPUT size=20 type=text name=Srisd value="1">*</DIV></TD></TR></TABLE>
<br><P style="TEXT-ALIGN: center; MARGIN-BOTTOM: 0pt"><INPUT type=submit value="UPDATE"><INPUT type=reset value="DELETE"></P></form>
<script type="text/javascript">
function schemacheck()
{
if((document.form7.Creamt.value=="")||(isNaN(document.form7.Creamt.value)))
{
alert("Re-chage amount must be valid!!!");
return false;
}
if((document.form7.Cttamt.value=="")||(isNaN(document.form7.Cttamt.value)))
{
alert("Talk time amount must be valid!!!");
return false;
}
if((document.form7.Catpfv.value=="")||(isNaN(document.form7.Catpfv.value)))
{
alert("Time period for Validity must be require!!!");
return false;
}
if((document.form7.Crloc.value=="")||(isNaN(document.form7.Crloc.value)))
{
alert("Local Call Rate must be require!!!");
return false;
}
if((document.form7.Crstd.value=="")||(isNaN(document.form7.Crstd.value)))
{
alert("STD Call Rate must be require!!!");
return false;
}
if((document.form7.Crisd.value=="")||(isNaN(document.form7.Crisd.value)))
{
alert("ISD Call Rate must be require!!!");
return false;
}
if((document.form7.Srloc.value=="")||(isNaN(document.form7.Srloc.value)))
{
alert("Local SMS Rate must be require!!!");
return false;
}
if((document.form7.Srstd.value=="")||(isNaN(document.form7.Srstd.value)))
{
alert("STD SMS Rate must be require!!!");
return false;
}
if((document.form7.Srisd.value=="")||(isNaN(document.form7.Srisd.value)))
{
alert("ISD SMS Rate must be require!!!");
return false;
}}
</script>
<div class="footer">
<FONT size=-1><A href="about.jsp">About!</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="login.jsp">Home!</A> 
</FONT></div></body></html>