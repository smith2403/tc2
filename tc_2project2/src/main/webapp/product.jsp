<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <style>
    body{
        background-color: rgb(132, 155, 198);
    }
 </style>

</head>

<body>
    <div class="container mt-5">
        <h1>Product Details</h1>
        <form method="POST" action="product">
            <div class="row">
                <div class="col-md-6">
                <div class="form-group">
                        <label for="productname">Product name:</label>
                        <input type="text" class="form-control" id="productname" name="productname">
                    </div>
                    <div class="form-group">
                        <label for="productdescription">Product Description:</label>
                        <input type="text" class="form-control" id="productdescription" name="productdescription">
                    </div>
                    <div class="form-group">
                        <label for="functionality">Functionality:</label>
                        <input type="text" class="form-control" id="functionality" name="functionality">
                    </div>
                    <div class="form-group">
                        <label for="performance">Performance:</label>
                        <input type="text" class="form-control" id="performance" name="performance">
                    </div>
                    <div class="form-group">
                        <label for="usability">Usability:</label>
                        <input type="text" class="form-control" id="usability" name="usability">
                    </div>
                    <div class="form-group">
                        <label for="cost">Cost:</label>
                        <input type="text" class="form-control" id="cost" name="cost">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="value">Value:</label>
                        <input type="text" class="form-control" id="value" name="value">
                    </div>
                    <div class="form-group">
                        <label for="environmentalImpact">Environmental Impact:</label>
                        <input type="text" class="form-control" id="environmentalImpact" name="environmentalImpact">
                    </div>
                    <div class="form-group">
                        <label for="custfeed">Customer Feedback:</label>
                        <input type="text" class="form-control" id="custfeed" name="custfeed">
                    </div>
                </div>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>