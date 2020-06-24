package PO;

import javax.persistence.*;

@Entity
@Table
public class Admin {

    private int adminID;
    private String username;
    private String password;
    private String roleid;
    private String rolename;

    public Admin(int adminID, String username, String password, String roleid, String rolename) {
        this.adminID = adminID;
        this.username = username;
        this.password = password;
        this.roleid = roleid;
        this.rolename = rolename;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }
    public Admin(){

    }



    @Override
    public String toString() {
        return "Admin{" +
                "adminID=" + adminID +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", roleid='" + roleid + '\'' +
                ", rolename='" + rolename + '\'' +
                '}';
    }
}
