<html><%@ include file="Head.jsp"%><body>
	<H2 class="style5">Create an Account </H2>
	<H4>If you already have an Account, you can <A href="login.jsp">login here</A>.</H4><FONT color=#3366cc>
			<STRONG><u><span class="style4">Required information for account :-</span><br>
						</u></STRONG></FONT><BR>
	<form name="form2" method="post" action="createacc.jsp" onSubmit="return check()">
        <TABLE border=0 cellSpacing=0 cellPadding=0 bordercolor="#000000">
                    <TR>
                      <TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Choose a username:</FONT></STRONG></TD>
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV>
							<INPUT size=30 type=text name=User style="width: 200px">*</DIV>
                        <FONT color=#6f6f6f size=2>Used to login in your account.</FONT></TD>
                    <TR>
                      <TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Choose a password:</FONT></STRONG></TD>
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV>
							<INPUT size=30 type=password name=Passwd style="width: 200px">*</DIV>
			<FONT color=#6f6f6f size=2>Minimum of&nbsp;6 characters in length.</FONT></TD></TR>
                    <TR>
                      <TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Re-enter password:</FONT></STRONG></TD>
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV>
							<INPUT size=30 type=password name=Reenter style="width: 200px">*</DIV></TD></TR>
		    <TR><TD colspan="2" class="ms-simple1-left">
				<hr style="background-color: #00FFFF; background-repeat: no-repeat;" color="#000000"></TD></TR>
		    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Your name is:</FONT></STRONG></TD>
			<TD style="width: 500px" class="ms-simple1-left"><DIV><SELECT name=You><OPTION value="Mr.">Mr.</OPTION><OPTION value="Ms.">Ms.</OPTION>
			<OPTION value="Mrs.">Mrs.</OPTION></SELECT><INPUT maxLength=20 size=15 name=fname style="width: 110px">*
			<INPUT maxLength=20 size=12 name=mname style="width: 110px">&nbsp;
				<INPUT maxLength=20 size=20 name=lname style="width: 110px">*</DIV>
			<FONT color=#6f6f6f size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Middle Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name</FONT></TD></TR>
		    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Your permanent address is:</FONT></STRONG></TD>
			<TD style="width: 500px" class="ms-simple1-left"><DIV>
				<INPUT maxLength=70 size=70 name=address1 style="width: 400px">*<BR>
				<INPUT maxLength=70 size=70 name=address2 style="width: 400px"></DIV>
			<FONT color=#6f6f6f size=2>Address should consist of city where you live.</FONT></TD></TR>
		    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>The state where you live is:</FONT></STRONG></TD>
		    <TD style="width: 500px" class="ms-simple1-left"><div>
		      <select name="loc" style="width: 200px">
			<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
  			<option value="Andra Pradesh">Andra Pradesh</option>
  			<option value="Arunachal Pradesh">Arunachal Pradesh</option>
  			<option value="Assam">Assam</option>
			<option value="Bihar">Bihar</option>
			<option value="Chandigarh">Chandigarh</option>
			<option value="Chhattisgarh">Chhattisgarh</option>
			<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
			<option value="Daman and Diu">Daman and Diu</option>
			<option value="Delhi" selected="selected">Delhi</option>
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
		    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Your birthday is:</FONT></STRONG></TD>
  			<TD style="width: 500px" class="ms-simple1-left"><div>
				<input name=Birthday size="30" type="text" value="MM/DD/YYYY" style="width: 200px">*</div>
			<FONT color=#6f6f6f size=2>MM/DD/YYYY (e.g. "06/02/1990").</FONT></TD></TR>
		    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Select your security question:</FONT></STRONG></TD>
		    <TD style="width: 500px" class="ms-simple1-left"><div>
		      <select name="sec" style="width: 200px">
			<option selected value="Whom do you like most?">Whom do you like most?</option>
			<option value="Who is your childhood hero?">Who is your childhood hero?</option>
			<option value="What is your nick name?">What is your nick name?</option>
			<option value="What is your favorite pass time?">What is your favorite pass time?</option>
		      </select></div><BR></TD></TR>
		    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Your security answer is:</FONT></STRONG></TD> 
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV>
							<INPUT size=30 type=text name=Secans style="width: 200px">*</DIV><BR></TD></TR>
		    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Your mobile number is:</FONT></STRONG></TD> 
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV>
							<INPUT size=3 type=text name=Mobno value="+91-9999-000" style="width: 200px" class="style3">*</DIV><br></TD></TR>
		    <TR>
		      <TD valign="top" nowrap="nowrap" class="ms-simple1-left">
			<font face="Arial, sans-serif" size="-1"><b>Terms of Service:</b></font></TD>
		      <TD valign="top" style="width: 500px" class="ms-simple1-left">
			<font face="Arial, sans-serif" size="-1">
			Please check the Account information you've entered above (feel free to change anything you like),<br>
			and review the Terms of Service below.</font><br><br>
			<textarea rows="5" style="width: 80%;" readonly="readonly">
