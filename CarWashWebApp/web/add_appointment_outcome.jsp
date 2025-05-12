<%-- 
    Document   : add_appointment_outcome
    Created on : May 12, 2025, 3:52:26 PM
    Author     : Zanele
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Confirmation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * {
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(to right, #e0c3fc, #8ec5fc);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .card {
            background-color: white;
            padding: 40px 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            text-align: center;
            max-width: 500px;
            width: 90%;
            animation: slideIn 0.8s ease;
        }

        @keyframes slideIn {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }

        h1 {
            color: #2e8b57;
            margin-bottom: 10px;
            font-size: 28px;
        }

        p {
            font-size: 16px;
            color: #444;
            margin-bottom: 25px;
        }

        ul {
            list-style: none;
            padding: 0;
            margin: 20px 0 0 0;
        }

        ul li {
            margin: 10px 0;
        }

        a {
            display: inline-block;
            padding: 12px 25px;
            background-color: #6a11cb;
            background-image: linear-gradient(to right, #6a11cb 0%, #2575fc 100%);
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        a:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .icon {
            font-size: 40px;
            color: #2e8b57;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

    <div class="card">
        <div class="icon">✅</div>
        <h1>Appointment Created</h1>
        <p>Your appointment has been successfully added to the system.</p>

        <ul>
            <li><a href="customer.html">Go to Customer Dashboard</a></li>
            <li><a href="manager.html">Go to Manager Dashboard</a></li>
            <li><a href="index.html">Return to Home</a></li>
        </ul>
    </div>

</body>
</html>
