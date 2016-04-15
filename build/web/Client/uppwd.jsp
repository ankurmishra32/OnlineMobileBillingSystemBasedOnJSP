<%@ include file="MobileDB.jsp"%>
<%
String ID=(String)session.getAttribute("USER");
try
{
r=s.executeQuery("select * from Client where User='"+ID+"'");
r.next();
{
String un=r.getString("User");
String fn=r.getString("First");
String ln=r.getString("Last");
String mb=r.getString("Mobile");
r1=s.executeQuery("select * from Validity where Mobile='"+mb+"'");
r1.next();
{
String amnt=r1.getString("Amount");
String bala=r1.getString("Balance");
String vloc=r1.getString("Local");
String vstd=r1.getString("STD");
String visd=r1.getString("ISD");
String lsmv=r1.getString("LSMS");
String ssmv=r1.getString("SSMS");
String ismv=r1.getString("ISMS");
String stfm=r1.getString("Startfrom");%>
<html><%@ include file="Head.jsp"%><body>&nbsp;<H2 class="style2">&nbsp;<span><span class="style3"><font color="#666600">
Welcome <b><%out.println(fn);%> <%out.println(ln);%></b>, Your Username is <b><%out.println(un);%></b>, Your mobile number is: 
<b><%out.println(mb);%></b>, Total amount in your account: Rupees.<b><%out.println(amnt);%> </b><a href="logout.jsp">logout</a>
<br>&nbsp; Your Mobile Balance is: Rupees.<%out.println(bala);%>Total Local Minutes: <%out.println(vloc);%>, Total STD Minutes:
<%out.println(vstd);%>, Total ISD Minutes: <%out.println(visd);%>, Total Local SMS: <%out.println(lsmv);%>, Total STD SMS: 
<%out.println(ssmv);%>, Total ISD SMS: <%out.println(ismv);%><br>&nbsp; and Last Rechage is on: <%out.println(stfm);%></font>
</span></span></H2><br><hr><span><span class="style3">
<form name="form3" method="post" action="chgpwd.jsp" onSubmit="return uppass()">
        <TABLE border=0 cellSpacing=0 cellPadding=0 bordercolor="#000000" align=center>
                    <TR>
                      <TD vAlign=top noWrap class="ms-simple1-left"><STRONG>Enter current password:</STRONG></TD>
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV>
							<INPUT size=30 type=password name=Curpwd style="width: 200px"><br>
						</DIV></TD></TR>
                    <TR>
                      <TD vAlign=top noWrap class="ms-simple1-left"><STRONG>Choose a new password:</STRONG></TD>
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV>
							<INPUT size=30 type=password name=Newpwd style="width: 200px"><br>
						</DIV></TD></TR>
                    <TR>
                      <TD vAlign=top noWrap class="ms-simple1-left"><STRONG>Re-enter new password:</STRONG></TD>
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV>
							<INPUT size=30 type=password name=Rentpwd style="width: 200px"><br>
						</DIV></TD></TR>
                    <TR>
                      <TD vAlign=top noWrap class="ms-simple1-left"></TD><TD vAlign=top noWrap class="ms-simple1-left">
		      <INPUT type=SUBMIT value="UPDATE"><INPUT type=RESET value="RESET"></TD></TR>
</TABLE></form></span></span>
<script language="javascript">
function uppass()
{
if(document.form3.Curpwd.value=="")
{
alert("Current password required !!!");
return false;
}
if(document.form3.Newpwd.value.length<=5)
{
alert("New password must be minimum of 6 character!!!");
return false;
}
if(document.form3.Newpwd.value!=document.form3.Rentpwd.value)
{
alert("Re-enter Password with carefully!!!");
return false;
}}
</script>
<%}}}
catch(Exception ee)
{
out.println("Exception "+ee);
}%>
<div class="footer">
<FONT size=-1><A href="about.jsp">About!</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="login.jsp">Home!</A> 
</FONT></div></body></html>