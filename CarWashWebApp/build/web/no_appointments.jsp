<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Not Found</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #fff;
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 5px 18px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 500px;
        }

        h1 {
            color: #e74c3c;
            font-size: 28px;
            margin-bottom: 15px;
        }

        p {
            font-size: 18px;
            color: #555;
            margin-bottom: 25px;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin: 10px 0;
        }

        a {
            text-decoration: none;
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border-radius: 6px;
            font-weight: bold;
            transition: background 0.3s ease;
        }

        a:hover {
            background-color: #217dbb;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Error</h1>
        <p>It seems no appointment was made for the entered ID!</p>
        <ul>
            <li><a href="customer.html">Customer Dashboard</a></li>
            <li><a href="manager.html">Manager Dashboard</a></li>
            <li><a href="index.html">HOME</a></li>
        </ul>
    </div>
</body>
</html>
