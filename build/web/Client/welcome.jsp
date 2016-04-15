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
</span></span></H2><br><hr>
<h2><a href="uppwd.jsp">Click here to change your current password</a></h2>
<h2><a href="upacc.jsp">Click here to change your personal account setting</a></h2>
<h2>Re-charge your mobile number with available schema:-</h2><%@ include file="recharge.jsp"%>
<%}}}
catch(Exception ee)
{
out.println("Exception "+ee);
}%>
<div class="footer">
<FONT size=-1><A href="about.jsp">About!</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="login.jsp">Home!</A> 
</FONT></div></body></html>