<html><%@ include file="Head.jsp"%><body>
<%@ include file="MobileDB.jsp"%>
<%
String un=request.getParameter("User");
String mb=request.getParameter("Mobno");
String cn=request.getParameter("loc");
String sq=request.getParameter("sec");
String sa=request.getParameter("Secans");
try
{
r=s.executeQuery("select * from Client");
while(r.next())
{
if(mb.equals(r.getString("Mobile")))
{
rs=s.executeQuery("select User from Client where Mobile='"+mb+"'");
un=rs.getString("User");
}
if(un.equals(r.getString("User")))
{
if(cn.equals(r.getString("State")))
{
if(sq.equals(r.getString("Question")))
{
if(sa.equals(r.getString("Answer")))
{
session.setAttribute("USER",un);
response.sendRedirect("welcome.jsp");
}
%>
<script type="text/javascript">
alert("Answer of Security question does not match!!!");
location.href="recovery.jsp";
</script>
<%}
%>
<script type="text/javascript">
alert("Security question does not match!!!");
location.href="recovery.jsp";
</script>
<%}
%>
<script type="text/javascript">
alert("Your state does not match!!!");
location.href="recovery.jsp";
</script>
<%}
%>
<script type="text/javascript">
alert("Username or Mobile Number does not match!!!");
location.href="recovery.jsp";
</script>
<%}}
catch(Exception ee)
{
out.println("Exception "+ee);
}%>
</body></html>