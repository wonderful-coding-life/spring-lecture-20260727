import lombok.extern.slf4j.Slf4j;

import java.sql.*;

@Slf4j
public class Main {
    public static void main(String[] args) throws SQLException {
        Connection connection = DriverManager.getConnection("jdbc:mysql://54.180.229.47:3306/tutor",
                "tutor",
                "tutorp");

        PreparedStatement preparedStatement = connection.prepareStatement(
                "SELECT * FROM member WHERE id = ?"
        );
        preparedStatement.setLong(1, 3L);

        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            Member member = new Member();
            member.setId(resultSet.getLong("id"));
            member.setName(resultSet.getString("name"));
            member.setEmail(resultSet.getString("email"));
            member.setAge(resultSet.getInt("age"));
            log.info("회원 {}", member);
        }

        resultSet.close();
        preparedStatement.close();
        connection.close();
    }

    public static void main2(String[] args) throws SQLException {
        Connection connection = DriverManager.getConnection("jdbc:mysql://54.180.229.47:3306/tutor",
                "tutor",
                "tutorp");

        Statement statement = connection.createStatement();

        ResultSet resultSet = statement.executeQuery("SELECT * FROM member");
        while (resultSet.next()) {
            Member member = new Member();
            member.setId(resultSet.getLong("id"));
            member.setName(resultSet.getString("name"));
            member.setEmail(resultSet.getString("email"));
            member.setAge(resultSet.getInt("age"));
            log.info("회원 {}", member);
        }

        resultSet.close();
        statement.close();
        connection.close();
    }
}
