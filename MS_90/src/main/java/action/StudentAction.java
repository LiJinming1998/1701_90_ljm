package action;

import PO.Student;
import com.opensymphony.xwork2.ActionSupport;
import dao.HbnUtils;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;

public class StudentAction extends ActionSupport implements SessionAware {
    private Session hbnSession;
    private Student student;
    private Map<String,Object> session;
    private List<Student> studentList;

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public List getStudentList() {
        return studentList;
    }

    public void setStudentList(List studentList) {
        this.studentList = studentList;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session=session;
    }

    public String register() throws Exception {
        hbnSession= HbnUtils.getSession();
        String hql = "from Student where studentID=?1";
        hbnSession.beginTransaction();
        List<Student> studentList = hbnSession.createQuery(hql)
                .setParameter(1,student.getStudentID())
                .list();

        System.out.println(studentList);
        if (studentList.isEmpty()){
            Student s=new Student();
            s.setStudentID(this.student.getStudentID());
            s.setName(this.student.getName());
            s.setPassword(this.student.getPassword());
            s.setSex(this.student.getSex());
            s.setBirthday(this.student.getBirthday());
            s.setUniversity(this.student.getUniversity());
            s.setGrade(this.student.getGrade());
            s.setDepartment(this.student.getDepartment());
            s.setMajor(this.student.getMajor());

            hbnSession.save(s);
            System.out.println(s);
            hbnSession.getTransaction().commit();

            return "success";
        }
        else {
            return "error";
        }

    }

    public String login() throws Exception {
        session.put("student",student);
        String hql = "from Student where studentID= ?1 and password=?2 ";
        hbnSession= HbnUtils.getSession();
        hbnSession.beginTransaction();
        List<Student> studentList = hbnSession.createQuery(hql)
                .setParameter(1,student.getStudentID())
                .setParameter(2,student.getPassword())
                .list();
        System.out.println(student.getStudentID());
        System.out.println(student.getPassword());
        System.out.println("##################################");
        System.out.println(studentList);

        hbnSession.getTransaction().commit();
        if (studentList.isEmpty())
            return "error";
        return "success";

    }

    public String findAll(){
        String hql="from Student";
        //String hql="from Score s1,Student s2  where s1.studentID = s2.studentID";
        //String hql="from Score";
        System.out.println(hql);
        hbnSession=HbnUtils.getSession();
        hbnSession.beginTransaction();
        List studentList = hbnSession.createQuery(hql).list();
        session.put("studentList", this.studentList);
        System.out.println("session"+session);

        System.out.println("list"+studentList);
        hbnSession.getTransaction().commit();
        if (studentList.isEmpty())
            return "error";
        return "success";


    }

    public String findDept(){
        String hql="from Student where department like ?1";
        System.out.println(hql);
        hbnSession=HbnUtils.getSession();
        hbnSession.beginTransaction();
        studentList = hbnSession.createQuery(hql)
                .setParameter(1,"%"+student.getDepartment()+"%")
                .list();
        session.put("studentList", this.studentList);
        System.out.println(session);
        System.out.println(studentList);
        hbnSession.getTransaction().commit();
        if (studentList.isEmpty())
            return "error";
        return "success";


    }

    public String findName(){
        String hql="from Student where name like ?1";
        System.out.println(hql);
        hbnSession=HbnUtils.getSession();
        hbnSession.beginTransaction();
        studentList = hbnSession.createQuery(hql)
                .setParameter(1,"%"+student.getName()+"%")
                .list();
        session.put("studentList", this.studentList);
        System.out.println(session);
        System.out.println(studentList);
        hbnSession.getTransaction().commit();
        if (studentList.isEmpty())
            return "error";
        return "success";


    }

    public String findSelf(){
        String hql="from Student where studentID=?1";
        System.out.println(hql);
        hbnSession=HbnUtils.getSession();
        hbnSession.beginTransaction();
        studentList = hbnSession.createQuery(hql)
                .setParameter(1,student.getStudentID())
                .list();
        session.put("studentList", this.studentList);
        System.out.println(session);
        System.out.println(studentList);
        hbnSession.getTransaction().commit();
        if (studentList.isEmpty())
            return "error";
        return "success";


    }

    public String insert(){

        try {
            hbnSession=HbnUtils.getSession();
            hbnSession.beginTransaction();
            System.out.println(student);
            hbnSession.save(student);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }


    }

    public  String update(){

        try {
            hbnSession=HbnUtils.getSession();
            hbnSession.beginTransaction();
            System.out.println(student);
            hbnSession.update(student);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }


    }

    public  String delete(){

        try {
            hbnSession=HbnUtils.getSession();
            hbnSession.beginTransaction();
            System.out.println(student);
            hbnSession.delete(student);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }


    }



}
