<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.direct.DaoQ.DBhelperQ"%>
<%@page import="com.direct.Entity.userInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>Sign Up Login</title>
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="css/bgstyle.css">
<link rel="stylesheet" href="selectcss/example.css" type="text/css">
<link rel="stylesheet" href="selectcss/dropkick.css" type="text/css">
<script type="text/javascript" src="js/jquery-1.4.1.js" ></script>
<script type="text/javascript" src="selectjs/jquery.min.js"></script>
<script type="text/javascript" src="selectjs/jquery.dropkick-min.js"></script>
<style type="text/css">

span {left: 80px;}
</style>



<!---->
<script type="text/javascript" src="js/jquery-1.4.1.js" ></script>
<script type="text/javascript">
$(document).ready(function(e) {

$("#email").blur(function(e){
var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
var email=$("#email").val();
if(email==''){
alert("邮箱不能为空")
}else if(!pattern.test(email)){
alert("邮箱格式不正确")

}else{
$("#spanEmail").hide();
} 
});



$("#pwd1").blur(function(e){
var pwd1=$("#pwd1").val();
if(pwd1==''){
alert("密码不能为空")
}else if(pwd1.length<6){
alert("密码不能小于6位")
}else if(pwd1.length>15){
alert("密码不能大于15位")
}else{
$("#spanPwd1").hide();
}
});
$("#pwd2").blur(function(e){
var pwd2=$("#pwd2").val();
if(pwd2==''){
alert("密码不能为空")
}else if(pwd2!=$("#pwd1").val()){
alert("两次密码不一致")
}else{
$("#spanPwd2").hide();
}
});
        $("#userName").blur(function(e) {
           var name=$("#userName").val();
var reg=/^\d+$/;
if(name==''){
alert("姓名不能为空")
}else if(name.length!=0){
for(var i=0;i<name.length;i++){
if(name[i].match(reg)){
alert("姓名中不能含数字")
return;
}else{
$("#spanName").hide();
}
}
}
        });
    });
    window.location().herf(index.jsp);
</script>

<!---->

</head>
<body >
<div class="col-md-6">
<div class="cotn_principal">
    <div class="cont_login">
      <div class="cont_info_log_sign_up">
        <div class="col_md_login">
          <div class="cont_ba_opcitiy">
          
            <h2>登录</h2>
            <p>欢迎来到旧城旧梦登陆平台.</p>
             <!-- 也许你会因为乱码而忧伤点击这里点击这里，解决的方法是存在的。 -->
            <button class="btn_login" onClick="cambiar_login()">登录</button>
          </div>
        </div>
        <div class="col_md_sign_up">
        
          <div class="cont_ba_opcitiy">
            <h2>注册</h2>
            <p>欢迎来到旧城旧梦注册平台.</p>
            <button class="btn_sign_up" onClick="cambiar_sign_up()">注册</button>
          </div>
        </div>
      </div>
      <div class="cont_back_info">
        <div class="cont_img_back_grey"> <img src="images/4.jpg" alt="" /> </div>
      </div>
      <div class="cont_forms" >
        <div class="cont_img_back_"> <img src="images/4.jpg" alt="" /> </div>
        <form action="servlet/loginServlet" method="post" id="form" role="form">
        <div class="cont_form_login"> <a href="#" onClick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
          <h2>登录</h2>
          <input type="text" placeholder="用户名" name="loginUser"/>
          <input type="password" placeholder="密码" name="loginpassword"/>
          
           <input type="submit" class="btn_sign_up" value="		登录">
        </div>
        </form role="form">
        <form action="servlet/zhuce" method="post">
        <div class="cont_form_sign_up"> <a href="#" onClick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
      		 <h2>注册</h2>
      		 
          <input type="text" placeholder="用户名（真实姓名）" name="User" id="userName" />
          <%
          DBhelperQ db=new DBhelperQ();
          ArrayList<userInfo>arr=db.query_userinfo();
          for(int i=0;i<arr.size();i++){
          userInfo ui=arr.get(i);
          
           %>
            <input type="text" style="display: none" id="spanName" value="<%=ui.getUser_name() %>"> 
            <%} %>
          <input type="password" placeholder="密码" name="Password" id="pwd1"/>
          <input type="password" placeholder="确认密码" name="once_again_Pssword" id="pwd2"/>
          <input type="text" placeholder="邮箱" name="Email" id="email"/>
          <input type="text" placeholder="联系电话" name="telephone" id="tel"/>
          <br>
       <span class="dk_wrap">
		<select name="country-nofake" class="default">
		  <option value="男">男</option>
		  <option value="女">女</option>
		</select>
	  </span> 
	  <br>
         <input type="submit" class="btn_sign_up" id="a" value="		注册">
        </div>
        </form>
      </div>
    </div>
  </div></div>
</div>
</div>
<script src="js/bgindex.js"></script>
<div style="text-align:center;">

</div>
</body>
</html>

