/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package carwash.bl;

import carwash.entity.Appointment;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Zanele
 */
@Stateless
public class AppointmentFacade extends AbstractFacade<Appointment> implements AppointmentFacadeLocal {

    @PersistenceContext(unitName = "CarWashEJBPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AppointmentFacade() {
        super(Appointment.class);
    }

    @Override
    public List<Appointment> getAppointmentsByCertainCar(String carName) {
       
        
        Query query = em.createQuery("SELECT a FROM Appointment a WHERE a.car.carName = :carName");
        
        query.setParameter("carName", carName);
        
        return query.getResultList();
    }

    @Override
    public List<Appointment> getAppointmentByService(String description) {
       
        Query query = em.createQuery("SELECT a FROM Appointment a WHERE a.service.description = :description");
        
        query.setParameter("description", description);
        
        return query.getResultList();
        
    }
    
}
