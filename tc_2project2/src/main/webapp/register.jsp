<!DOCTYPE html>
<html lang="en">

<head>
	<title>User Registration</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
		body {
			background-image: url(https://cdn.pixabay.com/photo/2016/10/22/17/46/mountains-1761292_960_720.jpg);
			background-attachment: fixed;
			background-repeat: no-repeat;
			background-size: 100% 100%;

		}

		.registration-form {
			max-width: 400px;
			margin: 0 auto;
			padding: 20px;
			border: 1px solid #ccc;
			border-radius: 25px;
			margin-top: 70px;
			background-color: rgba(210, 168, 112, 0.263);
		}

		.registration-form h2 {
			text-align: center;
			margin-bottom: 20px;
			font-weight: bolder;
			color: white;
			font-family: 'Times New Roman', Times, serif;
		}

		.registration-form .form-group label {
			font-weight: bold;

		}

		.registration-form .form-group input {
			width: 100%;
			padding: 10px;
			border: 1px solid #cccccc10;
			border-radius: 5px;
		}

		.registration-form .form-group button {
			width: 100%;
			padding: 10px;
			background-color: rgb(231, 192, 142);
			color: black;
			font-size: 20px;
			font-weight: bold;
			border-radius: 1px solid black;
		}

		.arrow {
			width: 70px;
			background-color: rgba(158, 158, 158, 0.415);
			border: 1px solid;
			border-radius: 15px;
			margin-left: 20px;
			margin-top: 10px;
			
		}

		img {
			width: 40px;
			
		}
	</style>
</head>

<body>
	<a href="home.jsp">
		<button class="arrow" type="button">Home</button>
	</a>
	<div class="container">
		<div class="registration-form">
			<h2>User Registration</h2>
			<form action="register" method="POST">

				<div class="form-group">
					<label for="fullname">Full Name:</label> <input type="text" id="fullname" name="fullname" required>
				</div>
				<div class="form-group">
					<label for="username">Username:</label> <input type="text" id="username" name="username" required>
				</div>
				<div class="form-group">
					<label for="password">Password:</label> <input type="password" id="password" name="password"
						required>
				</div>
				<div class="form-group">
					<label for="email">Email:</label> <input type="email" id="email" name="email" required>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">Register</button>
				</div>
			</form>
		</div>
	</div>

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>