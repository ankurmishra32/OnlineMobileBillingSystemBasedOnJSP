<html>
<%@ include file="Head.jsp"%>
<%@ include file="noCache.jsp"%>
<body>
	<FONT size=5><P><B>Online Mobile Re-charge System approach to re-charging of Mobile.</B></P></FONT>
      <P style="TEXT-ALIGN: left; MARGIN-BOTTOM: 0pt"><FONT size=-1><FONT size=4>
		Online Mobile Re-charge System is built on the idea that mobile can be re-charged anywhere in emergency 
		with choice of schemes provided by service provider with some free Local, S.T.D. and I.S.D. Minutes with
		some free S.M.S. if available in the schema which user choose.<br></FONT>
	<P style="TEXT-ALIGN: center; MARGIN-BOTTOM: 0pt"><font color="#666600"><b>
	<font size="6" face="Garamond">Welcome Administrator</font></b></font></P><br>
	<form name="form1" method="post" action="valid.jsp" onSubmit="return check()">
	 <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
	  bordercolor="#000000" width="300" align=center>
        <TR>
          <TD colSpan=2 align=center>
	  <p align="center" class="style4"><font color="#FF0000">Please Login to 
		Continue</font></p>
			</TD></TR>
        <TR>
          <TD>
            <DIV align=right><b>Username:</b></DIV></TD>
          <TD><INPUT TYPE=text size=18 name=User>&nbsp;&nbsp; </TD></TR>
        <TR>
          <TD>
	    <DIV align=right><b>Password:</b></DIV></TD>
          <TD><INPUT TYPE=password size=18 name=Passwd> </TD></TR>
        <TR>
          <TD></TD><TD><INPUT type=submit value="Login"  name=Login>
	  <INPUT type=reset value="Cancel"  name=Cancel></TD></TR></TABLE></form></FONT></P>
<script type="text/javascript">
function check()
{
if(document.form1.User.value=="")
{
alert("Username must be require!!!")
return false;
}
if(document.form1.Passwd.value=="")
{
alert("Password must be require!!!")
return false;
}}
</script>
<div class="footer">
<A href="about.jsp"><span class="style3">About!</span></A><span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><A href="login.jsp"><span class="style3">Home!</span></A><FONT size=-1> 
</FONT></div></body></html>