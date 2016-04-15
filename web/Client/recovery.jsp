<html><%@ include file="Head.jsp"%><body>
	<H2 class="style5">Can't access to your Account </H2>
	<H4>If you already know your username or password you can <A href="login.jsp">login here</A>.</H4><FONT color=#3366cc>
		<STRONG><u><span class="style4">You can access your account by using your Username or your Mobile number :-</span></u></STRONG></FONT><BR>
	<form name="form6" method="post" action="reoveracc.jsp" onSubmit="return recheck()">
        <TABLE border=0 cellSpacing=0 cellPadding=0 bordercolor="#000000">
                    <TR>
                      <TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Enter your username:</FONT></STRONG></TD>
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV><INPUT size=30 type=text name=User style="width: 200px">*</DIV><br></TD></TR>
                    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Your mobile number is:</FONT></STRONG></TD> 
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV><INPUT size=3 type=text name=Mobno value="+91-9999-000" style="width: 200px" class="style3">*</DIV><br></TD></TR>
		    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>The state wher you live is:</FONT></STRONG></TD>
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
		      </select>*</div><BR></TD></TR>
		    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Select your security question:</FONT></STRONG></TD>
		    <TD style="width: 500px" class="ms-simple1-left"><div>
		      <select name="sec" style="width: 200px">
			<option selected value="Whom do you like most?">Whom do you like most?</option>
			<option value="Who is your childhood hero?">Who is your childhood hero?</option>
			<option value="What is your nick name?">What is your nick name?</option>
			<option value="What is your favorite pass time?">What is your favorite pass time?</option>
		      </select>*</div><BR></TD></TR>
		    <TR><TD vAlign=top noWrap class="ms-simple1-left"><STRONG><FONT size=2>Your security answer is:</FONT></STRONG></TD> 
                      <TD style="width: 500px" class="ms-simple1-left">
                        <DIV><INPUT size=30 type=text name=Secans style="width: 200px">*</DIV><BR></TD></TR>
                    <TR>
                      <TD vAlign=top noWrap class="ms-simple1-left"></TD>
                      <TD vAlign=top noWrap class="ms-simple1-left"><INPUT type=SUBMIT value="SUBMIT">
		      <INPUT type=RESET value="CANCEL"></TD></TR></TABLE></form>
<script type="text/javascript">
function recheck()
{
if((document.form6.User.value=="")&&(document.form6.Mobno.value.length!=15||document.form2.Mobno.value.substring(0,12)!='+91-9999-000'||isNaN(document.form6.Mobno.value.substring(12))||document.form6.Mobno.value.substring(12)<0||document.form6.Mobno.value.substring(12)>999))
{
alert("Username or your Mobile number must enter correctly to continue...");
return false;
}
if((document.form6.Secans.value==""))
{
alert("Security answer must enter correctly to continue...");
return false;
}}
</script>    
<div class="footer">
<FONT size=-1><A href="about.jsp">About!</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="login.jsp">Home!</A> 
</FONT></div></body></html>