<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Edited</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #d4fc79, #96e6a1);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .box {
            background: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            text-align: center;
        }

        h1 {
            color: #27ae60;
            margin-bottom: 10px;
        }

        p {
            font-size: 18px;
            color: #333;
            margin-bottom: 25px;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin: 30px 0;
        }

        a {
            text-decoration: none;
            color: #fff;
            background-color: #2ecc71;
            padding: 10px 20px;
            border-radius: 6px;
            transition: background 0.3s;
        }

        a:hover {
            background-color: #27ae60;
        }
    </style>
</head>
<body>
    <div class="box">
        <h1>Success!</h1>
        <p>Appointment successfully edited.</p>
        <ul>
            <li><a href="customer.html">Customer Dashboard</a></li>
            <li><a href="manager.html">Manager Dashboard</a></li>
            <li><a href="index.html">Home</a></li>
        </ul>
    </div>
</body>
</html>
