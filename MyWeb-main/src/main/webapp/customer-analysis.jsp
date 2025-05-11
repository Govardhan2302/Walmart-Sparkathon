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
        <h4>Customer Analysis</h4>
        <a href="ca1.jsp">Number of unique customer types?</a>
        <a href="ca2.jsp">Number of unique payment methods?</a>
        <a href="ca3.jsp">Most common customer type?</a>
        <a href="ca4.jsp">Top buying customer type?</a>
        <a href="ca5.jsp">Majority customer gender?</a>
        <a href="ca6.jsp">Gender distribution by branch</a>
        <a href="ca7.jsp">Which time of day receives the most customer ratings?</a>
        <a href="ca8.jsp">Which time of day gets the most branch ratings?</a>
        <a href="ca9.jsp">Which day has the highest average ratings?</a>
        <a href="ca10.jsp">Which weekday has the highest branch ratings?</a>
    </div>

    <!-- Main Content -->
    <div class="content">

        
        <!-- Distinct Product Lines Section -->
        <div id="distinct-product-lines" class="analysis-section">
            <h2>How many unique customer types does the data have?</h2>
			
        </div>

        <!-- Common Payment Method Section -->
        <div id="common-payment-method" class="analysis-section">
            <h2>How many unique payment methods does the data have?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Top Selling Product Line Section -->
        <div id="top-selling-product-line" class="analysis-section">
            <h2>Which is the most common customer type?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Monthly Revenue Section -->
        <div id="monthly-revenue" class="analysis-section">
            <h2>Which customer type buys the most?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Highest COGS Month Section -->
        <div id="highest-cogs-month" class="analysis-section">
            <h2>What is the gender of most of the customers?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Highest Revenue Product Line Section -->
        <div id="highest-revenue-product-line" class="analysis-section">
            <h2>What is the gender distribution per branch?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Highest Revenue City Section -->
        <div id="highest-revenue-city" class="analysis-section">
            <h2>Which time of the day do customers give most ratings?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Highest VAT Product Line Section -->
        <div id="highest-vat-product-line" class="analysis-section">
            <h2>Which time of the day do customers give most ratings per branch?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Product Category Analysis Section -->
        <div id="product-category-analysis" class="analysis-section">
            <h2>Which day of the week has the best avg ratings?</h2>
            <!-- Add your analysis content here -->
        </div>

        <!-- Above Average Branch Section -->
        <div id="above-average-branch" class="analysis-section">
            <h2>Which day of the week has the best average ratings per branch?</h2>
            <!-- Add your analysis content here -->
        </div>

    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
