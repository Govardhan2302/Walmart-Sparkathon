<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Walmart Search Portal</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
       body {
            padding-top: 70px;
        }
        .analysis-section {
            margin-top: 40px;
        }
        .analysis-section img {
            max-width: 100%;
            height: auto;
        }
        .analysis-section h2 {
            margin-bottom: 20px;
        }
        .card {
            margin-bottom: 20px;
        }
        .portal-title {
            text-align: center;
            margin-bottom: 50px;
        }
        
        .sidebar {
            position: fixed;
            top: 70px;
            left: 0;
            bottom: 0;
            width: 250px;
            padding: 20px;
            background-color: #f8f9fa;
            border-right: 1px solid #dee2e6;
        }
        .sidebar a {
            display: block;
            padding: 10px;
            margin-bottom: 5px;
            color: #495057;
            text-decoration: none;
            border-radius: 5px;
        }
        .sidebar a:hover {
            background-color: #e9ecef;
        }
        .content {
            margin-left: 270px;
            padding: 20px;
        }
        .analysis-section {
            margin-bottom: 40px;
        }
        .analysis-section img {
            max-width: 100%;
            height: auto;
        }
        .analysis-section h2 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Walmart Search Portal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="product-analysis.jsp">Product Analysis</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="customer-analysis.jsp">Customer Analysis</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sales-analysis.jsp">Sales Analysis</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Sidebar Navigation -->
    <div class="sidebar">
        <h4>Sales Analysis</h4>
        <a href="sa1.jsp">Sales by time of day and weekday</a>
        <a href="sa2.jsp">Identify the highest-revenue customer type</a>
        <a href="sa3.jsp">Which city has the highest VAT rate?</a>
        <a href="sa4.jsp">Which customer type pays the most VAT?</a>
    </div>

    <!-- Main Content -->
    <div class="content">

        
        <!-- Distinct Product Lines Section -->
        <div id="distinct-product-lines" class="analysis-section">
            <h2>Number of sales made in each time of the day per weekday?</h2>
			
        </div>

        <!-- Common Payment Method Section -->
        <div id="common-payment-method" class="analysis-section">
            <h2>Identify the customer type that generates the highest revenue?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Top Selling Product Line Section -->
        <div id="top-selling-product-line" class="analysis-section">
            <h2>Which city has the largest tax percent/ VAT (Value Added Tax)?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Monthly Revenue Section -->
        <div id="monthly-revenue" class="analysis-section">
            <h2>Which customer type pays the most VAT?</h2>
            <!-- Add your analysis content here -->
        </div>

    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
