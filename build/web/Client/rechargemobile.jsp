<html><%@ include file="Head.jsp"%><body>
<%@ include file="MobileDB.jsp"%>
<%
java.util.Date dt=new java.util.Date();
String time=dt.toString();
String mont=time.substring(4,7);
String date=time.substring(7,11);
String year=time.substring((time.length())-5);
String reamnt=request.getParameter("rechamt");
String ID=(String)session.getAttribute("USER");
time=mont+date+year;
try
{
r=s.executeQuery("select * from Client where User='"+ID+"'");
r.next();
{
String mb=r.getString("Mobile");
r1=s.executeQuery("select * from Schema where Amount='"+reamnt+"'");
r1.next();
{
String loc=r1.getString("Local");
String std=r1.getString("STD");
String isd=r1.getString("ISD");
String sloc=r1.getString("LSMS");
String sstd=r1.getString("SSMS");
String sisd=r1.getString("ISMS");
String vald=r1.getString("Validity");
String prvd=r1.getString("Provide");
r2=s.executeQuery("select * from Validity where Mobile='"+mb+"'");
r2.next();
{
int amunt=Integer.parseInt(r2.getString("Amount"))-Integer.parseInt(reamnt);
int balac=Integer.parseInt(r2.getString("Balance"))+Integer.parseInt(prvd);
int floc=Integer.parseInt(r2.getString("Local"))+Integer.parseInt(loc);
int fstd=Integer.parseInt(r2.getString("STD"))+Integer.parseInt(std);
int fisd=Integer.parseInt(r2.getString("ISD"))+Integer.parseInt(isd);
int lsms=Integer.parseInt(r2.getString("LSMS"))+Integer.parseInt(sloc);
int ssms=Integer.parseInt(r2.getString("SSMS"))+Integer.parseInt(sstd);
int isms=Integer.parseInt(r2.getString("ISMS"))+Integer.parseInt(sisd);
s.executeUpdate("update Validity set Amount="+amunt+",Balance="+balac+",Local="+floc+",STD="+fstd+",ISD="+fisd+",LSMS="+lsms+",SSMS="+ssms+",ISMS="+isms+",Startfrom='"+time+"',Schema='"+reamnt+"' where Mobile='"+mb+"'");
%><script type="text/javascript">
alert("Your Mobile is successfully re-charged!!!");
location.href="welcome.jsp";
</script>
<%}}}}
catch(Exception ee)
{out.println("Exception "+ee);}%>
</body></html>