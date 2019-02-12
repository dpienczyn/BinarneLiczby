<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Management Screen</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="http://localhost:8083/SpringMVCHibernateCRUD/">Home</a>
    <a class="navbar-brand" href="http://localhost:8083/SpringMVCHibernateCRUD/index">Bmi</a>
    <a class="navbar-brand" href="http://localhost:8083/SpringMVCHibernateCRUD/number">Kalkulator Binarny</a>
  </nav>
</div>
</nav>
    <div align="center">
        <h1>Kalkulator</h1>
        <form method="get" action="${pageContext.request.contextPath}/bmi">
                    <table>
                        <tr>
                            <td>Waga (kg):</td>
                            <td><input name="kg" type="double" /></td>
                        </tr>
                        <tr>
                            <td>Wzrost (m):</td>
                            <td><input name="cm" type="double" /></td>
                        </tr>
                        <tr>Plec</tr>
                        <td>
                        <td><select name="sex">
                        <option value="kobieta">Kobieta</option>
                        <option value="mezczyzna">Mezczyzna</option>
                        </select>
                        </td>
                        <tr>
                            <td></td>
                            <td><input value="Oblicz" type="submit" /></td>
                        </tr>
                    </table>
                </form>
</body>
</html>