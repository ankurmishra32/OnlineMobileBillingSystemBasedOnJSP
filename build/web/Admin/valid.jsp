<html><%@ include file="Head.jsp"%><body>
<%@ include file="MobileDB.jsp"%>
<%
String mu=request.getParameter("User");
String mp=request.getParameter("Passwd");
try
{
r=s.executeQuery("select * from Admin");
while(r.next())
{
if(mu.equals(r.getString("User"))&&mp.equals(r.getString("Password")))
{
session.setAttribute("USER",mu);
response.sendRedirect("welcome.jsp");
}
else
{
flag=1;
}}}
catch(Exception ee)
{
out.println("Exception "+ee);
}
if(flag==1)
{%>
<script type="text/javascript">
alert("Username or Password were MISMATCH!!!");
location.href="login.jsp";
</script>
<%}%>
</body></html>