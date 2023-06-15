<!DOCTYPE html>
<html>
<head>
  <title>Login Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    body {
      padding-top: 40px;
      background-image: url('https://www.pcclean.io/wp-content/uploads/2020/4/JjUjya.jpg');
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    .card {
      max-width: 400px;
      padding: 30px;
      background-color: rgba(192, 118, 118, 0.319);
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      margin: 0 auto;
      border: 1px solid rgb(29, 3, 3);
      border-radius: 30px;
    }
    .card-title {
      text-align: center;
      font-weight: bold;
      font-family: 'Times New Roman', Times, serif;
      font-size: 30px;
    }
    .form-group {
      margin-bottom: 20px;
      font-weight: bold;
    }
    .form-control {
      height: 40px;
    }
    .btn-login {
      padding: 12px 30px;
      font-size: 18px;
      border-radius: 20px;
      background-color: rgb(175, 89, 89); /* Light brown color */
      color: #fff; /* Text color */
    }
    .error-message {
      color: red;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="card">
      <h5 class="card-title">Login</h5>
      <form method="POST" action="login">
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" class="form-control" id="username" name="username" required>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block btn-login">Login</button>
      </form>
      <!-- <% String error = (String) request.getAttribute("error"); %>
      <% if (error != null) { %>
        <p class="error-message"><%= error %></p>
      <% } %> -->
    </div>
  </div>
</body>
</html>