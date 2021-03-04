package ma.youcode.BriefHibernate;

import ma.youcode.BriefHibernate.Entity.Activities;
import ma.youcode.BriefHibernate.Entity.TypeActivities;
import org.hibernate.Session;

public class main {

  public static void main(String[] args) {

    //TypeActivities typeActivities=new TypeActivities();
    Activities activities=new Activities();
    //typeActivities.setName_type("Hackathon");
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    session.beginTransaction();
    //session.persist(typeActivities);
    TypeActivities typeActivities = session.get(TypeActivities.class,1);
    activities.setTypeActivities(typeActivities);
    activities.setDate_d("22-02-2020");
    activities.setDate_f("22-03-2021");
    session.persist(activities);
   // activities.setTypeActivities(typeActivities);
    session.getTransaction().commit();
    System.out.println("bien Ajouté");




  }

}
