<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>
<head>
  <title>Product Data</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      padding: 20px;
    }

    .container {
      max-width: 1600px;
      margin: 0 auto;
    }

    h2 {
      text-align: center;
      margin-bottom: 30px;
    }

    .button-container {
      display: flex;
      justify-content: center;
    }

    .btn {
      margin-right: 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>User Product Page</h2>
    <br>
  </div>
  <h1>Product Data</h1>

  <table width="1600" id="sig" cellspacing="0" cellpadding="0" border-spacing="0" style="margin: 0; padding: 0;">
    <tr>
      <th>ID</th>
      <th>Product Name</th>
      <th>Product Description</th>
      <th>Functionality</th>
      <th>Performance</th>
      <th>Usability</th>
      <th>Cost</th>
      <th>Value</th>
      <th>Environmental Impact</th>
      <th>Customer Feedback</th>
    </tr>
    <% 
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "root", "123456");
      Statement statement = connection.createStatement();
      ResultSet resultSet = statement.executeQuery("SELECT * FROM products1");

      while (resultSet.next()) {
        String id = resultSet.getString("id");
        String productname = resultSet.getString("productname");
        String productdescription = resultSet.getString("productdescription");
        String functionality = resultSet.getString("functionality");
        String performance = resultSet.getString("performance");
        String usability = resultSet.getString("usability");
        String cost = resultSet.getString("cost");
        String value = resultSet.getString("value");
        String environmental_impact = resultSet.getString("environmental_impact");
        String customer_feedback = resultSet.getString("customer_feedback");
    %>
    <tr>
      <td><%=id%></td>
      <td><%=productname%></td>
      <td><%=productdescription%></td>
      <td><%=functionality%></td>
      <td><%=performance%></td>
      <td><%=usability%></td>
      <td><%=cost%></td>
      <td><%=value%></td>
      <td><%=environmental_impact%></td>
      <td><%=customer_feedback%></td>
    </tr>
    <%
      }
      resultSet.close();
      statement.close();
      connection.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
    %>
  </table>

  <button class="button" id="downloadPDF">Download as PDF</button>
  <div class="container">
    <br>
    <div class="button-container">
      <a href="product.jsp" class="btn btn-primary btn-lg" style="background-color: #4CAF50;">Add Product</a>
      <a href="ProductDetails.jsp" class="btn btn-primary btn-lg" style="background-color: red;">Update & Delete Product</a>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
    <script>
      document.getElementById("downloadPDF").addEventListener("click", function() {
        var element = document.body;
        var opt = {
          margin: 0,
          filename: 'my_website.pdf',
          image: { type: 'jpeg', quality: 0.98 },
          html2canvas: { scale: 2 },
          jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
        };

        html2pdf().set(opt).from(element).save();
      });
    </script>
  </div>
</body>
</html>
