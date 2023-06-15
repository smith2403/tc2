import java.sql.*;

public class ProductDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/product";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "123456";

    public void saveProduct(Product product) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String query = "INSERT INTO products1 (id, productname, productdescription, functionality, performance, " +
                           "usability, cost, value, environmental_impact, customer_feedback) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, product.getId());
            statement.setString(2, product.getProductname());
            statement.setString(3, product.getProductdescription());
            statement.setString(4, product.getFunctionality());
            statement.setString(5, product.getPerformance());
            statement.setString(6, product.getUsability());
            statement.setString(7, product.getCost());
            statement.setString(8, product.getValue());
            statement.setString(9, product.getEnvironmental_impact());
            statement.setString(10, product.getCustomer_feedback());

            statement.executeUpdate();
            System.out.println("Product saved successfully!");

            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        
    }
    public boolean deleteProduct(String productname ) {
    	try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            String query = "DELETE FROM products1 WHERE productName = ?";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, productname);
            int row = statement.executeUpdate();
            return row>0;
            
    	}
    	catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }return false;
    }
    
    public void updateProduct(Product product) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String query = "UPDATE products1 SET productname=?, productdescription=?, functionality=?, performance=?, " +
                           "usability=?, cost=?, value=?, environmental_impact=?, customer_feedback=? WHERE id=?";

            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, product.getProductname());
            statement.setString(2, product.getProductdescription());
            statement.setString(3, product.getFunctionality());
            statement.setString(4, product.getPerformance());
            statement.setString(5, product.getUsability());
            statement.setString(6, product.getCost());
            statement.setString(7, product.getValue());
            statement.setString(8, product.getEnvironmental_impact());
            statement.setString(9, product.getCustomer_feedback());
            statement.setString(10, product.getId());

            statement.executeUpdate();
            System.out.println("Product updated successfully!");

            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
