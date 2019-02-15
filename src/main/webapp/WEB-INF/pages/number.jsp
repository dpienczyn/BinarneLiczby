<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="<c:url value="/resources/css/opis.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/menu.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/form.css"/>" />
</head>
<body>
       <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-4">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="http://kalkulatorek.herokuapp.com/">Home</a></li>
            <li><a href="https://github.com/dpienczyn">O mnie</a></li>
            <li><a href="http://kalkulatorek.herokuapp.com/kontakt">Kontakt</a></li>
            <li>
              <a class="btn btn-default btn-outline btn-circle collapsed"  data-toggle="collapse" href="#nav-collapse4" aria-expanded="false" aria-controls="nav-collapse4">Profil <i class=""></i> </a>
            </li>
          </ul>
          
<h1>Kalkulator</h1>
 

<div>
  <form method="post" action="${pageContext.request.contextPath}/number">
    <input type="text" id="fname" name="liczba" type="integer" placeholder="Wpisz liczbę..">

    <select id="country" name="sex">
      <option value="Bin">Binarny</option>
      <option value="Osm">Ósemkowy</option>
      <option value="Hex">Szesnastkowy</option>
    </select>
  
    <input type="submit" value="Oblicz">
    
    <h4><center><strong><td>WYNIK: ${str1}</td></strong></center></h4>
  </form>
</div>
                
  <section class="content">
  
  <section>
    <header>
      <h1 class="line-title">System binarny</h1>    
    </header>
    <article>
      Komputery to urządzenia elektroniczne zbudowane z elektronicznych przełączników. Na najniższych poziomach przetwarzania komputery korzystają z tych elektronicznych przełączników w celu podejmowania decyzji. Komputery reagują tylko na impulsy elektryczne. Impulsy te są rozpoznawane przez komputer jako stany "włączenia" lub "wyłączania", czyli umownie jako jedynki i zera. Ponieważ komputer nie potrafi "mówić" językiem użytkownika, trzeba nauczyć się mówić językiem komputera, czyli arytmetyki binarnej. 

Komputery nie posługują się systemem dziesiętnym (o podstawie 10), jak czynią to ludzie. Urządzenia elektroniczne mają taka strukturę, że naturalny jest dla nich system binarny. Aby użyć system dziesiętny, komputery muszą dokonać konwersji. Można to porównać z osobą mówiącą dwoma językami, rodzimym i wyuczonym. Szybciej i dokładniej komunikuje się za pomocą pierwszego języka. 

System binarny korzysta z dwóch znaków: 0 i 1. Każdą liczbę dziesiętną można wyrazić w postaci binarnej. Znaki wykorzystywane w systemie dziesiętnym to 0, 1, 2, 3, 4, 5, 6, 7, 8, i 9. Ponieważ oba systemy liczbowe korzystają ze znaków 0 i 1, istnieje możliwość pomyłki w ich rozróżnieniu. Na przykład, co oznacza 10110? To zależy od tego czy odwołujemy się do liczby 10110 w dziesiętnym, czy liczby 10110 w systemie binarnym. Ze względu na możliwość pożytki, matematycy czasami stosują zapis 1011010, aby odwzorować liczbę 10110 w systemie dziesiętnym oraz zapis 101102, aby odwzorować liczbę 10110 w systemie binarnym. Jednak zapisywanie tych oznaczeń za każdym razem szybko staje się nużące, dlatego tez zazwyczaj z kontekstu odczytujemy, jaki system jest używany. 

Najpierw należy upewnić się, ze patrząc na ciąg znaków, na przykład 10110, rozumiemy o jakim systemie liczbowym myślała osoba zapisująca te liczbę. Jeśli nie mamy takiej pewności, osoba zapisująca numer nie włożyła wystarczającego wysiłku w zapewnienie przejrzystości lub nie miała zamiaru odwołać się do konkretnego systemu liczb. 

Istnieje ważna konwencja (uzgodniona zasada), która jest tak oczywista, ze wystarczy o niej napomknąć. Wywodzi się z wieloletniej pracy z liczbami dziesiętnymi: konwencja polega na odczytaniu, zapisywaniu i wymawianiu znaków, na przykład liczby 10110 od strony lewej do prawej. Na przykład liczba 10110 jest odczytywana jako ,,jeden, zero, jeden, jeden, zero".
    </article>
  </section>
  <section>
    <header>
      <h1 class="line-title">System szesnastkowy</h1>    
    </header>
    <article>
      Szesnastkowy system liczbowy jest używany do reprezentowania adresów MAC. Nazywany jest systemem o podstawie 16, ponieważ używa 16 symboli; kombinacje symboli mogą przedstawiać wszystkie możliwe liczby. Ponieważ istnieje tylko 10 różnych symboli reprezentujących cyfry dziesiętne (0, 1, 2, 3, 4, 5, 6. 7, 8, 9), a szesnastkowy wymaga większej liczby symboli, dodatkowo wykorzystywane są litery A, B, C, D, E i F. 

Miejsce każdego symbolu, czyli cyfry, w liczbie szesnastkowej reprezentuje po 16 podniesiona do potęgi, czyli współczynnika związanego z daną pozycją - tak jak w przypadku liczb dziesiętnych lub binarnych. Przechodząc od strony prawej do lewej, pierwsza pozycja ma wagę 160, czyli 1; druga pozycja 161, czyli 16; trzecia pozycja to 162 czyli 256 i tak dalej.
    </article>
  </section>
  <section>
    <header>
      <h1 class="line-title">System ósemkowy</h1>    
    </header>
    <article>
      System ósemkowy, zwany też oktalnym, używany był kiedyś do skrócenia zapisu liczb dwójkowych. Podstawą tego systemu jest liczba 8 i posiada on osiem cyfr: 0,1,2,3,4,5,6,7. Liczba 8 to trzecia potęga dwójki. Każdym trzem cyfrom systemu binarnego (dwójkowego) odpowiada jedna cyfra systemu ósemkowego. Liczby zapisujemy jako ciągi cyfr, z których każda jest mnożną potęgi liczby 8. 
    </article>
  </section>

</section>
</body>
</html>