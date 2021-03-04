package ma.youcode.BriefHibernate.Entity;

import javax.persistence.*;


@Entity
public class Learner extends  User  {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id_lea;
  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "id_sp" )
  private Specialite specialite;


  public int getId_lea() {
    return id_lea;
  }

  public void setId_lea(int id_lea) {
    this.id_lea = id_lea;
  }

  public Specialite getSpecialite() {
    return specialite;
  }

  public void setSpecialite(Specialite specialite) {
    this.specialite = specialite;
  }
}
