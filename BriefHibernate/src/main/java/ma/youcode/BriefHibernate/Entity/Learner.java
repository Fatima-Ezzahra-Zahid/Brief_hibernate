package ma.youcode.BriefHibernate.Entity;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.persistence.*;


@Entity
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class Learner extends UserAdmin {

  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "id_sp" )
  private Specialite specialite;

  public Learner(int id_user, String FirstName, String lastName, String email, String password) {
    super(id_user, FirstName, lastName, email, password);
    this.specialite = specialite;
  }



  public Specialite getSpecialite() {
    return specialite;
  }

  public void setSpecialite(Specialite specialite) {
    this.specialite = specialite;
  }
}
