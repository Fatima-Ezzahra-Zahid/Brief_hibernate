package ma.youcode.BriefHibernate.Entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Specialite implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy =GenerationType.IDENTITY)
  private int  id_sp;
  private String name_sp;

  public Specialite()
  {

  }
  public Specialite(int id_sp, String name_sp) {
    this.id_sp = id_sp;
    this.name_sp = name_sp;
  }

  public int getId_sp() {
    return id_sp;
  }

  public void setId_sp(int id_sp) {
    this.id_sp = id_sp;
  }

  public String getName_sp() {
    return name_sp;
  }

  public void setName_sp(String name_sp) {
    this.name_sp = name_sp;
  }
}
