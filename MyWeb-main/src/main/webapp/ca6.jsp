<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, javax.naming.*, javax.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.*" %>

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
            padding: 10px;
            background-color: #f8f9fa;
            border-right: 1px solid #dee2e6;
        }
        .sidebar a {
            display: block;
            padding: 5px;
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
    <h2>Highest Revenue Cities</h2>
<table class="table table-bordered">
        <thead>
            <tr>
                <th width=50>city</th>
                <th width=50>Total Revenue</th>
            </tr>
        </thead>
    <%
 // JDBC connection details
    String url = "jdbc:mysql://localhost:3306/walmart";
    String username = "root";
    String password = "root";
    String city="";
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
	int total_revenue=0;
    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish connection to the database
        conn = DriverManager.getConnection(url, username, password);
        
        // Display connection status
        if (conn != null) {
            out.println("<p class='alert alert-success'>Connected to the Walmart database successfully!</p>");
        } else {
            out.println("<p class='alert alert-danger'>Failed to connect to the Walmart database.</p>");
        }


            // Create and execute the SQL query
            String sql = "SELECT branch, gender, COUNT(gender) AS gender_distribution FROM sales GROUP BY branch, gender ORDER BY branch";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
            	city = rs.getString("branch");
                total_revenue = rs.getInt("gender_distribution");
                %>
                <!-- Display the count in a table -->
    
        <tbody>
            <tr>
                <td><%= branch %></td>
                <td><%= gender_distribution %></td>
            </tr>
        </tbody>
    
    <%
            }

           
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
            if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    %>

    </table>
    
			
        </div>

    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
