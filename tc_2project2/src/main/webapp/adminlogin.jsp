<!DOCTYPE html>
<html>

<head>
  <title>Admin Login</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    body {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      background-color: #f5f5f5;
      background-image: url('https://wallpapercave.com/wp/wp4390828.jpg');
      background-repeat: no-repeat;
      background-size: cover;
    }

    .card {
      max-width: 350px;
      margin: 0 auto;
      padding: 20px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      background-color: rgb(122, 163, 203);
      border-radius: 15px;
    }

    .card-header {
      text-align: center;
      font-weight: bold;
      font-size: 24px;
      margin-bottom: 20px;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .btn-login {
      width: 100%;
    }

    .arrow img {
      width: 70px;
      background-color: rgba(158, 158, 158, 0.415);
      border: 1px solid;
      border-radius: 15px;
      margin-left: 20px;
      margin-top: 10px;
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-6 col-md-8">
        <div class="card">
          <div class="card-header">
            Admin Login
          </div>
          <form action="LoginServlet" method="POST">
            <div class="form-group">
              <label for="username">Username:</label>
              <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
              <label for="password">Password:</label>
              <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
          </form>
        </div>
      </div>
    </div>
  </div>

  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>