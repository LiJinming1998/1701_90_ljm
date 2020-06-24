<%--
  Created by IntelliJ IDEA.
  User: Lijinming
  Date: 2020/4/14
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="background: #adebeb">
<div style="text-align: center;">
    <h2>修改员工个人信息</h2>
    <form action="student_update" method="post">
        <s:iterator value="#session.studentList.{?#this.studentID == #parameters.studentID[0]}" status="st">
            学号：<input type="text" name="student.studentID" value="<s:property value="studentID"/>"><br>
            密码：<input type="text" name="student.password" value="<s:property value="password"/>"><br>
            姓名：<input type="text" name="student.name" value="<s:property value="name"/>"><br>
            性别：<input type="radio" name="student.sex" value="男" checked="checked">男
            <input type="radio" name="student.sex" value="女"/>女<br>
            生日：<input type="text" name="student.birthday" value="<s:property value="birthday"/>"><br>
            学校：<input type="text" name="student.university" value="<s:property value="university"/>"><br>
            学院：<input type="text" name="student.department" value="<s:property value="department"/>"><br>
            专业：<input type="text" name="student.major" value="<s:property value="major"/>"><br>
            年级：<input type="text" name="student.grade" value="<s:property value="grade"/>"><br>
            <input type="submit" value="提交修改">
        </s:iterator>

    </form>
</div>

</body>
</html>
