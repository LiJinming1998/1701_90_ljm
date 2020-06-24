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
当前登录：普通管理员<s:property value="#session.admin.username"/><br>

<h2>学生信息查询</h2>


<form action="findAll_ordinary" method="post">
    <table border="1" align="center">
        <tr>
            <td align="center"  width="200px">序号</td>
            <td align="center"  width="200px">学号</td>
            <td align="center"  width="200px">密码</td>
            <td align="center" width="200px">姓名</td>
            <td align="center"  width="200px">性别</td>
            <td align="center"  width="200px">出生日期</td>
            <td align="center" width="200px">学校</td>
            <td align="center"  width="200px">院系</td>
            <td align="center" width="200px">专业</td>
            <td align="center"  width="200px">年级</td>
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



            </tr>
        </s:iterator>
    </table>

</form>
<s:debug></s:debug>




</body>
</html>
