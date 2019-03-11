package ru.itis.javalab.db.lesson04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TagsInsertion {
    private final static int N = 400;

    public static void main(String[] args) throws SQLException {
        String url = "jdbc:postgresql://localhost/schedule?user=postgres&password=postgres";
        Connection conn = DriverManager.getConnection(url);
        conn.setAutoCommit(false);
        PreparedStatement preparedStatement = conn.prepareStatement(
                "INSERT INTO t1_tag(title) VALUES (?);");
        for (int i = 0; i < N; i++) {
            preparedStatement.setString(1, "tag" + i);
            preparedStatement.addBatch();
        }
        preparedStatement.executeBatch();
        conn.commit();
    }
}
