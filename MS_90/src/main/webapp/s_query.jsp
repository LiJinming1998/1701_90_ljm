<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Lijinming
  Date: 2020/4/9
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看信息</title>

</head>
<body style="background: #adebeb">
当前登录：超级管理员<s:property value="#session.admin.username"/><br>

<h2>员工信息查询</h2>

<form action="findName" method="get">
    根据姓名查询：
    <input type="text" name="student.name">
    <input type="submit" value="查询">

</form>
<form action="findDept" method="get">
    根据部门查询：
    <select name="student.department">
        <option value=""><--请选择部门--></option>
        <option value="人事部">人事部</option>
        <option value="公关部">公关部</option>
        <option value="销售部">销售部</option>
        <option value="开发部">开发部</option>
    </select>
    <input type="submit" value="查询">

</form>


<a href="s_insert.jsp"><input type="button" value="添加员工"></a>
<form action="findAll" method="get">
    <table border="1" align="center">
        <tr>
            <td align="center"  width="200px">序号</td>
            <td align="center"  width="200px">工号</td>
            <td align="center"  width="200px">密码</td>
            <td align="center" width="200px">姓名</td>
            <td align="center"  width="200px">性别</td>
            <td align="center"  width="200px">出生日期</td>
            <td align="center" width="200px">学校</td>
            <td align="center"  width="200px">部门</td>
            <td align="center" width="200px">专业</td>
            <td align="center"  width="200px">工龄</td>
            <td align="center" width="200px">修改</td>
            <td align="center"  width="200px">删除</td>


        </tr>

        <s:iterator value="studentList" status="st">

            <tr>

                <td align="center"  width="200px"><s:property value="#st.count"/></td>
                <td align="center"  width="200px"><s:property value="studentID"/></td>
                <td align="center"  width="200px"><s:property value="password"/></td>
                <td align="center"  width="200px"><s:property value="name"/></td>
                <td align="center"  width="200px"><s:property value="sex"/></td>
                <td align="center"  width="200px"><s:property value="birthday"/></td>
                <td align="center"  width="200px"><s:property value="university"/></td>
                <td align="center"  width="200px"><s:property value="department"/></td>
                <td align="center"  width="200px"><s:property value="major"/></td>
                <td align="center"  width="200px"><s:property value="grade"/></td>
                <td><a href="s_update.jsp?studentID=<s:property value="studentID"/>">修改</a></td>
                <td><a href="student_delete?student.studentID=<s:property value="studentID"/>">删除</a></td>


            </tr>
        </s:iterator>
    </table>

</form>
<s:debug></s:debug>




</body>
</html>
