<form name="form5" method="post" action="rechargemobile.jsp" onSubmit="return chargecheck()">
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
<%r2=s.executeQuery("select * from Schema");
while(r2.next())
{
String amt=r2.getString("Amount");
String loc=r2.getString("Local");
String std=r2.getString("STD");
String isd=r2.getString("ISD");
String lsms=r2.getString("LSMS");
String ssms=r2.getString("SSMS");
String isms=r2.getString("ISMS");
String crloc=r2.getString("CRLOC");
String crstd=r2.getString("CRSTD");
String crisd=r2.getString("CRISD");
String srloc=r2.getString("SRLOC");
String srstd=r2.getString("SRSTD");
String srisd=r2.getString("SRISD");
String vlidi=r2.getString("Validity");
String prvid=r2.getString("Provide");
out.println("<TR><TD>"+amt+"</TD><TD>"+loc+"</TD><TD>"+std+"</TD><TD>"+isd+"</TD><TD>"+lsms+"</TD><TD>"+ssms+"</TD><TD>"+isms+"</TD><TD>"+crloc+"</TD>");
out.println("<TD>"+crstd+"</TD><TD>"+crisd+"</TD><TD>"+srloc+"</TD><TD>"+srstd+"</TD><TD>"+srisd+"</TD><TD>"+vlidi+"</TD><TD>"+prvid+"</TD></TR>");}%>
</TABLE><hr><b>Enter the Re-charge Amount:</b>
<input type="text" name=rechamt><INPUT type=SUBMIT value="Re-charge"></form>
<script type="text/javascript">
function chargecheck()
{
if((document.form5.rechamt.value=="")||(isNaN(document.form5.rechamt.value)))
{
alert("You must enter correct amount of money to pay your bill");
return false;
}}
</script>