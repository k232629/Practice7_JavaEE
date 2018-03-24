package employees.Service;

import javax.persistence.Cache;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import employees.Entity.Employee;
import org.springframework.cache.annotation.EnableCaching;


@EnableCaching
public class CreateEmployee {

    public static void main( String[ ] args ) {

        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "Employee_JPA" );

        EntityManager entitymanager = emfactory.createEntityManager( );
        entitymanager.getTransaction( ).begin( );

        Employee employee = new Employee( );
        employee.setEid( 4446 );
        employee.setEname( "Gopal" );
        employee.setSalary( 40000 );
        employee.setDeg( "Technical Manager" );



        entitymanager.persist( employee );
        entitymanager.getTransaction( ).commit( );
        Cache cache = emfactory.getCache();
        assert(cache.contains(Employee.class,employee.getEid()));

        employee.getEid();
        System.out.println("first time");
        assert(cache.contains(Employee.class,employee.getEid()));
        employee.getEid();




        entitymanager.close( );
        emfactory.close( );
    }
}

