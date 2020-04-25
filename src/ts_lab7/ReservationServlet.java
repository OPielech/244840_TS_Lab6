package ts_lab7;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        boolean isOk = false;

        String temp1 = request.getParameter("klientImie");
        String temp2 = request.getParameter("klientNazwisko");
        String temp3 = request.getParameter("klientEmail");
        String temp4 = request.getParameter("klientDataOd");
        String temp5 = request.getParameter("klientDataDo");

        try {
            if (temp1.isEmpty() || temp2.isEmpty() || temp3.isEmpty() || temp4.isEmpty() || temp5.isEmpty()) {
                throw new IllegalArgumentException();
            } else {
                isOk = true;

                LocalDate dateFrom = LocalDate.parse(request.getParameter("klientDataOd"));
                LocalDate dateTo = LocalDate.parse(request.getParameter("klientDataDo"));

                if (dateTo.isBefore(dateFrom)) {
                    throw new IllegalArgumentException();
                } else {
                    long days = ChronoUnit.DAYS.between(dateFrom, dateTo);
                    String room = request.getParameter("pokoj");
                    int priceForRoom;
                    ServletContext servletContext = getServletContext();

                    switch (room) {
                        case "Jednoosobowy":
                            priceForRoom = Integer.parseInt(servletContext.getInitParameter("singleRoom"));
                            break;
                        case "Dwuosobowy":
                            priceForRoom = Integer.parseInt(servletContext.getInitParameter("doubleRoom"));
                            break;
                        case "Rodzinny":
                            priceForRoom = Integer.parseInt(servletContext.getInitParameter("familyRoom"));
                            break;
                        default:
                            priceForRoom = Integer.parseInt(servletContext.getInitParameter("couplesRoom"));
                            break;
                    }

                    double priceForReservation = ReservationCostCalculator.calculate(days, priceForRoom);

                    request.setAttribute("priceForReservation", priceForReservation);
                }
            }
        } catch (IllegalArgumentException e) {
            response.setContentType("text/html");
            response.setCharacterEncoding("UTF-8");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/rezerwacje-error.html");
            dispatcher.forward(request, response);
        }

        if (isOk) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/rezerwacje-response.jsp");
            dispatcher.forward(request, response);
        }

    }
}
