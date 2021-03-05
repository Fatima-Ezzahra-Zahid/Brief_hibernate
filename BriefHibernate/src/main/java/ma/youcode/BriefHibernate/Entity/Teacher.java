package ma.youcode.BriefHibernate.Entity;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class Teacher  extends UserAdmin{

  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "id_sp")
  private Specialite specialite;



}
