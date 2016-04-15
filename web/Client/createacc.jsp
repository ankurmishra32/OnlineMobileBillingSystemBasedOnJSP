<html><%@ include file="Head.jsp"%><body>
<%@ include file="MobileDB.jsp"%>
<%
String un=request.getParameter("User");
String pw=request.getParameter("Passwd");
String st=request.getParameter("You");
String fn=request.getParameter("fname");
String mn=request.getParameter("mname");
String ln=request.getParameter("lname");
String ad1=request.getParameter("address1");
String ad2=request.getParameter("address2");
String cn=request.getParameter("loc");
String bd=request.getParameter("Birthday");
String sq=request.getParameter("sec");
String sa=request.getParameter("Secans");
String mb=request.getParameter("Mobno");
try
{
r=s.executeQuery("select * from Client");
while(r.next())
{
if(un.equals(r.getString("User")))
{
flag=1;%>
<script type="text/javascript">
alert("Username is already exist, Choose diffrent username!!!");
location.href="signup.jsp";
</script>
<%}
if(mb.equals(r.getString("Mobile")))
{
flag=1;%>
<script type="text/javascript">
alert("Another user use same mobile number!!!");
location.href="signup.jsp";
</script>
<%}}
r1=s.executeQuery("select * from Validity");
while(r1.next())
{
if(mb.equals(r1.getString("Mobile")))
{
if(flag==0)
{
s.executeUpdate("insert into Client(User,Password,You,First,Middle,Last,Address1,Address2,State,Birthday,Question,Answer,Mobile) values('"+un+"','"+pw+"','"+st+"','"+fn+"','"+mn+"','"+ln+"','"+ad1+"','"+ad2+"','"+cn+"','"+bd+"','"+sq+"','"+sa+"','"+mb+"')");
session.setAttribute("USER",un);
response.sendRedirect("welcome.jsp");
}}%>
<script type="text/javascript">
alert("Mobile number is not valid as it seems to be!!!");
location.href="signup.jsp";
</script>
<%}}
catch(Exception ee)
{
out.println("Exception "+ee);
}%>
</body></html>