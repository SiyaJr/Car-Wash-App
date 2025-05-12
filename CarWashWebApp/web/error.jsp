<%-- 
    Document   : error.jsp
    Created on : May 12, 2025
    Author     : Zanele
--%>

<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Application Error</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f8f9fa;
                color: #343a40;
                text-align: center;
                padding: 50px;
            }

            .container {
                background-color: #ffffff;
                border: 1px solid #dee2e6;
                border-radius: 10px;
                padding: 30px;
                max-width: 600px;
                margin: auto;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }

            h1 {
                color: #dc3545;
            }

            p {
                margin: 20px 0;
                font-size: 16px;
            }

            .back-link {
                display: inline-block;
                margin-top: 20px;
                padding: 10px 20px;
                background-color: #007bff;
                color: #ffffff;
                text-decoration: none;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }

            .back-link:hover {
                background-color: #0056b3;
            }

            .error-details {
                margin-top: 20px;
                font-size: 14px;
                color: #6c757d;
                background-color: #f1f1f1;
                padding: 10px;
                border-radius: 5px;
                word-wrap: break-word;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Oops! Something went wrong.</h1>
            <p>We apologize for the inconvenience. An unexpected error occurred.</p>
            
            <div class="error-details">
                <% if (exception != null) { %>
                    <strong>Error:</strong> <%= exception.getMessage() %><br/>
                    <strong>Type:</strong> <%= exception.getClass().getName() %>
                <% } else { %>
                    <strong>No exception details available.</strong>
                <% } %>
            </div>

            <a href="index.html" class="back-link">Return to Home</a>
        </div>
    </body>
</html>
