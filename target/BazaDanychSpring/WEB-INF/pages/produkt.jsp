<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Home</a>
    <a class="navbar-brand" href="http://localhost:8083/SpringMVCHibernateCRUD/index">Bmi</a>
    <a class="navbar-brand" href="#">Uzytkownik</a>
  </nav>
</div>
</nav>

    <div align="center">
        <h1>Produkt List</h1>
        <table border="1">
 			
            <th>Nazwa</th>
            <th>Ilosc</th>
            <th>Opis</th>
 
            <c:forEach var="produkt" items="${listProdukt}">
                <tr>
 					
                    <td>${produkt.nazwa}</td>
                    <td>${produkt.ilosc}</td>
                    <td>${produkt.opis}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>