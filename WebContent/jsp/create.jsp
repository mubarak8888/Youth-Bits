<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<link rel="Shortcut Icon" href="">
	<link rel="StyleSheet" type="text/css" href="css/design.css">
</head>
<jsp:include page="candidateoption.jsp" ></jsp:include>

<div id="main-content">
	<h1>Welcome In Online video streaming </h1><hr>
	<div class="news">
	<br><br>
	<form action="Create" method="post">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td ><b>Select video :</td>
    <input type="file" name="video">
    
    <p></p><center><input align="middle" type="submit" name="submit" value="Submit" >
    <input align="right" type="reset" value="Reset" onClick="alert('Are you sure?'); return true">
    <br></br>
    </form>
			</div>
</div>
<div id="main-footer"> <a href="#" class="footerLinkStyle">About Us</a> </div>
<div class="footerCopyright"> &copy; <a href="#">Online video Streaming</a> </div>
</div>
</body>
</html>