import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

	String productId = request.getParameter("id");
    String productname = request.getParameter("productname");
    String productdescription = request.getParameter("productdescription");
    String functionality = request.getParameter("functionality");
    String performance = request.getParameter("performance");
    String usability = request.getParameter("usability");
    String cost = request.getParameter("cost");
    String value = request.getParameter("value");
    String environmental_impact = request.getParameter("environmentalImpact");
    String customer_feedback = request.getParameter("custfeed");

    Product product = new Product();
    product.setId(productId);
    product.setProductname(productname);
    product.setProductdescription(productdescription);
    product.setFunctionality(functionality);
    product.setPerformance(performance);
    product.setUsability(usability);
    product.setCost(cost);
    product.setValue(value);
    product.setEnvironmental_impact(environmental_impact);
    product.setCustomer_feedback(customer_feedback);

    ProductDAO productDAO = new ProductDAO();
    
    productDAO.saveProduct(product);

    // Optional: You can redirect the user to a success page or display a success message here
    response.sendRedirect("Success.jsp");
}
}
