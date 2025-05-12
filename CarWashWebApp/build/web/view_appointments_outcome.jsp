<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="carwash.entity.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>View All Appointments</title>
        <style>
            body {
                font-family: 'Segoe UI', sans-serif;
                background: #f4f7fc;
                margin: 0;
                padding: 0;
            }

            .container {
                width: 80%;
                margin: 40px auto;
                padding: 20px;
                background: white;
                border-radius: 10px;
                box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
            }

            h1 {
                text-align: center;
                color: #3498db;
                margin-bottom: 20px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 30px;
            }

            th, td {
                padding: 12px;
                text-align: left;
                border: 1px solid #ddd;
            }

            th {
                background-color: #3498db;
                color: white;
            }

            td {
                background-color: #f9f9f9;
            }

            tr:nth-child(even) td {
                background-color: #f1f1f1;
            }

            a {
                text-decoration: none;
                color: #3498db;
                font-weight: bold;
            }

            a:hover {
                text-decoration: underline;
            }

            .navigation {
                text-align: center;
            }

            .navigation ul {
                list-style: none;
                padding: 0;
            }

            .navigation li {
                display: inline;
                margin-right: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>View All Appointments</h1>

            <%
                List<Appointment> appointments = (List<Appointment>) request.getAttribute("appointments");
            %>

            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Phone</th>
                    <th>Car</th>
                    <th>Number Plate</th>
                    <th>Service Description</th>
                    <th>Service Price</th>
                    <th>Date</th>
                </tr>

                <%
                    for (int i = 0; i < appointments.size(); i++) {
                        Appointment appointment = appointments.get(i);
                %>

                <tr>
                    <td><%= appointment.getId() %></td>
                    <td><%= appointment.getPerson().getName() %></td>
                    <td><%= appointment.getPerson().getSurname() %></td>
                    <td><%= appointment.getPerson().getPhone() %></td>
                    <td><%= appointment.getCar().getCarName() %></td>
                    <td><%= appointment.getCar().getLicensePlate() %></td>
                    <td><%= appointment.getService().getDescription() %></td>
                    <td><%= appointment.getService().getPrice() %></td>
                    <td><%= new SimpleDateFormat("dd/MM/yyyy HH:mm").format(appointment.getAppointDate()) %></td>
                </tr>

                <%
                    }
                %>
            </table>

            <div class="navigation">
                <ul>
                    <li><a href="customer.html">Customer Dashboard</a></li>
                    <li><a href="manager.html">Manager Dashboard</a></li>
                    <li><a href="index.html">HOME</a></li>
                </ul>
            </div>
        </div>
    </body>
</html>
