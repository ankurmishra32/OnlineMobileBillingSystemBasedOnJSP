<html><%@ include file="Head.jsp"%><body>
<%@ include file="MobileDB.jsp"%>
<%
String st=request.getParameter("You");
String fn=request.getParameter("fname");
String mn=request.getParameter("mname");
String ln=request.getParameter("lname");
String ad1=request.getParameter("address1");
String ad2=request.getParameter("address2");
String cn=request.getParameter("loc");
String bd=request.getParameter("Birthday");
try
{
r=s.executeQuery("select * from Client where User='"+session.getAttribute("USER")+"'");
r.next();
{
s.executeUpdate("update Client set You='"+st+"',First='"+fn+"',Middle='"+mn+"',Last='"+ln+"',Address1='"+ad1+"',Address2='"+ad2+"',State='"+cn+"',Birthday='"+bd+"' where User='"+session.getAttribute("USER")+"'");
response.sendRedirect("welcome.jsp");
}}
catch(Exception ee)
{
out.println("Exception "+ee);
}%>
</body></html>