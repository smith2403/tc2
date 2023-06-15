<!DOCTYPE html>
<html>
<head>
  <title>User Dashboard</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    body {
     background-color: rgb(97, 152, 207);
    }

    .container {
      margin-top: 100px;
    }

    .card {
      background-color: rgba(255, 255, 255, 0.8);
    }

    h1{
      font-size: 60px;
      font-family:'Times New Roman', Times, serif;
      font-weight: bolder;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1 class="text-center text-white">Admin Dashboard</h1>
    <div class="row">
      <div class="col-sm-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">User Details</h5>
            <p class="card-text">View and manage user details.</p>
            <a href="Userdetails.jsp" class="btn btn-primary">Go to User Details</a>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Product Details</h5>
            <p class="card-text">View and manage product details.</p>
            <a href="ProductDetails.jsp" class="btn btn-primary">Go to Product Details</a>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Analyst Details</h5>
            <p class="card-text">View and manage analyst details.</p>
            <a href="AnalystDetailView.jsp" class="btn btn-primary">Go to Analyst Details</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>