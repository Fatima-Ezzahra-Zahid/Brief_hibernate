package ma.youcode.BriefHibernate.Entity;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
//@DiscriminatorColumn(name = "Type")
@SuperBuilder
//@NoArgsConstructor
//@AllArgsConstructor


public class User  {
  //private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy =GenerationType.IDENTITY)
  private int id_user;
  private String FirstName;
  private String lastName;
  private String email;
  private String password;

public User()
{

}
  public User(int id_user, String firstName, String lastName, String email, String password) {
    this.id_user = id_user;
    FirstName = firstName;
    this.lastName = lastName;
    this.email = email;
    this.password = password;
  }

  public int getId_user() {
    return id_user;
  }

  public void setId_user(int id_user) {
    this.id_user = id_user;
  }

  public String getFirstName() {
    return FirstName;
  }

  public void setFirstName(String firstName) {
    FirstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }
}
