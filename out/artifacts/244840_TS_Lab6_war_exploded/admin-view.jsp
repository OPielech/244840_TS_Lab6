<%--
  Created by IntelliJ IDEA.
  User: oskar
  Date: 16.04.2020
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="pl">
<head>
    <title>Panel admina</title>
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
<main>
    <section class="hotels">
        <div class="container">
            <div class="row">

                <div class="col-md-6 offset-md-1">
                    <div class="stronaGlowna">
                        <h1>Rezerwacje</h1>
                    </div>
                </div>

                <div class="w-100"></div>
                <div class="col-md-12 ">
                    <div class="sortuj">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Imie</th>
                                <th scope="col">Nazwisko</th>
                                <th scope="col">Email</th>
                                <th scope="col">Data zameldowania</th>
                                <th scope="col">Data wymeldowania</th>
                                <th scope="col">Id pokoju</th>
                                <th scope="col">Koszt rezerwacji</th>
                            </tr>
                            </thead>

                            <tbody>

                            <c:forEach var="tempReservation" items="${RESERVATION_LIST}">

                                <c:url var="deleteLink" value="AdminServlet">
                                    <c:param name="command" value="DELETE"></c:param>
                                    <c:param name="ID" value="${tempReservation.id}"></c:param>
                                </c:url>
                                <tr>
                                    <th scope="row">${tempReservation.id}</th>
                                    <td>${tempReservation.name}</td>
                                    <td>${tempReservation.surname}</td>
                                    <td>${tempReservation.email}</td>
                                    <td>${tempReservation.dateFrom}</td>
                                    <td>${tempReservation.dateTo}</td>
                                    <td>${tempReservation.roomId}</td>
                                    <td>${tempReservation.cost}</td>
                                    <td>
                                        <a href="${deleteLink}"
                                           onclick="if(!(confirm('Czy na pewno chcesz usunąć rezerwację?'))) return false">
                                            <button type="button" class="btn btn-danger">Usuń</button>
                                        </a>
                                    </td>
                                </tr>


                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="w-100"></div>
                <div class="col-md-6 offset-md-1">
                    <div class="stronaGlowna">
                        <h1>Pokoje</h1>
                    </div>
                </div>

                <div class="w-100"></div>
                <div class="col-md-6 offset-md-3">
                    <div class="sortuj">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Typ</th>
                                <th scope="col">Cena</th>
                            </tr>
                            </thead>

                            <tbody>

                            <c:forEach var="tempRoom" items="${ROOM_LIST}">

                                <tr>
                                    <th scope="row">${tempRoom.id}</th>
                                    <td>${tempRoom.name}</td>
                                    <td>${tempRoom.price}</td>
                                </tr>


                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
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
        background-color: black;
    }

    .table th,
    .table td,
    .table tr {
        color: white;
    }

    .table button {
        background-color: white;
        color: black;
        border-color: white;
    }
</style>

</html>
