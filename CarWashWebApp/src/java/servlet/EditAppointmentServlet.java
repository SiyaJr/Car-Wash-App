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
import carwash.entity.Person;
import carwash.entity.Service;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class EditAppointmentServlet extends HttpServlet {

      @EJB
    AppointmentFacadeLocal app;
    CarFacadeLocal car;
    PersonFacadeLocal per;
    ServiceFacadeLocal serv;
   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          HttpSession session = request.getSession(true);
        
        
         Appointment appointment = (Appointment) session.getAttribute("appointment");
        
        try {
            Long id = Long.parseLong(request.getParameter("id"));
            
            
            Long cust_id = appointment.getPerson().getId();
            String name = request.getParameter("name");
            
            String surname = request.getParameter("surname");
            
            String phone = request.getParameter("phone");
            
            Long car_id = appointment.getCar().getId();
            String carName = request.getParameter("car_name");
            
            String numberPlate = request.getParameter("number_plate");
            
            
            Long service_id = appointment.getService().getId();
            String description = request.getParameter("description");
            
            
            
            String dt = request.getParameter("appoint_date");
            
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
            
            Date date = sdf.parse(dt);
            
            
            Car car1 = createCar(car_id,carName,numberPlate);
            
            Person person = createPerson(cust_id,name,surname,phone,car1);
            
            Service service = createService(description);
            
            Appointment appointment1 = createAppointment(id,date,person,service,car1);
            
            
            app.edit(appointment1);
               
            RequestDispatcher disp = request.getRequestDispatcher("edit_appointment_outcome.jsp");
            
            disp.forward(request, response);
            
            
            
            
        } catch (ParseException ex) {
            Logger.getLogger(AddAppointmentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

    private Car createCar(Long id,String carName, String numberPlate) {

        Car car1 = new Car();
        
        car1.setId(id);
        car1.setCarName(carName);
        car1.setLicensePlate(numberPlate);
        
        return car1;

    }

    private Person createPerson(Long id, String name, String surname, String phone, Car car1) {

        Person person = new Person();
        
        person.setId(id);
        person.setName(name);
        person.setSurname(surname);
        person.setPhone(phone);
        person.setCar(car1);
        
        return person;
        

    }

    private Service createService(String description) {
      
        Service service = new Service();
        
        service.setDescription(description);
        
        if(description.equals("Basic Wash")){
        
            service.setPrice(250.0);
        }else if(description.equalsIgnoreCase("Deluxe Wash")) {
            
            service.setPrice(300.0);
        
        }else if(description.equalsIgnoreCase("Premium Wash")){
        
        service.setPrice(350.0);
            
        }

        
        return service;

    }

    private Appointment createAppointment(Long id,Date date, Person person, Service service, Car car1) {

        Appointment appointment = new Appointment();
        
        appointment.setId(id);
        appointment.setAppointDate(date);
        appointment.setPerson(person);
        appointment.setCar(car1);
        appointment.setService(service);
        
        return appointment;
        

    }

      

}