Terms of Service
Welcome to Online Mobile Billing System!

Accepting the Terms:-

    1. In order to use the Services, you must first agree to the Terms.
 You may not use the Services if you do not accept the Terms.

    2. You can accept the Terms by:

        (A) clicking to accept or agree to the Terms, where this option 
is made available to you by Online Mobile Billing System in the user
 interface for any Service; or

        (B) by actually using the Services. In this case, you understand
 and agree that Online Mobile Billing will TReat your use of the Services
 as acceptance of the Terms from that point onwards.

    3. You may not use the Services and may not accept the Terms if (a)
 you are not of legal age to form a binding conTRact with Google, or (b)
 you are a person barred from receiving the Services under the laws of 
the United States or other counTRies including the counTRy in which you 
 are resident or from which you use the Services.

    4. Before you continue, you should print off or save a local copy 
of the Universal Terms for your records.

Sep 12, 2010

		      </textarea><br><br>
			<font size="-1">
			By clicking on 'I accept' below you are agreeing to the Terms of Service above and the Privacy Policy.
			</font><br><br></TD></TR>
	</TABLE>
        	    <input style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;" name="submit" value="I accept. Create my account." type="SUBMIT" align="baseline"></form>
<script type="text/javascript">
function check()
{
if(document.form2.User.value=="")
{
alert("Username is require for continue...");
return false;
}
if(document.form2.Passwd.value.length<=5)
{
alert("Password must be minimum of 6 character to continue...");
return false;
}
if(document.form2.Passwd.value!=document.form2.Reenter.value)
{
alert("Re-enter Password with carefully!!!");
return false;
}
if(document.form2.fname.value=="")
{
alert("You must enter your first name to continue...");
return false;
}if(document.form2.lname.value=="")
{
alert("You must enter your last name to continue...");
return false;
}if(document.form2.address1.value=="")
{
alert("Atleast One address is require to continue...");
return false;
}
if(document.form2.Birthday.value=="")
{
alert("Your birthday is require for continue...");
return false;
}
if(document.form2.Birthday.value.length!=10||document.form2.Birthday.value.charAt(2)!='/'||document.form2.Birthday.value.charAt(5)!='/')
{
alert("Enter your birthday in MM/DD/YYYY format!!!");
return false;
}
var x=(document.form2.Birthday.value.substring(0,2));
var y=(document.form2.Birthday.value.substring(3,5));
var z=(document.form2.Birthday.value.substring(6));
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
if(document.form2.Secans.value=="")
{
alert("Security answer is require as it help to recover your account...");
return false;
}
if(document.form2.Mobno.value.length!=15||document.form2.Mobno.value.substring(0,12)!='+91-9999-000')
{
alert("Mobile number must be +91-9999-000*** for registration...");
return false;
}
var u=document.form2.Mobno.value.substring(12);
if(isNaN(u)||u<0||u>999)
{
alert("Mobile number must be valid for registration...");
return false;
}}
</script>    
<div class="footer">
<FONT size=-1><A href="about.jsp">About!</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="login.jsp">Home!</A> 
</FONT></div></body></html>
