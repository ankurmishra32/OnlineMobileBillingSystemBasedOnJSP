<%@ include file="MobileDB.jsp"%>
<%String ID=(String)session.getAttribute("USER");%>
<html><%@ include file="Head.jsp"%><body>
	<P style="TEXT-ALIGN: center; MARGIN-BOTTOM: 0pt"><font color="#666600"><b><font size="6" face="Garamond">
	Welcome Administrator</font></b></font></P><br><span><span class="style3"><p align="right">You are login as 
	<%out.println(ID);%><a href="logout.jsp">logout</a></p></span></span><hr>
	<span><span class="style3"><p>Available Schema for Mobile Re-charge are:-</p></span></span>
	<TABLE border=2 cellSpacing=0 cellPadding=0 bordercolor="#000000">
                    <TR>
                      <TD>Re-charge with Amount (Rs.)</TD>
                      <TD>Free Local Minutes</TD>
                      <TD>Free STD Minutes</TD>
                      <TD>Free ISD Minutes</TD>
                      <TD>Free Local SMS</TD>
                      <TD>Free STD SMS</TD>
                      <TD>Free ISD SMS</TD>
                      <TD>Local Call Rate (Rs./min)</TD>
                      <TD>STD Call Rate (Rs./min)</TD>
                      <TD>ISD Call Rate (Rs./min)</TD>
                      <TD>Local SMS Rate (Rs.)</TD>
                      <TD>STD SMS Rate (Rs.)</TD>
                      <TD>ISD SMS Rate (Rs.)</TD>
                      <TD>Valid for the Time Period (Days.)</TD>
                      <TD>Get Talk Time Amount (Rs.)</TD>
		    </TR>
<%try
{
r=s.executeQuery("select * from Schema");
while(r.next())
{
String amt=r.getString("Amount");
String loc=r.getString("Local");
String std=r.getString("STD");
String isd=r.getString("ISD");
String lsms=r.getString("LSMS");
String ssms=r.getString("SSMS");
String isms=r.getString("ISMS");
String crloc=r.getString("CRLOC");
String crstd=r.getString("CRSTD");
String crisd=r.getString("CRISD");
String srloc=r.getString("SRLOC");
String srstd=r.getString("SRSTD");
String srisd=r.getString("SRISD");
String vlidi=r.getString("Validity");
String prvid=r.getString("Provide");
out.println("<TR><TD>"+amt+"</TD><TD>"+loc+"</TD><TD>"+std+"</TD><TD>"+isd+"</TD><TD>"+lsms+"</TD><TD>"+ssms+"</TD><TD>"+isms+"</TD><TD>"+crloc+"</TD>");
out.println("<TD>"+crstd+"</TD><TD>"+crisd+"</TD><TD>"+srloc+"</TD><TD>"+srstd+"</TD><TD>"+srisd+"</TD><TD>"+vlidi+"</TD><TD>"+prvid+"</TD></TR>");}%>
</TABLE><hr>
<br><span class="style3"><a href="inschema.jsp">Add New Schema of Re-charge:-</a></span>
<br><span class="style3"><a href="modschema.jsp">Update/Delete any existing Schema of Re-charge:-</a></span>
<br><span class="style3"><a href="insertamt.jsp">Add Amount in any existing Customer's Account:-</a></span>
<%}
catch(Exception ee)
{
out.println("Exception "+ee);
}%>
<div class="footer">
<FONT size=-1><A href="about.jsp">About!</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="login.jsp">Home!</A> 
</FONT></div></body></html>