import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    Connection connection;

    public MySQLAdsDao(Config config) {

        try {
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {

        List<Ad> ads = new ArrayList<>();
        String selectQuery = "SELECT * FROM ads";

        Statement stmt;
        try {
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(selectQuery);

            while (rs.next()) {
                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        String selectQuery = String.format(
                "INSERT INTO ads (user_id, title, description) VALUES ('%d', '%s', '%s')",
                ad.getUserId(),
                ad.getTitle(),
                ad.getDescription()
        );

        Statement stmt;
        try {
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(selectQuery);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return null;
    }
}
