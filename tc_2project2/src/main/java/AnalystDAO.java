import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AnalystDAO {
    private final String url = "jdbc:mysql://localhost:3306/analyst_db"; // Replace with your actual database URL
    private final String username = "root"; // Replace with your database username
    private final String password = "123456"; // Replace with your database password

    public Analyst getAnalystByUsername(String username) {
        String sql = "SELECT * FROM analysts WHERE username = ?";
        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String password = rs.getString("password");
                return new Analyst(id, username, password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Other methods for CRUD operations (create, update, delete) on Analyst objects can be added here
}
