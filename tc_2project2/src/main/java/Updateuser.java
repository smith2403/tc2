

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Updateuser
 */
@WebServlet("/Updateuser")
public class Updateuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updateuser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String type = request.getParameter("usertype");
		String URL = "jdbc:mysql://localhost:3306/tcproj";
		String USERNAME = "root";
		String PASSWORD = "123456";
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				System.out.println("MySQL JDBC driver loaded successfully.");
			} catch (ClassNotFoundException e) {
				System.out.println("Failed to load MySQL JDBC driver.");
				e.printStackTrace();
			}
			try (Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
				String sql = "INSERT INTO users (fullname, username, password, email) VALUES (?, ?, ?, ?)";
				sql = "UPDATE users set usertype=? where id=?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setString(1,type );
				stmt.setString(2,id);
		
				stmt.executeUpdate();
				RequestDispatcher dispatcher = request.getRequestDispatcher("Userdetails.jsp");
				dispatcher.forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

}
