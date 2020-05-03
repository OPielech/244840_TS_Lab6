package ts_lab7.servlets;

import ts_lab7.dbutils.DBUtilAdmin;
import ts_lab7.dbutils.DBUtilClient;
import ts_lab7.entities.Reservation;
import ts_lab7.entities.Room;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
    private DBUtilAdmin dbUtilAdmin;
    private final String DB_URL = "jdbc:mysql://localhost:3306/hotel?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=CET";

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        try {
            dbUtilAdmin = new DBUtilAdmin(DB_URL);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String login = request.getParameter("inputLogin");
        String password = request.getParameter("inputPassword");

        dbUtilAdmin.setName(login);
        dbUtilAdmin.setPassword(password);

        if (validate(login, password)) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/admin-view.jsp");

            List<Reservation> reservationList = null;
            List<Room> roomList = null;

            try {
                reservationList = dbUtilAdmin.getReservations();
                roomList = dbUtilAdmin.getRooms();
            } catch (Exception e) {
                e.printStackTrace();
            }

            request.setAttribute("RESERVATION_LIST", reservationList);
            request.setAttribute("ROOM_LIST", roomList);
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/admin-logowanie-error.html");
            dispatcher.forward(request, response);
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String command = request.getParameter("command");
            if (command == null)
                command = "LIST";

            switch (command) {
                case "LIST":
                    listReservations(request, response);
                    break;
                case "DELETE":
                    deleteReservation(request, response);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void listReservations(HttpServletRequest request, HttpServletResponse response) throws Exception {

        List<Reservation> reservationList = dbUtilAdmin.getReservations();
        List<Room> roomList = dbUtilAdmin.getRooms();

        request.setAttribute("RESERVATION_LIST", reservationList);
        request.setAttribute("ROOM_LIST", roomList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin-view.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteReservation(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = request.getParameter("ID");
        dbUtilAdmin.deleteReservation(id);
        listReservations(request, response);
    }

    private boolean validate(String login, String password) {
        boolean status = false;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            e.printStackTrace();

        }

        Connection conn = null;

        try {

            conn = DriverManager.getConnection(DB_URL, login, password);
            status = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}//end of class
