package ma.youcode.BriefHibernate.Entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class TypeActivities implements Serializable {
  private static final long serialVersionUID = 1L;

@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id_type;
private String name_type;

public TypeActivities()
{

}
  public int getId_type() {
    return id_type;
  }

  public void setId_type(int id_type) {
    this.id_type = id_type;
  }

  public String getName_type() {
    return name_type;
  }

  public void setName_type(String name_type) {
    this.name_type = name_type;
  }
}
