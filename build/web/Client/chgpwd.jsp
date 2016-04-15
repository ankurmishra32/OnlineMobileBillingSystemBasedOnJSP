<html><%@ include file="Head.jsp"%><body>
<%@ include file="MobileDB.jsp"%>
<%
String cp=request.getParameter("Curpwd");
String np=request.getParameter("Newpwd");
try
{
r=s.executeQuery("select * from Client where User='"+session.getAttribute("USER")+"'");
r.next();
{
if(cp.equals(r.getString("Password")))
{
s.executeUpdate("update Client set Password='"+np+"' where User='"+session.getAttribute("USER")+"'");%>
<script type="text/javascript">
alert("Your password is successfully changed!!!");
location.href="welcome.jsp";
</script>
<%}
else
{%>
<script type="text/javascript">
alert("Your current password does'nt MATCH!!!");
location.href="uppwd.jsp";
</script>
<%}}}
catch(Exception ee)
{
out.println("Exception "+ee);
}%>
</body></html>