package ru.kpfu.itis.javalab.lesson01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException {
        String url = "jdbc:postgresql://localhost/javalab_db?user=postgres&password=postgres";
        Connection conn = DriverManager.getConnection(url);
    }
}
