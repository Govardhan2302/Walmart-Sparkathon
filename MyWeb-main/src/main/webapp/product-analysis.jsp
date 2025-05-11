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
        <h4>Product Analysis</h4>
        <a href="pa1.jsp">Distinct Product Lines</a>
        <a href="pa2.jsp">Common Payment Method</a>
        <a href="pa3.jsp">Top Selling Product Line</a>
        <a href="pa4.jsp">Total Revenue by Month</a>
        <a href="pa5.jsp">Highest COGS Month</a>
        <a href="pa6.jsp">Highest Revenue Product Line</a>
        <a href="pa7.jsp">Highest Revenue City</a>
        <a href="pa8.jsp">Highest VAT Product Line</a>
        <a href="pa9.jsp">Product Category Analysis</a>
        <a href="pa10.jsp">Branch with Above Average Sales</a>
        <a href="pa11.jsp">Product Line by Gender</a>
        <a href="pa12.jsp">Average Rating by Product Line</a>
    </div>

    <!-- Main Content -->
    <div class="content">

        
        <!-- Distinct Product Lines Section -->
        <div id="distinct-product-lines" class="analysis-section">
            <h2>How many distinct product lines are there?</h2>
			
        </div>

        <!-- Common Payment Method Section -->
        <div id="common-payment-method" class="analysis-section">
            <h2>What is the most common payment method?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Top Selling Product Line Section -->
        <div id="top-selling-product-line" class="analysis-section">
            <h2>What is the most selling product line?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Monthly Revenue Section -->
        <div id="monthly-revenue" class="analysis-section">
            <h2>What is the total revenue by month?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Highest COGS Month Section -->
        <div id="highest-cogs-month" class="analysis-section">
            <h2>Which month recorded the highest COGS?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Highest Revenue Product Line Section -->
        <div id="highest-revenue-product-line" class="analysis-section">
            <h2>Which product line generated the highest revenue?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Highest Revenue City Section -->
        <div id="highest-revenue-city" class="analysis-section">
            <h2>Which city has the highest revenue?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Highest VAT Product Line Section -->
        <div id="highest-vat-product-line" class="analysis-section">
            <h2>Which product line incurred the highest VAT?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Product Category Analysis Section -->
        <div id="product-category-analysis" class="analysis-section">
            <h2>Product Category Analysis</h2>
            <p>Retrieve each product line and add a column indicating whether its sales are above average (Good) or below average (Bad).</p>
            <!-- Add your analysis content here -->
        </div>

        <!-- Above Average Branch Section -->
        <div id="above-average-branch" class="analysis-section">
            <h2>Which branch sold more products than average?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Product Line by Gender Section -->
        <div id="product-line-by-gender" class="analysis-section">
            <h2>What is the most common product line by gender?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Average Rating Section -->
        <div id="average-rating" class="analysis-section">
            <h2>What is the average rating of each product line?</h2>
            <!-- Add your analysis content here -->
        </div>

    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
