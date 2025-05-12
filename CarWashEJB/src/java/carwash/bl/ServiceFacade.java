/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package carwash.bl;

import carwash.entity.Appointment;
import carwash.entity.Service;
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
public class ServiceFacade extends AbstractFacade<Service> implements ServiceFacadeLocal {

    @PersistenceContext(unitName = "CarWashEJBPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ServiceFacade() {
        super(Service.class);
    }

    @Override
    public List<Appointment> getAllCarsByPriceRange(Double min, Double max) {
       
         Query query = em.createQuery("SELECT a FROM Appointment a WHERE a.service.price BETWEEN :min AND :max");
         
         query.setParameter("min", min);
         query.setParameter("max", max);

         return query.getResultList();

    }
    
}
