package ru.itis.javalab.db.lesson04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;

public class ResourceTagInsertion {
    private static final int N = 1000000;
    private static List<Integer> tagIds = new ArrayList<>();

    static {
        for (int i = 1; i < 400; i++) {
            tagIds.add(i);
        }
    }

    private static Random r = new Random();

    public static void main(String[] args) throws SQLException {
        String url = "jdbc:postgresql://localhost/schedule?user=postgres&password=postgres";
        Connection conn = DriverManager.getConnection(url);
        conn.setAutoCommit(false);
        PreparedStatement preparedStatement = conn.prepareStatement(
                "INSERT INTO t1_tag_resource(tag_id, resource_id) VALUES (?, ?);");
        for (int i = 0; i < N; i++) {
            int tagsCount = 50 + r.nextInt(100);
            Collections.shuffle(tagIds);
            for (int j = 0; j < tagsCount; j++) {
                preparedStatement.setInt(1, tagIds.get(j));
                preparedStatement.setInt(2, i);
                preparedStatement.addBatch();
            }
            if (i % 10000 == 0) {
                preparedStatement.executeBatch();
                conn.commit();
            }
        }
        preparedStatement.executeBatch();
        conn.commit();
    }
}
