<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>
<head>
<title>Product Data</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
		<h2>Analyst Product Page</h2>
		<br>

	</div>

	<h1>Product Data</h1>

	<table width='1600' id="sig" cellspacing='0' cellpadding='0'
		border-spacing='0' style="margin: 0; padding: 0;">
		<tr>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Product Description</th>
			<th>Functionality</th>
			<th>Performance</th>
			<th>Usability</th>
			<th>Cost</th>
			<th>Value</th>
			<th>Environmental Impact</th>
			<th>Customer feedback</th>

		</tr>
		<%
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "root", "123456");
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM products1");

			while (resultSet.next()) {
				String productId = resultSet.getString("id");
				String productName = resultSet.getString("productname");
				String productDescription = resultSet.getString("productdescription");
				String Functionality = resultSet.getString("functionality");
				String performance = resultSet.getString("performance");
				String Usability = resultSet.getString("usability");
				String Cost = resultSet.getString("cost");
				String Value = resultSet.getString("value");
				String environmentalImpact = resultSet.getString("environmental_impact");
				String custfeed = resultSet.getString("customer_feedback");
		%>
		<tr>
			<td><%=productId%></td>
			<td><%=productName%></td>
			<td><%=productDescription%></td>
			<td><%=Functionality%></td>
			<td><%=performance%></td>
			<td><%=Usability%></td>
			<td><%=Cost%>
			<td><%=Value%>
			<td><%=environmentalImpact%></td>
			<td><%=custfeed%></td>
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
			<a href="product.jsp" class="btn btn-primary btn-lg"
				style="background-color: #4CAF50;">Add Product</a> <a
				href="ProductDetails.jsp" class="btn btn-primary btn-lg"
				style="background-color: blue;">Update and Delete Product</a>
		</div>

		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
		<script>
			document.getElementById("downloadPDF").addEventListener("click",
					function() {
						var element = document.body;
						var opt = {
							margin : 0,
							filename : 'my_website.pdf',
							image : {
								type : 'jpeg',
								quality : 0.98
							},
							html2canvas : {
								scale : 2
							},
							jsPDF : {
								unit : 'in',
								format : 'letter',
								orientation : 'portrait'
							}
						};

						html2pdf().set(opt).from(element).save();
					});
		</script>
</body>
</html>