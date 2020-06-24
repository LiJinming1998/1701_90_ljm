package action;

import PO.Admin;
import com.opensymphony.xwork2.ActionSupport;
import dao.HbnUtils;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;

public class AdminAction extends ActionSupport implements SessionAware {

    private Admin admin;
    private Session hbnSession;
    private Map<String,Object> session;
    private List<Admin> adminList;

    public AdminAction() {
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public List<Admin> getAdminList() {
        return adminList;
    }

    public void setAdminList(List<Admin> adminList) {
        this.adminList = adminList;
    }

    public Session getHbnSession() {
        return hbnSession;
    }

    public void setHbnSession(Session hbnSession) {
        this.hbnSession = hbnSession;
    }


    @Override
    public void setSession(Map<String, Object> session) {
        this.session=session;

    }

    public String login() throws Exception {
            session.put("admin",admin);
            String hql = "from Admin where username=?1 and password=?2 ";
            hbnSession= HbnUtils.getSession();
            hbnSession.beginTransaction();
            List<Admin> adminList = hbnSession.createQuery(hql)
                    .setParameter(1,admin.getUsername())
                    .setParameter(2,admin.getPassword())
                    .list();
            /*System.out.println(admin.getUsername());
            System.out.println(admin.getPassword());
            System.out.println(admin);
            System.out.println(session);
            System.out.println(admin.getPassword());
            System.out.println(admin.getRolename());*/
            System.out.println(adminList);
            System.out.println("################################");
            System.out.println(adminList);
            hbnSession.getTransaction().commit();
            if (adminList.isEmpty())
                return "error";
            return "success";
            /*if (adminList.isEmpty()){
                return "error";

            }else if(admin.getUsername().equals("admin")){
                    return "super";
            } else if(admin.getUsername().equals("root")){
                    return "middle";
            } else if(admin.getUsername().equals("ordinary")){
                    return "ordinary";
            }
            else
                return"success";*/

    }





}
