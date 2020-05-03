package ts_lab7.dbutils;

import ts_lab7.entities.Reservation;

import javax.swing.*;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;

public class DBUtilClient extends DBUtil{
    private String url;
    private String name;
    private String password;

    public DBUtilClient(String url, String name, String password) {
        this.url = url;
        this.name = name;
        this.password = password;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }



    public void addReservation(Reservation reservation) throws Exception{

        Connection conn = null;
        PreparedStatement statement = null;

        try{
            conn = DriverManager.getConnection(url,name,password);

            String sql = "insert into reservations(reservation_name,reservation_surname,reservation_email,reservation_date_from,reservation_date_to,reservation_room_id,reservation_cost) values(?,?,?,?,?,?,?)";

            statement=conn.prepareStatement(sql);
            statement.setString(1,reservation.getName());
            statement.setString(2,reservation.getSurname());
            statement.setString(3,reservation.getEmail());
            statement.setString(4, reservation.getDateFrom());
            statement.setString(5, reservation.getDateTo());
            statement.setInt(6,reservation.getRoomId());
            statement.setDouble(7,reservation.getCost());

            statement.execute();

        }finally {
            close(conn,statement,null);
        }

    }

    public int getRoomId(String roomName) throws Exception {
        int roomId;

        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try{
            conn=DriverManager.getConnection(url,name,password);

            String sql = "select room_id from rooms where room_type=?";
            statement = conn.prepareStatement(sql);
            statement.setString(1,roomName);
            resultSet = statement.executeQuery();

            if (resultSet.next()){
                roomId = resultSet.getInt("room_id");
            }else {
                throw new Exception("Room id not found");
            }

            return roomId;

        } finally {
            close(conn,statement,null);
        }
    }

    public double getRoomPrice(int id) throws Exception {
        double roomPrice;

        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try{
            conn=DriverManager.getConnection(url,name,password);

            String sql = "select room_price from rooms where room_id=?";
            statement = conn.prepareStatement(sql);
            statement.setInt(1,id);
            resultSet = statement.executeQuery();

            if (resultSet.next()){
                roomPrice = resultSet.getInt("room_price");
            }else {
                throw new Exception("Room Price not found");
            }

            return roomPrice;

        } finally {
            close(conn,statement,null);
        }
    }

}//end of class
