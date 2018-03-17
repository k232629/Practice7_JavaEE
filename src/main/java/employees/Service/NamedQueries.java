package employees.Service;
import employees.Entity.Employee;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;


public class NamedQueries {
    public static void main( String[ ] args ) {

        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "Employee_JPA" );
        EntityManager entitymanager = emfactory.createEntityManager();
        Query query = entitymanager.createNamedQuery("find employee by id");
        Query query1 = entitymanager.createNamedQuery("findall");
        Query query2 = entitymanager.createNamedQuery("findByName");


        query2.setParameter("name","Amal");
        query.setParameter("id", 1202);
        List<Employee> list = query.getResultList( );
        List<Employee> listOfAll = query1.getResultList( );
        List<Employee> listOfNames = query2.getResultList( );
        for( Employee e:list ){
            System.out.print("Employee ID :" + e.getEid( ));
            System.out.println("\t Employee Name :" + e.getEname( ));
        }

        for( Employee e:listOfAll ){
            System.out.print("Employee ID :" + e.getEid( ));
            System.out.println("\t Employee Name :" + e.getEname( ));
        }
        for( Employee e:listOfNames ){
            System.out.print("Employee Salary :" + e.getSalary());
            System.out.println("\t Employee Name :" + e.getEname( ));
        }
    }
}