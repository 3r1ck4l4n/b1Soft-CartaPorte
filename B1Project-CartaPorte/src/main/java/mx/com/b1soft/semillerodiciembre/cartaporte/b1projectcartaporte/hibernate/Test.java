package mx.com.b1soft.semillerodiciembre.cartaporte.b1projectcartaporte.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class Test {

    public static void main(String[] args) {
        SessionFactory miFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Users.class).buildSessionFactory();

        Session miSession = miFactory.openSession();

        try{
            Users userTest = new Users("hola","Test","uno", "xD");

            miSession.beginTransaction();

            miSession.save(userTest);

            miSession.getTransaction().commit();

            System.out.println("Insert hecho");

            //Transaction Accion commit =/ Rollback
        } catch ( Exception e) {
            System.out.println(e);
        }finally {
            miFactory.close();
        }
    }
}
