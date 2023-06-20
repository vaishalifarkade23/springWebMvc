<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <a href="hello">click here for hello url </a>
    <br>
    <a href="hi">click here for hi url</a>
    <hr>
    <a href="modelinterface">click here to observe how to bind to view using Model Interface</a>
    <hr>
    <!-- pathvariableController -->
    <a href="country/state/city">click here to bind url</a>
    <hr>
    <a href="edit/id">click to bind integer value</a>
    <hr>
    <!--  Handling form request through HttpServlet Request -->
    <a href="formview">click on view</a>
    <hr>
    <!-- @requestParam annotation -->
    <a href="formview1">click to view form for @RequestParam annotation</a>
    <hr>
    <!-- @ModelAttribute annotation -->
    <a href="formview2">click to view form for @ModelAttribute annotation</a> 
    <hr>
    <!-- image -->
    <img src="image/IMG-20200617-WA0008.jpg">
    <hr>
    <!-- for one way n two way binding link  -->
    <a href="mvcform1">click to view mvc form</a>
</body>
</html>