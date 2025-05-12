/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package carwash.bl;

import carwash.entity.Appointment;
import carwash.entity.Car;
import carwash.entity.Service;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Zanele
 */
@Local
public interface ServiceFacadeLocal {

    void create(Service service);

    void edit(Service service);

    void remove(Service service);

    Service find(Object id);

    List<Service> findAll();

    List<Appointment> getAllCarsByPriceRange(Double min , Double max);
    
    int count();
    
}
