import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminController extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    Login login = new Login(username, password);
    LoginDAO loginDao = new LoginDAO();
    boolean isValidUser = loginDao.validate(login);
    
    if (isValidUser) {
      RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
      dispatcher.forward(request, response);
    } else {
      RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
      dispatcher.forward(request, response);
    }
  }
}