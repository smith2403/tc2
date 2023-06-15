import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/analyst")
public class AnalystServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("analyst.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Perform authentication logic here
        if (username.equals("user1") && password.equals("pass1")) {
            // Authentication successful
            request.getSession().setAttribute("username", username);
            response.sendRedirect("AnalystDetails.jsp"); // Redirect to the analyst dashboard servlet or page
        } else {
            // Authentication failed
            request.setAttribute("error", "Invalid credentials");
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }
    }
}
