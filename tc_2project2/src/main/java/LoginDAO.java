import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    private String jdbcUrl = "jdbc:mysql://localhost:3306/admin_module"; // Replace with your database URL
    private String username = "root"; // Replace with your database username
    private String password = "123456"; // Replace with your database password

    public boolean validate(Login login) {
        String sql = "SELECT * FROM admins WHERE username = ? AND password = ?";
        
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
        try (Connection conn = DriverManager.getConnection(jdbcUrl, username, password);
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, login.getUsername());
            stmt.setString(2, login.getPassword());
            ResultSet rs = stmt.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}