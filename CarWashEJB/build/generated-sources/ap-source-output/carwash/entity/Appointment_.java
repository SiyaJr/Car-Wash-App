package carwash.entity;

import carwash.entity.Car;
import carwash.entity.Person;
import carwash.entity.Service;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-12T16:58:35")
@StaticMetamodel(Appointment.class)
public class Appointment_ { 

    public static volatile SingularAttribute<Appointment, Car> car;
    public static volatile SingularAttribute<Appointment, Service> service;
    public static volatile SingularAttribute<Appointment, Person> person;
    public static volatile SingularAttribute<Appointment, Long> id;
    public static volatile SingularAttribute<Appointment, Date> appointDate;

}