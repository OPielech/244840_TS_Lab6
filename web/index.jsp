<%--
  Created by IntelliJ IDEA.
  User: oskar
  Date: 16.04.2020
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pl">
<head>
    <title>Hotel ranking</title>
    <meta name="description" content="Sprawdź aktualny ranking najlepszych hoteli"/>
    <meta name="keywords" content="hotel, najlepszy hotel, ranking hoteli"/>
    <meta name="author" content="Oskar Pielech">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <link rel='icon' href='images/favicon.ico' type='image/x-icon'/>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="mainWindow.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
<main>
    <section class="hotels">
        <div class="container">
            <div class="col-12">
                <header>
                    <h1>Ranking hoteli</h1>
                    <p>
                      Chcesz spędzić niezapomniane wakacje? Sprawdź nasz najnowszy ranking hoteli i wybierz ten, który
                        idealnie spełni wszystkie Twoje wymagania!
                    </p>

                    <p>
                        Ranking tworzymy na podstawie własnych doświadczeń ale także na podstawie waszych opnii.
                        Każdą z&nbsp;nich
                        dokładnie czytamy i&nbsp;weryfikujemy. Robimy to po to aby zapobiec rozczarowaniom i&nbsp;zapewnić
                        naszym użytkownikom
                        niesamowicie spędzony czas w&nbsp;najlepszych hotelach.
                    </p>
                </header>
            </div>

            <div class="ranking">
                <a href="ranking.jsp">
                    Sprawdź najnowszy ranking
                </a>
                <br>
                <a href="rezerwacje.html">
                    Rezerwacja noclegu
                </a>
            </div>

            <div class="row no-gutters">

                <div class="col-2">
                    <img src="images/hotel1.jpg" class="img-fluid" alt="hotel1">
                </div>

                <div class="col-2">
                    <img src="images/hotel5.jpg" class="img-fluid" alt="hotel5">
                </div>

                <div class="col-2">
                    <img src="images/hotel3.jpg" class="img-fluid" alt="hotel3">
                </div>

                <div class="col-2">
                    <img src="images/hotel11.jpg" class="img-fluid" alt="hotel11">
                </div>

                <div class="col-2">
                    <img src="images/hotel8.jpg" class="img-fluid" alt="hotel8">
                </div>

                <div class="col-2">
                    <img src="images/hotel2.jpg" class="img-fluid" alt="hotel2">
                </div>
            </div>

            <div class="row no-gutters">
                <div class="col-2">
                    <img src="images/hotel4.jpg" class="img-fluid" alt="hotel4">
                </div>

                <div class="col-2">
                    <img src="images/hotel6.jpg" class="img-fluid" alt="hotel6">
                </div>

                <div class="col-2">
                    <img src="images/hotel12.jpg" class="img-fluid" alt="hotel12">
                </div>

                <div class="col-2">
                    <img src="images/hotel10.jpg" class="img-fluid" alt="hotel10">
                </div>

                <div class="col-2">
                    <img src="images/hotel7.jpg" class="img-fluid" alt="hotel7">
                </div>

                <div class="col-2">
                    <img src="images/hotel9.jpg" class="img-fluid" alt="hotel9">
                </div>
            </div>

        </div>
    </section>
</main>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>

<style>
    body {
        background-repeat: no-repeat;
        background-size: cover;
        background-image: url("images/hotel(1).jfif");
        background-color: black;
    }
</style>
</html>
