package ru.itis.javalab.db.lesson06;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;

public class Insertion {
    static Random r = new Random();
    static ArrayList<Integer> list = new ArrayList<>();

    static {
        for (int i = 1; i <= 400; i++) {
            list.add(i);
        }
    }
    private static final int N = 1000000;
    public static void main(String[] args) throws SQLException {
        String url = "jdbc:postgresql://localhost/schedule?user=postgres&password=postgres";
        Connection conn = DriverManager.getConnection(url);
        conn.setAutoCommit(false);

        PreparedStatement preparedStatement = conn.prepareStatement(
                "INSERT INTO t2_resource(tags) VALUES (?);");
        for (int i = 0; i < N; i++) {
            int countForOne = r.nextInt(50) + 100;
            Collections.shuffle(list);
            Integer[] arr = new Integer[countForOne];
            for (int j = 0; j < countForOne; j++) {
                arr[j] = list.get(j);
            }
            Array a = conn.createArrayOf("int", arr);
            preparedStatement.setArray(1, a);
            preparedStatement.addBatch();
            if (i % 1000 == 0) {
                preparedStatement.executeBatch();
                if (i % 10000 == 0) {
                    conn.commit();
                }
            }
        }
        preparedStatement.executeBatch();
        conn.commit();

    }

}
