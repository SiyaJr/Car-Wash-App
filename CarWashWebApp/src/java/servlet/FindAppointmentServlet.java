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
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Zanele
 */
public class FindAppointmentServlet extends HttpServlet {

     @EJB
    AppointmentFacadeLocal app;
    CarFacadeLocal car;
    PersonFacadeLocal per;
    ServiceFacadeLocal serv;
    
  

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        HttpSession session = request.getSession(true);
        
        Long id = Long.parseLong(request.getParameter("id"));
        
        Appointment appointment = app.find(id);
        
        session.setAttribute("appointment", appointment);
        
        if(appointment != null){
        
            RequestDispatcher disp = request.getRequestDispatcher("edit_appointment.jsp");
            
            disp.forward(request, response);
        
        }else{
        
            response.sendRedirect("no_appointment.jsp");
        }
        
    }

}
