<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="Shortcut Icon" href="">
<link rel="StyleSheet" type="text/css" href="css/design.css">
</head>
<jsp:include page="candidateoption.jsp" ></jsp:include>


  <div id="main-content">
    <h1 align="center"> Welcome In Online blog writing way to express it </h1>
    <div class="news" align="center">
      <form method="post" action="Delete" onSubmit="return dosomething()" >
      	<table>
      		<tr>
      			<td><label for="username">Title </label></td>
      			<td><input type="text" name="username" id="username" /></td>
      		</tr>
      		
      		<tr>
      			<td colspan="2" align="center"  ><input type="submit" name="login" id="login" value="Delete" /></td>
      		</tr>
      		
      	</table>
      </form>
    </div>
  </div>
  <div id="main-footer"> <a href="#" class="footerLinkStyle">About Us</a></div>
  <div class="footerCopyright"> 2014 <a href="#">Online Blogs System</a> </div>
</div>
</body>
<script language="javascript">
function dosomething()
{

	if(document.register.username.value=="")
	{
		alert("Please enter the username");
		document.Registration.username.focus();
		return false;
	}
	if(document.register.password.value=="")
	{
		alert("Please enter the password");
		document.Registration.password.focus();
		return false;
	}
	if(document.register.cpassword.value=="")
	{
		alert("Please enter the confirmation password");
		document.Registration.cpassword.focus();
		return false;
	}

	if(document.Register.password.value!=document.Register.cpassword.value)
	{
		alert("Incorrect Pasword");
		document.Registration.password.focus();
		return false;
	}
		
}
</script>
</html>