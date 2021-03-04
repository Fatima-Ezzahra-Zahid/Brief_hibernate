package ma.youcode.BriefHibernate.Entity;


import javax.persistence.*;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import java.io.Serializable;


@Entity
public class Activities implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id_ac;
  private String date_d;
  private String date_f;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "id_type" , referencedColumnName = "id_type")
  private TypeActivities typeActivities;

  public static long getSerialVersionUID() {
    return serialVersionUID;
  }

  public TypeActivities getTypeActivities() {
    return typeActivities;
  }

  public void setTypeActivities(TypeActivities typeActivities) {
    this.typeActivities = typeActivities;
  }



  public int getId_ac() {
    return id_ac;
  }

  public void setId_ac(int id_ac) {
    this.id_ac = id_ac;
  }

  public String getDate_d() {
    return date_d;
  }

  public void setDate_d(String date_d) {
    this.date_d = date_d;
  }

  public String getDate_f() {
    return date_f;
  }

  public void setDate_f(String date_f) {
    this.date_f = date_f;
  }
}
