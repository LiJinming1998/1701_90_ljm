<%--
  Created by IntelliJ IDEA.
  User: Lijinming
  Date: 2020/4/2
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Lijinming
  Date: 2020/4/2
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工注册页面</title>
    <SCRIPT src="js/jquery-1.9.1.min.js" type="text/javascript"></SCRIPT>
    <STYLE>
        body{
            background: #ebebeb;
            font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif;
            color: #222;
            font-size: 12px;
        }
        *{padding: 0px;margin: 0px;}
        .top_div{
            background: #008ead;
            width: 100%;
            height: 400px;
        }
        .ipt{
            border: 1px solid #d3d3d3;
            padding: 10px 10px;
            width: 290px;
            border-radius: 4px;
            padding-left: 35px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
        }
        .ipt:focus{
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
        }
        .u_logo{
            background: url("images/username.png") no-repeat;
            padding: 10px 10px;
            position: absolute;
            top: 43px;
            left: 40px;

        }
        .p_logo{
            background: url("images/password.png") no-repeat;
            padding: 10px 10px;
            position: absolute;
            top: 12px;
            left: 40px;
        }
        a{
            text-decoration: none;
        }
        .tou{
            background: url("images/tou.png") no-repeat;
            width: 97px;
            height: 92px;
            position: absolute;
            top: -87px;
            left: 140px;
        }
        .left_hand{
            background: url("images/left_hand.png") no-repeat;
            width: 32px;
            height: 37px;
            position: absolute;
            top: -38px;
            left: 150px;
        }
        .right_hand{
            background: url("images/right_hand.png") no-repeat;
            width: 32px;
            height: 37px;
            position: absolute;
            top: -38px;
            right: -64px;
        }
        .initial_left_hand{
            background: url("images/hand.png") no-repeat;
            /*url("images/hand.png") no-repeat;*/
            width: 30px;
            height: 20px;
            position: absolute;
            top: -12px;
            left: 100px;
        }
        .initial_right_hand{
            background: url("images/hand.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -12px;
            right: -112px;
        }
        .left_handing{
            background: url("images/left-handing.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -24px;
            left: 139px;
        }
        .right_handinging{
            background: url("images/right_handing.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -21px;
            left: 210px;
        }



    </STYLE>
    <SCRIPT type="text/javascript">
        $(function(){
            //得到焦点
            $("#password").focus(function(){
                $("#left_hand").animate({
                    left: "150",
                    top: " -38"
                },{step: function(){
                        if(parseInt($("#left_hand").css("left"))>140){
                            $("#left_hand").attr("class","left_hand");
                        }
                    }}, 2000);
                $("#right_hand").animate({
                    right: "-64",
                    top: "-38px"
                },{step: function(){
                        if(parseInt($("#right_hand").css("right"))> -70){
                            $("#right_hand").attr("class","right_hand");
                        }
                    }}, 2000);
            });
            //失去焦点
            $("#password").blur(function(){
                $("#left_hand").attr("class","initial_left_hand");
                $("#left_hand").attr("style","left:100px;top:-12px;");
                $("#right_hand").attr("class","initial_right_hand");
                $("#right_hand").attr("style","right:-112px;top:-12px");
            });
        });
    </SCRIPT>

    <META name="GENERATOR" content="MSHTML 11.00.9600.17496">


</head>
<body>
<DIV class="top_div" style="text-align: center;"><h1 style="padding:120px;color:rgb(255,255,255)">学生信息管理系统</h1></DIV>


<DIV style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 480px; text-align: center;">

    <form action="student_register" method="post">
        <DIV style="width: 165px; height: 96px; position: absolute;">
            <DIV class="tou"></DIV>
            <DIV class="initial_left_hand" id="left_hand"></DIV>
            <DIV class="initial_right_hand" id="right_hand"></DIV></DIV>
        <P style="padding: 30px 0px 10px; position: relative;">
            姓名：<SPAN class=""></SPAN>
            <INPUT class="ipt" type="text" placeholder="请输入姓名" value="" name="student.name">
        </P>
        <P style="padding: 5px 0px 10px;position: relative;">
            性别：<SPAN class=""></SPAN>
            <input  style="width:37%;" class="" type="radio" name="student.sex" value="true" checked="checked">男
            <input style="width:40%;" type="radio" name="student.sex" value="false">女

        </P>
        <P style="padding: 0px 0px 10px;position: relative;">
            生日：<SPAN class=""></SPAN>
            <input class="ipt" type="date" placeholder="" name="student.birthday">

        </P>
        <P style="padding: 0px 0px 10px;position: relative;">
            学校：<SPAN class=""></SPAN>
            <input class="ipt" type="text " placeholder="请输入学校" name="student.university">
        </P>
        <P style="padding: 0px 0px 10px;position: relative;">
            年级：<SPAN class=""></SPAN>
        <select style="width:340px;" class="ipt" placeholder="请输入年级" name="student.grade">
            <option >大一</option>
            <option >大二</option>
            <option >大三</option>
            <option >大四</option>
            <option >研究生</option>
        </select>
        </P>
        <P style="padding: 0px 0px 10px;position: relative;">
            学院：<SPAN class=""></SPAN>
            <INPUT class="ipt"  type="text" placeholder="请输入学院" value="" name="student.department">

        </P>
        <P style="padding: 0px 0px 10px;position: relative;">
            专业：<SPAN class=""></SPAN>
            <INPUT class="ipt"  type="text" placeholder="请输入专业" value="" name="student.major">
        </P>

        <P style="padding: 0px 0px 10px;position: relative;">
            密码：<SPAN class=""></SPAN>
            <INPUT class="ipt"  type="password" placeholder="请输入密码" value="" name="student.password">
        </P>

        <P style="padding: 0px 0px 10px;position: relative;">
            确认：<SPAN class=""></SPAN>
            <INPUT class="ipt"  type="password" placeholder="请确认密码" value="" name="student.password">
        </P>
        <DIV style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
            <P style="margin: 0px 35px 20px 45px;">
            <SPAN style="float: left;">
                <A style="color: rgb(204, 204, 204);" href="#">忘记密码?</A>
            </SPAN>
                <SPAN style="float: right;">
                <A style="color: rgb(204, 204, 204); margin-right: 10px;" href="#">注册</A>
                <input type="submit" style="background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;" value="注册" />

           </SPAN>
            </P>
        </DIV>
    </form>
</DIV>



</body>
</html>
