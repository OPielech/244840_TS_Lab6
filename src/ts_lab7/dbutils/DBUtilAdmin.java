package ts_lab7.dbutils;

import ts_lab7.entities.Reservation;
import ts_lab7.entities.Room;

import javax.swing.*;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DBUtilAdmin extends DBUtil {
    private String url;
    private String name;
    private String password;

    public DBUtilAdmin(String url) {
        this.url = url;
    }

    public DBUtilAdmin(String url, String name, String password) {
        this.url = url;
        this.name = name;
        this.password = password;
    }

    public List<Reservation> getReservations() throws Exception {

        List<Reservation> reservations = new ArrayList<>();

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(url, name, password);

            String sql = "select * from reservations";
            statement = connection.createStatement();

            resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                int id = resultSet.getInt("reservation_id");
                String name = resultSet.getString("reservation_name");
                String surname = resultSet.getString("reservation_surname");
                String email = resultSet.getString("reservation_email");
                String dateFrom = resultSet.getString("reservation_date_from");
                String dateTo = resultSet.getString("reservation_date_to");
                int roomId = resultSet.getInt("reservation_room_id");
                double cost = resultSet.getDouble("reservation_cost");

                reservations.add(new Reservation(id, name, surname, email, dateFrom, dateTo, roomId, cost));
            }
        } finally {
            close(connection, statement, resultSet);
        }

        return reservations;
    }//end of getReservations

    public void deleteReservation(String id) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            int reservationId = Integer.parseInt(id);
            connection = DriverManager.getConnection(url, name, password);
            String sql = "delete from reservations where reservation_id=?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, reservationId);
            statement.execute();
        } finally {
            close(connection, statement, null);
        }
    }

    public List<Room> getRooms() throws Exception {

        List<Room> rooms = new ArrayList<>();

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(url, name, password);

            String sql = "select * from rooms";
            statement = connection.createStatement();

            resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                int id = resultSet.getInt("room_id");
                String type = resultSet.getString("room_type");
                double price = resultSet.getDouble("room_price");

                rooms.add(new Room(id, type, price));
            }
        } finally {
            close(connection, statement, resultSet);
        }

        return rooms;
    }//end of getRooms


    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}//end of class
