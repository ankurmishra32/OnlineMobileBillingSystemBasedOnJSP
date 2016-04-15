<html><%@ include file="Head.jsp"%><body>
<%@ include file="MobileDB.jsp"%>
<%
String mobno=request.getParameter("Mobno");
String amont=request.getParameter("amount");
try
{
r=s.executeQuery("select * from Validity where Mobile='"+mobno+"'");
r.next();
{
int amunt=Integer.parseInt(r.getString("Amount"))+Integer.parseInt(amont);
s.executeUpdate("update Validity set Amount="+amunt+" where Mobile='"+mobno+"'");%>
<script type="text/javascript">
alert("Amount is Successfully Added!!!");
location.href="insertamt.jsp";
</script>
<%}}
catch(Exception ee)
{
out.println("Exception "+ee);
}%>
</body></html>