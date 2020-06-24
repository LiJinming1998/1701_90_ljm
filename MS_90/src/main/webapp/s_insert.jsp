<%--
  Created by IntelliJ IDEA.
  User: Lijinming
  Date: 2020/4/9
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加员工信息</title>
</head>
<body style="background: #adebeb">
<div style="text-align: center;"><h2>添加员工信息</h2>

<form action="student_insert" method="post">

    密码：<input type="text" name="student.password" ><br>
    姓名：<input type="text" name="student.name" ><br>
    性别：<input type="radio" style="width:60px;" name="student.sex" value="男"/>男
          <input type="radio" style="width:60px;" name="student.sex" value="女">女<br>
    生日：<input type="date" style="width:162.2px;" name="student.birthday"><br>
    学校：<input type="text" name="student.university"><br>
    部门：<input type="text" name="student.department"><br>
    专业：<input type="text" name="student.major"><br>
    工龄：<select style="width:162.2px;" name="student.grade">
             <option value="一年">一年</option>
             <option value="二年">二年</option>
             <option value="三年">三年</option>
             <option value="四年">四年</option>
             <option value="五年">五年</option>
         </select><br>
    <input type="submit" value="提交">
</form>
</div>
</body>
</html>
