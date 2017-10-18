<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery邮箱验证</title>
<script type="text/javascript" src="js/jquery-1.4.1.js" ></script>
<script type="text/javascript">
$(document).ready(function(e) {

$("#email").blur(function(e){
var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
var email=$("#email").val();
if(email==''){
$("#spanEmail").html("邮箱不能为空");
$("#spanEmail").css({"color":"#F00"});
}else if(!pattern.test(email)){
$("#spanEmail").html("邮箱格式不正确");
$("#spanEmail").css({"color":"#F00"});

}else{
$("#spanEmail").hide();
} 
});


$("#pwd1").blur(function(e){
var pwd1=$("#pwd1").val();
if(pwd1==''){
$("#spanPwd1").html("密码不能为空");
$("#spanPwd1").css({"color":"#F00"});
}else if(pwd1.length<6){
$("#spanPwd1").html("密码不能少于6位");
$("#spanPwd1").css({"color":"#F00"});
}else if(pwd1.length>15){
$("#spanPwd1").html("密码不能大于15位");
$("#spanPwd1").css({"color":"#F00"});
}else{
$("#spanPwd1").hide();
}
});
$("#pwd2").blur(function(e){
var pwd2=$("#pwd2").val();
if(pwd2==''){
$("#spanPwd2").html("密码不能为空");
$("#spanPwd2").css({"color":"#F00"});
}else if(pwd2!=$("#pwd1").val()){
$("#spanPwd2").html("两次密码不一致");
$("#spanPwd2").css({"color":"#F00"});
}else{
$("#spanPwd2").hide();
}
});
        $("#userName").blur(function(e) {
           var name=$("#userName").val();
var reg=/^\d+$/;
if(name==''){
$("#spanName").html("姓名不能为空");
$("#spanName").css({"color":"#F00"});
}else if(name.length!=0){
for(var i=0;i<name.length;i++){
if(name[i].match(reg)){
$("#spanName").html("姓名中不能含有数字");
$("#spanName").css({"color":"#F00"});
return;
}else{
$("#spanName").hide();
}
}
}
        });


    });
</script>
</head>


<body>
<div>注册休闲网</div>
    <div>
    <form>
    <table>
        <tr>
        <td>您的Email:</td>
            <td>
            <input type="text" name="email" id="email" />
                <span id="spanEmail"></span>
            </td>
        </tr>
        <tr>
        <td>输入密码：</td>
            <td>
            <input type="password" name="pwd1" id="pwd1"/>
                <span id="spanPwd1"></span>
            </td>
        </tr>
        <tr>
        <td>再输入一遍密码：</td>
            <td>
            <input type="password" name="pwd2" id="pwd2"/>
                <span id="spanPwd2"></span>
            </td>
        </tr>
        <tr>
        <td>您的姓名：</td>
            <td>
            <input type="text" name="userName" id="userName"/>
                <span id="spanName"></span>
            </td>
        </tr>
        <tr>
        <td>性别：</td>
            <td id="sex">
            <input type="radio" name="sex"/>男
                <input type="radio" name="sex"/>女
                 <span id="spanRadio"></span>
            </td>
        </tr>
        <tr>
        <td>出生日期：</td>
            <td>
            <textarea id="dateShow"></textarea>
                <span id="spanDate"></span>
            </td>
        </tr>
        <tr>
        <td>
            <input type="submit" value="注册" name="submit" />
            </td>
        </tr>
        </table>
    </form>
    
    </div>
</body>
</html>
