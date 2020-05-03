package ts_lab7.dbutils;

import ts_lab7.entities.Reservation;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

public class DBUtil {

    public static void close(Connection conn, Statement statement, ResultSet resultSet) {

        try {

            if (resultSet != null)
                resultSet.close();

            if (statement != null)
                statement.close();

            if (conn != null)
                conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
