<%@ page import="ts_lab7.calculators.MetricsCalculator" %><%--
  Created by IntelliJ IDEA.
  User: oskar
  Date: 16.04.2020
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pl">
<head>
    <title>Reservation response</title>
    <meta name="description" content="Sprawdź aktualny ranking najlepszych hoteli"/>
    <meta name="keywords" content="hotel, najlepszy hotel, ranking hoteli"/>
    <meta name="author" content="Oskar Pielech">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <link rel='icon' href='images/favicon.ico' type='image/x-icon'/>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="ranking.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<form action="ReservationServlet">
    <section class="hotels">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 offset-lg-3" style="margin-bottom: 20px;">
                    Potwierdzenie rezerwacji:
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Imie:
                </div>
                <div class="col-lg-3">
                    <%out.print(request.getParameter("klientImie"));%>
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Nazwisko:
                </div>
                <div class="col-lg-3">
                    <%out.print(request.getParameter("klientNazwisko"));%>
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    E-mail:
                </div>
                <div class="col-lg-3">
                    <%out.print(request.getParameter("klientEmail"));%>
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Data zameldowania:
                </div>
                <div class="col-lg-3">
                    <%out.print(request.getParameter("klientDataOd"));%>
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Data wymeldowania:
                </div>
                <div class="col-lg-3">
                    <%out.print(request.getParameter("klientDataDo"));%>
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Rodzaj pokoju:
                </div>
                <div class="col-lg-3">
                    <%out.print(request.getParameter("pokoj"));%>
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Cena rezerwacji:
                </div>

                <div class="col-lg-3">
                    ${priceForReservation}
                </div>

                <div class="w-100"></div>
                <div class="col-lg-2 offset-lg-6">
                    <div class="stronaGlowna">
                        <a href="index.jsp" style="font-size:15px;"><br/>Strona główna</a>
                        <a href="rezerwacje.html" style="font-size:15px;"><br/>Ponowna rezerwacja</a>
                    </div>
                </div>

            </div>
        </div>
    </section>
</form>

</body>

<style>
    body {
        margin-top: 50px;
        color: white;
        background-repeat: no-repeat;
        background-image: url("images/hotel(1).jfif");
        background-color: black;
    }
</style>
</html>
