<html><%@ include file="Head.jsp"%><body>
<%@ include file="MobileDB.jsp"%>
<%
String amot=request.getParameter("Creamt");
String prov=request.getParameter("Cttamt");
String tvld=request.getParameter("Catpfv");
String locm=request.getParameter("Cflocm");
String stdm=request.getParameter("Cfstdm");
String isdm=request.getParameter("Cfisdm");
String locs=request.getParameter("Cflocs");
String stds=request.getParameter("Cfstds");
String isds=request.getParameter("Cfisds");
String cloc=request.getParameter("Crloc");
String cstd=request.getParameter("Crstd");
String cisd=request.getParameter("Crisd");
String sloc=request.getParameter("Srloc");
String sstd=request.getParameter("Srstd");
String sisd=request.getParameter("Srisd");
try
{
r=s.executeQuery("select * from Schema");
while(r.next())
{
if(amot.equals(r.getString("Amount")))
{
flag=1;%>
<script type="text/javascript">
alert("Re-charge type of same amount is already exist!!!");
location.href="inschema.jsp";
</script>
<%}}
if(flag==0)
{
s.executeUpdate("insert into Schema(Amount,Local,STD,ISD,LSMS,SSMS,ISMS,CRLOC,CRSTD,CRISD,SRLOC,SRSTD,SRISD,Validity,Provide) values('"+amot+"','"+locm+"','"+stdm+"','"+isdm+"','"+locs+"','"+stds+"','"+isds+"','"+cloc+"','"+cstd+"','"+cisd+"','"+sloc+"','"+sstd+"','"+sisd+"','"+tvld+"','"+prov+"')");
response.sendRedirect("welcome.jsp");
}}
catch(Exception ee)
{
out.println("Exception "+ee);
}%>
</body></html>