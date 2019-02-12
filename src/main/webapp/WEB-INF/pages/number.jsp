<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" />
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="http://localhost:8083/SpringMVCHibernateCRUD/">Home</a>
    <a class="navbar-brand" href="http://localhost:8083/SpringMVCHibernateCRUD/index">Bmi</a>
    <a class="navbar-brand" href="#">Uzytkownik</a>
    </nav>
    </div>
    </nav>
<h1>Kalkulator</h1>
        <form method="post" action="${pageContext.request.contextPath}/number">
  <div class="form-group">
    <input  name="liczba" type="integer" class="form-control" id="liczba" placeholder="Wpisz liczbe">
  </div>
  <select class="form-control" name="sex">
  <option value="Bin">Binarny</option>
                        <option value="Osm">Ósemkowa</option>
                        <option value="Hex">Szesnastkowy</option>
</select>
 <center><strong><td>WYNIK: ${str1}</td></strong></center>
   <button value="Oblicz" type="submit" class="btn btn-primary">Oblicz</button> 
                </form>
  
  <div class="container">
  <h2>System binarny</h2>
  <p>Komputery to urządzenia elektroniczne zbudowane z elektronicznych przełączników. Na najniższych poziomach przetwarzania komputery korzystają z tych elektronicznych przełączników w celu podejmowania decyzji. Komputery reagują tylko na impulsy elektryczne. Impulsy te są rozpoznawane przez komputer jako stany "włączenia" lub "wyłączania", czyli umownie jako jedynki i zera. Ponieważ komputer nie potrafi "mówić" językiem użytkownika, trzeba nauczyć się mówić językiem komputera, czyli arytmetyki binarnej. 

Komputery nie posługują się systemem dziesiętnym (o podstawie 10), jak czynią to ludzie. Urządzenia elektroniczne mają taka strukturę, że naturalny jest dla nich system binarny. Aby użyć system dziesiętny, komputery muszą dokonać konwersji. Można to porównać z osobą mówiącą dwoma językami, rodzimym i wyuczonym. Szybciej i dokładniej komunikuje się za pomocą pierwszego języka. 

System binarny korzysta z dwóch znaków: 0 i 1. Każdą liczbę dziesiętną można wyrazić w postaci binarnej. Znaki wykorzystywane w systemie dziesiętnym to 0, 1, 2, 3, 4, 5, 6, 7, 8, i 9. Ponieważ oba systemy liczbowe korzystają ze znaków 0 i 1, istnieje możliwość pomyłki w ich rozróżnieniu. Na przykład, co oznacza 10110? To zależy od tego czy odwołujemy się do liczby 10110 w dziesiętnym, czy liczby 10110 w systemie binarnym. Ze względu na możliwość pożytki, matematycy czasami stosują zapis 1011010, aby odwzorować liczbę 10110 w systemie dziesiętnym oraz zapis 101102, aby odwzorować liczbę 10110 w systemie binarnym. Jednak zapisywanie tych oznaczeń za każdym razem szybko staje się nużące, dlatego tez zazwyczaj z kontekstu odczytujemy, jaki system jest używany. 

Najpierw należy upewnić się, ze patrząc na ciąg znaków, na przykład 10110, rozumiemy o jakim systemie liczbowym myślała osoba zapisująca te liczbę. Jeśli nie mamy takiej pewności, osoba zapisująca numer nie włożyła wystarczającego wysiłku w zapewnienie przejrzystości lub nie miała zamiaru odwołać się do konkretnego systemu liczb. 

Istnieje ważna konwencja (uzgodniona zasada), która jest tak oczywista, ze wystarczy o niej napomknąć. Wywodzi się z wieloletniej pracy z liczbami dziesiętnymi: konwencja polega na odczytaniu, zapisywaniu i wymawianiu znaków, na przykład liczby 10110 od strony lewej do prawej. Na przykład liczba 10110 jest odczytywana jako ,,jeden, zero, jeden, jeden, zero".</p>
</div>
<div class="container">
  <h2>System szesnastkowy</h2>
  <p>Szesnastkowy system liczbowy jest używany do reprezentowania adresów MAC. Nazywany jest systemem o podstawie 16, ponieważ używa 16 symboli; kombinacje symboli mogą przedstawiać wszystkie możliwe liczby. Ponieważ istnieje tylko 10 różnych symboli reprezentujących cyfry dziesiętne (0, 1, 2, 3, 4, 5, 6. 7, 8, 9), a szesnastkowy wymaga większej liczby symboli, dodatkowo wykorzystywane są litery A, B, C, D, E i F. 

Miejsce każdego symbolu, czyli cyfry, w liczbie szesnastkowej reprezentuje po 16 podniesiona do potęgi, czyli współczynnika związanego z daną pozycją - tak jak w przypadku liczb dziesiętnych lub binarnych. Przechodząc od strony prawej do lewej, pierwsza pozycja ma wagę 160, czyli 1; druga pozycja 161, czyli 16; trzecia pozycja to 162 czyli 256 i tak dalej.</p>
</div></br>
</body>
</html>