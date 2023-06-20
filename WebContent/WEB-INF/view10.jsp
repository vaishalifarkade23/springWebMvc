<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
</head>
<body>
<!-- one way binding -->
      First Name:${reg.firstname }
      <br>
      Last Name: ${reg.lastname }
      <br>
      Gender:${reg.gender }
      <br>
      Food:
      <ul>  
      <c:forEach var="food" items="${reg.food}">  
      <li>${food}</li>  
      </c:forEach>  
      </ul>
      City:${reg.city }  
      <hr>
      
<!-- one way -->
      <form>
      First name:<input type="text" value="${reg.firstname }"/>
      <br>
      Last Name: <input type="text" value="${reg.lastname }"/>
      <br>
      Gender:
      
         <c:if test="${reg.gender=='Male'}">
         <input type="radio"  name="gender" value="Male" checked="checked">Male
          <input type="radio" name="gender" value="Male" >Female
         </c:if>
          <c:if test="${reg.gender=='Female'}">
         <input type="radio" name="gender" value="Male" >Male
          <input type="radio" name="gender" value="Male" checked="checked">Female
         </c:if> 
      <br>
      Food:
      <input type="checkbox" name="food"
      <c:forEach var="food" items="${reg.food }">
      <c:if test="${food=='Breakfast' }">checked</c:if>
      </c:forEach>
      >Breakfast
      <input type="checkbox" name="food"
      <c:forEach var="food" items="${reg.food }">
      <c:if test="${food=='Lunch' }">checked</c:if>
      </c:forEach>
      >Lunch
      <input type="checkbox" name="food"
      <c:forEach var="food" items="${reg.food }">
      <c:if test="${food=='Dinner' }">checked</c:if>
      </c:forEach>
      >Dinner
      <br>
      <select name="city">
      <option
      <c:if test="${reg.city=='Ghaziabad' }">
      selected
      </c:if>   
      >Ghaziabad</option>
       <option
      <c:if test="${reg.city=='Modinagar' }">
      selected
      </c:if>   
      >Modinagar</option>
       <option
      <c:if test="${reg.city=='Meerut' }">
      selected
      </c:if>   
      >Meerut</option>
      </select><br>
      <button type="submit">Submit</button>
      </form>
      <hr>
<!-- two way binding -->
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
     Breakfast <form:checkbox path="food" value="Breakfast"/>
     Lunch<form:checkbox path="food" value="Lunch"/>
     Dinner<form:checkbox path="food" value="Dinner"/>
     <br>
     City: <form:select path="city">  
        <form:option value="Ghaziabad" label="Ghaziabad"/>  
        <form:option value="Modinagar" label="Modinagar"/>  
        <form:option value="Meerut" label="Meerut"/>  
         </form:select>
         <br>
     <button type="submit">Submit</button>
     </form:form>
     
</body>
</html>