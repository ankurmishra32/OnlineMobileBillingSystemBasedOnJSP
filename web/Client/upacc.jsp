<%@ include file="MobileDB.jsp"%>
<%
String ID=(String)session.getAttribute("USER");
try
{
r=s.executeQuery("select * from Client where User='"+ID+"'");
r.next();
{
String un=r.getString("User");
String st=r.getString("You");
String fn=r.getString("First");
String mn=r.getString("Middle");
String ln=r.getString("Last");
String ad1=r.getString("Address1");
String ad2=r.getString("Address2");
String cn=r.getString("State");
String bd=r.getString("Birthday");
String mb=r.getString("Mobile");
r1=s.executeQuery("select * from Validity where Mobile='"+mb+"'");
r1.next();
{
String amnt=r1.getString("Amount");
String bala=r1.getString("Balance");
String vloc=r1.getString("Local");
String vstd=r1.getString("STD");
String visd=r1.getString("ISD");
String lsmv=r1.getString("LSMS");
String ssmv=r1.getString("SSMS");
String ismv=r1.getString("ISMS");
String stfm=r1.getString("Startfrom");%>
<html><%@ include file="Head.jsp"%><body>&nbsp;<H2 class="style2">&nbsp;<span><span class="style3"><font color="#666600">
Welcome <b><%out.println(fn);%> <%out.println(ln);%></b>, Your Username is <b><%out.println(un);%></b>, Your mobile number is: 
<b><%out.println(mb);%></b>, Total amount in your account: Rupees.<b><%out.println(amnt);%> </b><a href="logout.jsp">logout</a>
<br>&nbsp; Your Mobile Balance is: Rupees.<%out.println(bala);%>Total Local Minutes: <%out.println(vloc);%>, Total STD Minutes:
<%out.println(vstd);%>, Total ISD Minutes: <%out.println(visd);%>, Total Local SMS: <%out.println(lsmv);%>, Total STD SMS: 
<%out.println(ssmv);%>, Total ISD SMS: <%out.println(ismv);%><br>&nbsp; and Last Rechage is on: <%out.println(stfm);%></font>
</span></span></H2><br><hr>
<form name="form4" method="post" action="modifyacc.jsp" onSubmit="return check()">
<TABLE border=0 cellSpacing=0 cellPadding=0 bordercolor="#000000"  align=center>
	<TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG>Your complete name is:</STRONG></TD>
		<TD style="width: 500px" class="ms-simple1-left"><DIV><SELECT name=You><OPTION value="<%out.println(st);%>">
		<%out.println(st);%></OPTION><OPTION value="Mr.">Mr.</OPTION><OPTION value="Ms.">Ms.</OPTION>
		<OPTION value="Mrs.">Mrs.</OPTION></SELECT><INPUT maxLength=20 size=15 name=fname value="<%out.println(fn);%>" style="width: 110px">*
		<INPUT maxLength=20 size=12 name=mname value="<%out.println(mn);%>" style="width: 110px">&nbsp;
			<INPUT maxLength=20 size=20 name=lname value="<%out.println(ln);%>" style="width: 110px">*</DIV>
		<FONT color=#6f6f6f size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Middle Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name</FONT></TD></TR>
	<TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG>Your permanent address is:</STRONG></TD>
		<TD style="width: 500px" class="ms-simple1-left"><DIV>
			<INPUT maxLength=70 size=70 name=address1 value="<%out.println(ad1);%>" style="width: 400px">*<BR>
			<INPUT maxLength=70 size=70 name=address2 value="<%out.println(ad2);%>" style="width: 400px"></DIV>
		<FONT color=#6f6f6f size=2>Address should consist of city where you live.</FONT></TD></TR>
	<TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG>The state where you live is:</STRONG></TD>
	    <TD style="width: 500px" class="ms-simple1-left"><div>
	      <select name="loc" style="width: 200px">
			<option value="<%out.println(cn);%>"><%out.println(cn);%></option>
			<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
  			<option value="Andra Pradesh">Andra Pradesh</option>
  			<option value="Arunachal Pradesh">Arunachal Pradesh</option>
  			<option value="Assam">Assam</option>
			<option value="Bihar">Bihar</option>
			<option value="Chandigarh">Chandigarh</option>
			<option value="Chhattisgarh">Chhattisgarh</option>
			<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
			<option value="Daman and Diu">Daman and Diu</option>
			<option value="Delhi">Delhi</option>
			<option value="Goa">Goa</option>
			<option value="Gujarat">Gujarat</option>
			<option value="Haryana">Haryana</option>
			<option value="Himachal Pradesh">Himachal Pradesh</option>
			<option value="Jammu and Kashmir">Jammu and Kashmir</option>
			<option value="Jharkhand">Jharkhand</option>
			<option value="Karnataka">Karnataka</option>
			<option value="Kerala">Kerala</option>
			<option value="Lakshadeep">Lakshadeep</option>
			<option value="Madya Pradesh">Madya Pradesh</option>
			<option value="Maharashtra">Maharashtra</option>
			<option value="Manipur">Manipur</option>
			<option value="Meghalaya">Meghalaya</option>
			<option value="Mizoram">Mizoram</option>
			<option value="Nagaland">Nagaland</option>
			<option value="Orissa">Orissa</option>
			<option value="Pondicherry">Pondicherry</option>
			<option value="Punjab">Punjab</option>
			<option value="Rajasthan">Rajasthan</option>
			<option value="Sikkim">Sikkim</option>
			<option value="Tamil Nadu">Tamil Nadu</option>
			<option value="Tripura">Tripura</option>
			<option value="Uttaranchal">Uttaranchal</option>
			<option value="Uttar Pradesh">Uttar Pradesh</option>
			<option value="West Bengal">West Bengal</option>
	      </select></div><BR></TD></TR>
	<TR><TD vAlign=top noWrap class="ms-simple1-left" style="height: 38px"><STRONG>Your birthday is:</STRONG></TD>
  		<TD style="width: 500px; height: 38px;" class="ms-simple1-left"><div>
			<input name=Birthday size="30" type="text" value=<%out.println(bd);%> style="width: 200px"></div>
		<FONT color=#6f6f6f size=2>MM/DD/YYYY (e.g. "06/02/1990").</FONT></TD></TR>
        <TR><TD vAlign=top noWrap class="ms-simple1-left"></TD><TD vAlign=top noWrap class="ms-simple1-left">
		<INPUT type=SUBMIT value="UPDATE"><INPUT type=RESET value="RESET"></TD></TR>
</TABLE></form>
<script type="text/javascript">
function check()
{
if(document.form4.fname.value=="")
{
alert("You must enter your first name to continue...");
return false;
}
if(document.form4.lname.value=="")
{
alert("You must enter your last name to continue...");
return false;
}
if(document.form4.address1.value=="")
{
alert("Atleast One address is require to continue...");
return false;
}
if(document.form4.Birthday.value=="")
{
alert("Your birthday is require for continue...");
return false;
}
if(document.form4.Birthday.value.length!=10||document.form4.Birthday.value.charAt(2)!='/'||document.form4.Birthday.value.charAt(5)!='/')
{
alert("Enter your birthday in MM/DD/YYYY format!!!");
return false;
}
var x=(document.form4.Birthday.value.substring(0,2));
var y=(document.form4.Birthday.value.substring(3,5));
var z=(document.form4.Birthday.value.substring(6));
if((isNaN(x))||(isNaN(y))||(isNaN(z))||(x<0||x>12)||(y<0||y>31)||z<1800)
{
alert("Your birthday must be valid!!!");
return false;
}
switch(x)
{
case "04": 
case "06":
case "09": 
case "11":  
if(y==31)
{ 
alert("Your birthday must be valid!!!");
return false;
}
break;
case "02":
if((z%400!=0)&&(z%4!=0||z%100!=0)&&(y>28))
{
alert("Your birthday must be valid as it's not a leap year ");
return false;
}
else
{
if(y>29)
{ 
alert("Your birthday must be valid!!!");
return false;
}}}
if(document.form4.Secans.value=="")
{
alert("Security answer is require as it help to recover your account...");
return false;
}
if(document.form4.Mobno.value.length!=15||document.form2.Mobno.value.substring(0,9)!='+91-9999-')
{
alert("Mobile number must be +91-9999-****** for registration...");
return false;
}
var u=(document.form4.Mobno.value.substring(9));
if((isNaN(u))||(u<0||u>999999))
{
alert("Your Mobile number must be valid!!!");
return false;
}}
</script>
<%}}}
catch(Exception ee)
{
out.println("Exception "+ee);
}%>
<div class="footer">
<FONT size=-1><A href="about.jsp">About!</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="login.jsp">Home!</A> 
</FONT></div></body></html>