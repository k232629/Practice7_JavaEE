package employees.Service;

import javax.persistence.Cache;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import employees.Entity.Employee;

public class CreateEmployee {

    public static void main( String[ ] args ) {

        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "Employee_JPA" );

        EntityManager entitymanager = emfactory.createEntityManager( );
        entitymanager.getTransaction( ).begin( );

        Employee employee = new Employee( );
        employee.setEid( 1207 );
        employee.setEname( "Gopal" );
        employee.setSalary( 40000 );
        employee.setDeg( "Technical Manager" );

        Employee employee3 = new Employee( );
        employee3.setEid( 1208 );
        employee3.setEname( "Satish" );
        employee3.setSalary( 400000 );
        employee3.setDeg( "Technical Writer" );


        entitymanager.persist( employee );
        entitymanager.getTransaction( ).commit( );
        Cache cache = emfactory.getCache();
        assert(cache.contains(Employee.class,employee.getEid()));


        entitymanager.close( );
        emfactory.close( );
    }
}

