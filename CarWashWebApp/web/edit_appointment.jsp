<%@page import="java.text.SimpleDateFormat"%>
<%@page import="carwash.entity.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Appointment</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #f0f2f5, #dfe9f3);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            padding-top: 40px;
        }

        .container {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 30px 40px;
            max-width: 700px;
            width: 100%;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        p {
            text-align: center;
            color: #555;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 12px;
            font-size: 16px;
        }

        input[type="text"],
        input[type="date"],
        select {
            width: 100%;
            padding: 8px 10px;
            font-size: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        input[readonly] {
            background-color: #f0f0f0;
            cursor: not-allowed;
        }

        input[type="submit"] {
            background-color: #36d1dc;
            color: white;
            font-weight: bold;
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        .btn-container {
            text-align: right;
            padding-top: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Your Appointment</h1>
        <p>You may only update your phone number or car wash service type.</p>

        <%
            Appointment appointment = (Appointment) session.getAttribute("appointment");
        %>

        <form action="EditAppointmentServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id" value="<%= appointment.getId() %>" readonly /></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" value="<%= appointment.getPerson().getName() %>" readonly /></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="surname" value="<%= appointment.getPerson().getSurname() %>" readonly /></td>
                </tr>
                <tr>
                    <td>Phone Number:</td>
                    <td><input type="text" name="phone" value="<%= appointment.getPerson().getPhone() %>" /></td>
                </tr>
                <tr>
                    <td>Car Name:</td>
                    <td><input type="text" name="car_name" value="<%= appointment.getCar().getCarName() %>" readonly /></td>
                </tr>
                <tr>
                    <td>Number Plate:</td>
                    <td><input type="text" name="number_plate" value="<%= appointment.getCar().getLicensePlate() %>" readonly /></td>
                </tr>
                <tr>
                    <td>Service Type:</td>
                    <td>
                        <select name="description">
                            <option value="Basic Wash" <%= appointment.getService().getDescription().equals("Basic Wash") ? "selected" : "" %>>Basic Wash</option>
                            <option value="Deluxe Wash" <%= appointment.getService().getDescription().equals("Deluxe Wash") ? "selected" : "" %>>Deluxe Wash</option>
                            <option value="Premium Wash" <%= appointment.getService().getDescription().equals("Premium Wash") ? "selected" : "" %>>Premium Wash</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Appointment Date:</td>
                    <td><input type="date" name="appoint_date" value="<%= new SimpleDateFormat("yyyy-MM-dd").format(appointment.getAppointDate()) %>" readonly /></td>
                </tr>
            </table>
            <div class="btn-container">
                <input type="submit" value="Edit Appointment">
            </div>
        </form>
    </div>
</body>
</html>
