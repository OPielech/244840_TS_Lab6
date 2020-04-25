<%@ page import="ts_lab7.MetricsCalculator" %><%--
  Created by IntelliJ IDEA.
  User: oskar
  Date: 16.04.2020
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pl">
<head>
    <title>Metryki response</title>
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
<form action="metryki-response.jsp">
    <section class="hotels">
        <div class="container">
            <div class="row">


                <div class="col-lg-3 offset-lg-3">
                    Średnia cena za pokój:
                </div>
                <div class="col-lg-3">
                    <input type="number" name="pokojCena" value="<%out.print(request.getParameter("pokojCena"));%>">
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Całkowita liczba pokoi:
                </div>
                <div class="col-lg-3">
                    <input type="number" name="pokojLiczbaCalkowita" value="<%out.print(request.getParameter("pokojLiczbaCalkowita"));%>">
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Liczba obsadzonych pokoi:
                </div>
                <div class="col-lg-3">
                    <input type="number" name="pokojLiczbaObsadzonych" value="<%out.print(request.getParameter("pokojLiczbaObsadzonych"));%>">
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Liczba analizowanych dni:
                </div>
                <div class="col-lg-3">
                    <input type="number" name="liczbaDni" value="<%out.print(request.getParameter("liczbaDni"));%>">
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Wybierz metodę:
                </div>

                <div class="col-lg-3">
                    <select name="metryka">
                        <option>RevPAR</option>
                        <option>TRevPAR</option>
                        <option>RevPOR</option>
                    </select>
                </div>

                <div class="w-100"></div>
                <div class="col-lg-2 offset-lg-5">
                    <input type="submit" value="Oblicz">
                </div>

                <div class="w-100"></div>
                <div class="col-lg-3 offset-lg-3">
                    Wynik:
                </div>

                <div class="col-lg-3">
                    <%
                        int averagePricePerDay = 0;
                        int allRoomsNumber = 0;
                        int roomOccupationNumber = 0;
                        int timePeriod = 0;
                        String method = null;
                        double result = 0;
                        boolean isOk = false;

                        try {
                            String temp1 = request.getParameter("pokojCena");
                            String temp2 = request.getParameter("pokojLiczbaCalkowita");
                            String temp3 = request.getParameter("pokojLiczbaObsadzonych");
                            String temp4 = request.getParameter("liczbaDni");

                            if (temp1.isEmpty() || temp2.isEmpty() || temp3.isEmpty() || temp4.isEmpty()) {
                                throw new IllegalArgumentException();
                            } else {
                                isOk = true;
                            }//end of elseif
                        } catch (IllegalArgumentException e) {
                            out.print("Proszę wpisać wszystkie parametry.");
                        }//end of try catch

                        if (isOk) {
                            try {
                                isOk = false;
                                averagePricePerDay = Integer.parseInt(request.getParameter("pokojCena"));
                                allRoomsNumber = Integer.parseInt(request.getParameter("pokojLiczbaCalkowita"));
                                roomOccupationNumber = Integer.parseInt(request.getParameter("pokojLiczbaObsadzonych"));
                                timePeriod = Integer.parseInt(request.getParameter("liczbaDni"));
                                method = request.getParameter("metryka");
                                result = 0;

                                if (averagePricePerDay <= 0 || allRoomsNumber <= 0 || roomOccupationNumber <= 0 || timePeriod <= 0 || allRoomsNumber<roomOccupationNumber) {
                                    throw new IllegalArgumentException();
                                } else {
                                    isOk = true;
                                }//end of elseif
                            } catch (IllegalArgumentException e) {
                                out.print("Proszę wpisać poprawne wartości.");
                            }//end of try catch
                        }//end of if

                        if (isOk) {
                            switch (method) {
                                case "RevPAR":
                                    result = MetricsCalculator.revpar(averagePricePerDay, allRoomsNumber, roomOccupationNumber, timePeriod);
                                    break;
                                case "TRevPAR":
                                    result = MetricsCalculator.trevpar(averagePricePerDay, allRoomsNumber);
                                    break;
                                case "RevPOR":
                                    result = MetricsCalculator.revpor(averagePricePerDay, roomOccupationNumber);
                                    break;
                            }//end of switch

                            String message = String.format("%.2f", result);
                            out.print(message);
                        }//end of if
                    %>
                </div>

                <div class="w-100"></div>
                <div class="col-lg-2 offset-lg-6">
                    <div class="stronaGlowna">
                        <a href="index.jsp" style="font-size:15px;"><br/>Strona główna</a>
                        <a href="ranking.jsp" style="font-size:15px;"><br/>Ranking</a>
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
