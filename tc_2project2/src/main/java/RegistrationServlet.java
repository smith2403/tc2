import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve form data
		String fullName = request.getParameter("fullname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		

		// Create Registration object
		Registration registration = new Registration(fullName, username, password, email);

		// Save registration to the database using RegistrationDAO
		RegistrationDAO registrationDAO = new RegistrationDAO();
		registrationDAO.saveRegistration(registration);

		// Dispatch to a JSP page for further processing or displaying a success message
		request.getRequestDispatcher("register-success.jsp").forward(request, response);
	}
}
