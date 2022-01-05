package mx.com.b1soft.semillerodiciembre.cartaporte.b1projectcartaporte.hibernate;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class Users {


    public Users(String name_user, String password_user, String email_user, String image_user) {
        this.name_user = name_user;
        this.password_user = password_user;
        this.email_user = email_user;
        this.image_user = image_user;
    }

    public Users() {

    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getName_user() {
        return name_user;
    }

    public void setName_user(String name_user) {
        this.name_user = name_user;
    }

    public String getPassword_user() {
        return password_user;
    }

    public void setPassword_user(String password_user) {
        this.password_user = password_user;
    }

    public String getEmail_user() {
        return email_user;
    }

    public void setEmail_user(String email_user) {
        this.email_user = email_user;
    }

    public String getImage_user() {
        return image_user;
    }

    public void setImage_user(String image_user) {
        this.image_user = image_user;
    }

    @Id
    @Column(name = "id_user")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id_user;

    @Column(name = "name_user")
    private String name_user;

    @Column(name = "password_user")
    private String password_user;

    @Column(name = "email_user")
    private String email_user;

    @Column(name = "image_user")
    private String image_user;
}
