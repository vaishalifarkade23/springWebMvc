<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
</head>
<body>
     <form:form action="save4" method="POST">
     First Name:<form:input path="firstname"/>
     <br>
     Last Name:<form:input path="lastname"/>
     <br>
     Gender:
     Male<form:radiobutton path="gender" value="Male"/> 
    Female<form:radiobutton path="gender" value="Female"/>
     		<br>
     Food:
    Breakfast<form:checkbox path="food" value="Breakfast"/> 
    Lunch<form:checkbox path="food" value="Lunch"/> 
    Dinner<form:checkbox path="food" value="Dinner"/>
    <br>
    City: <form:select path="city">  
          <form:option value="select" label="select"/> 
        <form:option value="Ghaziabad" label="Ghaziabad"/>  
        <form:option value="Modinagar" label="Modinagar"/>  
        <form:option value="Meerut" label="Meerut"/>  
         </form:select>  
     <button type="submit">Submit</button>
     </form:form>
</body>
</html>