/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package carwash.bl;

import carwash.entity.Appointment;
import carwash.entity.Car;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Zanele
 */
@Local
public interface AppointmentFacadeLocal {

    void create(Appointment appointment);

    void edit(Appointment appointment);

    void remove(Appointment appointment);

    Appointment find(Object id);

    List<Appointment> findAll();

    List<Appointment> getAppointmentsByCertainCar( String carName);
    
    List<Appointment> getAppointmentByService(String description);
    
    int count();
    
}
