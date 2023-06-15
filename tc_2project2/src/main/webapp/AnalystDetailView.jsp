<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>
<head>
<title>Analyst Details</title>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}
</style>
</head>
<body>
	<h1>Analyst Data</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>User Name</th>
			<th>Password</th>

		</tr>
		<%
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/analyst_db", "root", "123456");
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM analysts");

			while (resultSet.next()) {
				String id = resultSet.getString("id");
				String username = resultSet.getString("username");
				String password = resultSet.getString("password");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=username%></td>
			<td><%=password%></td>
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
</body>
</html>