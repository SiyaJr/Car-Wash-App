/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import carwash.bl.AppointmentFacadeLocal;
import carwash.bl.CarFacadeLocal;
import carwash.bl.PersonFacadeLocal;
import carwash.bl.ServiceFacadeLocal;
import carwash.entity.Appointment;
import carwash.entity.Car;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Zanele
 */
public class GetAppointmentsByServiceServlet extends HttpServlet {

    @EJB
    AppointmentFacadeLocal app;
    CarFacadeLocal car;
    PersonFacadeLocal per;
    ServiceFacadeLocal serv;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
        String description = request.getParameter("description");
        
        List<Appointment> appointments = app.getAppointmentByService(description);
        
        request.setAttribute("appointments", appointments);
        
        
          RequestDispatcher disp = request.getRequestDispatcher("view_appointments_by_service_outcome.jsp");
            
            disp.forward(request, response);
        
        
        
        
    }

  
}
