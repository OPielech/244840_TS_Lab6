<%--
  Created by IntelliJ IDEA.
  User: oskar
  Date: 16.04.2020
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="pl">
<head>
    <title>Hotel ranking</title>
    <meta name="description" content="Sprawdź aktualny ranking najlepszych hoteli" />
    <meta name="keywords" content="hotel, najlepszy hotel, ranking hoteli" />
    <meta name="author" content="Oskar Pielech">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel='icon' href='images/favicon.ico' type='image/x-icon'/>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="ranking.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
<main>
    <section class="hotels" >
        <div class="container">
            <div class="row" >

                <div class="col-md-6 offset-md-6">
                    <div class="stronaGlowna">
                        <a href="index.jsp" style="font-size:15px;"><br/>Strona główna</a>
                        <a href="metryki.html" style="font-size: 15px;"><br/>Kalkulator metryk oceny obiektu hotelowego</a>
                    </div>
                </div>

                <div class="w-100"></div>
                <div class="col-md-2 offset-md-10">
                    <div class="sortuj">
                        <br>
                        Sortuj według: Ocena
                    </div>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel1.jpg" class="img-fluid" alt="hotel1">
                        <figcaption>
                            Pozycja: 1
                            <br>Ocena: 4,90
                            <br>Nazwa: First hotel
                            <br>Gwiazdki: 5 &#9734;&#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 800
                            <br>Cena: 500 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel5.jpg" class="img-fluid" alt="hotel5">
                        <figcaption>
                            Pozycja: 2
                            <br>Ocena: 4,80
                            <br>Nazwa: Second Hotel
                            <br>Gwiazdki: 5 &#9734;&#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 850
                            <br>Cena: 550 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel3.jpg" class="img-fluid" alt="hotel3">
                        <figcaption>
                            Pozycja: 3
                            <br>Ocena: 4,75
                            <br>Nazwa: Third Hotel
                            <br>Gwiazdki: 5 &#9734;&#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 750
                            <br>Cena: 450 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel11.jpg" class="img-fluid" alt="hotel11">
                        <figcaption>
                            Pozycja: 4
                            <br>Ocena: 4,7
                            <br>Nazwa: Fourth Hotel
                            <br>Gwiazdki: 5 &#9734;&#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 400
                            <br>Cena: 600 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel8.jpg" class="img-fluid" alt="hotel8">
                        <figcaption>
                            Pozycja: 5
                            <br>Ocena: 4,65
                            <br>Nazwa: Fifth Hotel
                            <br>Gwiazdki: 5 &#9734;&#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 520
                            <br>Cena: 620 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel2.jpg" class="img-fluid" alt="hotel2">
                        <figcaption>
                            Pozycja: 6
                            <br>Ocena: 4,70
                            <br>Nazwa: Sixth Hotel
                            <br>Gwiazdki: 5 &#9734;&#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 400
                            <br>Cena: 600 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel4.jpg" class="img-fluid" alt="hotel4">
                        <figcaption>
                            Pozycja: 7
                            <br>Ocena: 4,65
                            <br>Nazwa: Seventh Hotel
                            <br>Gwiazdki: 5 &#9734;&#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 480
                            <br>Cena: 570 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel6.jpg" class="img-fluid" alt="hotel6">
                        <figcaption>
                            Pozycja: 8
                            <br>Ocena: 4,60
                            <br>Nazwa: Eight Hotel
                            <br>Gwiazdki: 4 &#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 530
                            <br>Cena: 510 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel12.jpg" class="img-fluid" alt="hotel12">
                        <figcaption>
                            Pozycja: 9
                            <br>Ocena: 4,60
                            <br>Nazwa: Ninth Hotel
                            <br>Gwiazdki: 4 &#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 3700
                            <br>Cena: 450 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel10.jpg" class="img-fluid" alt="hotel10">
                        <figcaption>
                            Pozycja: 10
                            <br>Ocena: 4,55
                            <br>Nazwa: Tenth Hotel
                            <br>Gwiazdki: 4 &#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 530
                            <br>Cena: 510 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel7.jpg" class="img-fluid" alt="hotel7">
                        <figcaption>
                            Pozycja: 11
                            <br>Ocena: 4,50
                            <br>Nazwa: Eleventh Hotel
                            <br>Gwiazdki: 4 &#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 370
                            <br>Cena: 420 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-6">
                    <figure>
                        <img src="images/hotel9.jpg" class="img-fluid" alt="hotel9">
                        <figcaption>
                            Pozycja: 12
                            <br>Ocena: 4,60
                            <br>Nazwa: Twelfth Hotel
                            <br>Gwiazdki: 4 &#9734;&#9734;&#9734;&#9734;
                            <br>Pokoje: 3500
                            <br>Cena: 430 zł/doba
                        </figcaption>
                    </figure>
                </div>

                <div class="col-md-1 offset-md-11">
                    <div class="gora">
                        <a href="ranking.jsp">Do góry</a>
                    </div>
                </div>

            </div>
        </div>
    </section>

</main>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

<style>
    body
    {
        background-color: black;
    }
</style>

</html>
