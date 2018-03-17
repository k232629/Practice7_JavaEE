package employees.Service;
import employees.Entity.Employee;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class UpdateEmployee {
    public static void main( String[ ] args ) {
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "Employee_JPA" );

        EntityManager entitymanager = emfactory.createEntityManager( );
        entitymanager.getTransaction( ).begin( );
        Employee employee = entitymanager.find( Employee.class, 1203 );

        //before update
        System.out.println( employee );
        employee.setEname("Amal");
        entitymanager.getTransaction( ).commit( );

        //after update
        System.out.println( employee );
        entitymanager.close();
        emfactory.close();
    }
}