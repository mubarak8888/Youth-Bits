<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.mongodb.*" %>
<%@page import ="com.mongodb.gridfs.*" %>

<head>
<link rel="Shortcut Icon" href="">
	<link rel="StyleSheet" type="text/css" href="css/design.css">
</head>
<jsp:include page="candidateoption.jsp" ></jsp:include>

<div id="main-content">
	<h1>Online Blog Writing</h1><hr>
	<div class="news">
	<form>
	<br></br>
	
<%

MongoClient m=new MongoClient("localhost",27017);
DB db=m.getDB("blog");	
System.out.println("connected to db");
DBCollection coll=db.getCollection("blogdata");


DBCursor cursor = coll.find();
String newFileName = "myblog-image";
GridFS gfsPhoto = new GridFS(db, "photo");

List<GridFSDBFile> imageForOutput = gfsPhoto.find(newFileName); 
Iterator<GridFSDBFile> it=imageForOutput.iterator();

while(cursor.hasNext()&&it.hasNext())
{
	DBObject obj=cursor.next();
	GridFSDBFile f=it.next();
	f.writeTo("C:/Users/Mubarak/Documents/WorkSpace/Blogs/WebContent/jsp/m.mp4");
	
	%>	
    	<br>
  		<b></>Video :
  		
  		<div id="video">
<video width="320" height="240" controls="controls">
  
  <source src="m.mp4" type='video/mp4;codecs="avc1.42E01E, mp4a.40.2"'/>
</video>
</div>
  		 
  		
  		<form>
  		<video src="m.mp4" width="300" height="200" controls="controls"/>
  		</form>
	<hr>
    	
    	<%  }%>
    
		
	
			</div>
</div>
<div id="main-footer"> <a href="#" class="footerLinkStyle">About Us</a> </div>
<div class="footerCopyright"> &copy; <a href="#">Online Blogs System</a> </div>
</div>
</body>
</html>