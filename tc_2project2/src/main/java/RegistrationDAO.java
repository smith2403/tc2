import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegistrationDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/tcproj";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "123456";

	public RegistrationDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("MySQL JDBC driver loaded successfully.");
		} catch (ClassNotFoundException e) {
			System.out.println("Failed to load MySQL JDBC driver.");
			e.printStackTrace();
		}
	}

	public void saveRegistration(Registration registration) {
		try (Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
			String sql = "INSERT INTO users (fullname, username, password, email) VALUES (?, ?, ?, ?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, registration.getFullName());
			stmt.setString(2, registration.getUsername());
			stmt.setString(3, registration.getPassword());
			stmt.setString(4, registration.getEmail());
	
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
