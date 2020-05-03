package ts_lab7.entities;

import java.time.LocalDate;
import java.util.Date;

public class Reservation {

    private int id;
    private String name;
    private String surname;
    private String email;
    private String dateFrom;
    private String dateTo;
    private int roomId;
    private double cost;

    public Reservation(int id, String name, String surname, String email, String dateFrom, String dateTo, int roomId, double cost) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.dateFrom = dateFrom;
        this.dateTo = dateTo;
        this.roomId = roomId;
        this.cost = cost;
    }

    public Reservation(String name, String surname, String email, String dateFrom, String dateTo, int roomId, double cost) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.dateFrom = dateFrom;
        this.dateTo = dateTo;
        this.roomId = roomId;
        this.cost = cost;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId (int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(String dateFrom) {
        this.dateFrom = dateFrom;
    }

    public String getDateTo() {
        return dateTo;
    }

    public void setDateTo(String dateTo) {
        this.dateTo = dateTo;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId (int roomId) {
        this.roomId = roomId;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }
}
