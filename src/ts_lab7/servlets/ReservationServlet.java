package ts_lab7.servlets;

import ts_lab7.calculators.ReservationCostCalculator;
import ts_lab7.dbutils.DBUtilClient;
import ts_lab7.entities.Reservation;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    private DBUtilClient dbUtilClient;
    private final String DB_URL = "jdbc:mysql://localhost:3306/hotel?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=CET";
    private double priceForReservation;
    private int roomId;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        try {
            dbUtilClient = new DBUtilClient(DB_URL, "customer", "customer");
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

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
                    isOk = false;
                    throw new IllegalArgumentException();
                } else {
                    long days = ChronoUnit.DAYS.between(dateFrom, dateTo);
                    String room = request.getParameter("pokoj");
                    double priceForRoom;

                    roomId = dbUtilClient.getRoomId(room);
                    priceForRoom = dbUtilClient.getRoomPrice(roomId);

                    priceForReservation = ReservationCostCalculator.calculate(days, priceForRoom);

                    request.setAttribute("priceForReservation", priceForReservation);
                }
            }
        } catch (Exception e) {
            response.setContentType("text/html");
            response.setCharacterEncoding("UTF-8");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/rezerwacje-error.html");
            dispatcher.forward(request, response);
        }

        if (isOk) {
            try {
                addReservation(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher("/rezerwacje-response.jsp");
            dispatcher.forward(request, response);

        }

    }

    private void addReservation(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String name = request.getParameter("klientImie");
        String surname = request.getParameter("klientNazwisko");
        String email = request.getParameter("klientEmail");
        String dateFrom = request.getParameter("klientDataOd");
        String dateTo = request.getParameter("klientDataDo");

        Reservation reservation = new Reservation(name, surname, email, dateFrom, dateTo, roomId, priceForReservation);
        dbUtilClient.addReservation(reservation);
    }

}//end of class
