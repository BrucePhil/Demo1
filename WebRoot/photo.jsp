<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.direct.DaoQ.DBhelperQ"%>
<%@page import="com.direct.Entity.titleinfo"%>
<%@page import="com.direct.Entity.photoinfo"%>
<%@ page import="java.text.*"%>
<%@page import="com.direct.Entity.typeinfo"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">
	
    <title>相册</title>
	
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">
	
	<!-- Owl Carousel Assets -->
    <link href="owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="owl-carousel/owl.theme.css" rel="stylesheet">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
	 <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
	
	<!-- jQuery and Modernizr-->
	<script src="js/jquery-2.1.1.js"></script>
	
	<!-- Core JavaScript Files -->  	 
    <script src="js/bootstrap.min.js"></script>
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>


<header >
	<!--Top-->
	<nav id="top">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<%
			if(session.getAttribute("user")==null){%>
			<strong>欢迎游客访问本网站！</strong>
			<%} else{
			%>
			<strong>欢迎<%=session.getAttribute("user") %>访问本网站！</strong>
			<%}%>
				</div>
				<div class="col-md-6">
					<ul class="list-inline top-link link">
						<li><a href="index.jsp"><i class="fa fa-home"></i> 主页</a></li>
						<li><a href="contact.jsp"><i class="fa fa-comments"></i> Email</a></li>
						<li><a href="JJ/webdemo/im/index.html"><i class="fa fa-question-circle"></i> 进入旧梦</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	
	<!--Navigation-->
    <nav id="menu" class="navbar container">
		<div class="navbar-header">
			<button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			<a class="navbar-brand" href="#">
				<div class="logo"><span>旧城旧梦</span></div>
			</a>
		</div>
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">主页</a></li>
				<li><a href="servlet/personServlet">个人中心</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">账户 <i class="fa fa-arrow-circle-o-down"></i></a>
					<div class="dropdown-menu">
						<div class="dropdown-inner">
							<ul class="dropdown-menu">
								<li><a href="registered.jsp">登陆</a></li>
								<li><a href="registered.jsp">注册</a></li>
							</ul>
						</div>
					</div>
				</li>
				
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">文章分类<i class="fa fa-arrow-circle-o-down"></i></a>
					<div class="dropdown-menu">
						<div class="dropdown-inner">
							<ul class="dropdown-menu">
							<%
							DBhelperQ db1=new DBhelperQ();
							ArrayList<typeinfo> arr2=db1.query_type();
							for(int i=0;i<arr2.size();i++){
							typeinfo ty=arr2.get(i);
							
							 %>
								<li><a href="archive.jsp?id=<%=ty.getTypeid()%>"><%=ty.getTypename()%></a></li>
								<%} %>
							</ul>
						</div> 
					</div>
				</li>
				<li><a href="title.jsp"><i class="fa fa-cubes"></i> 文章</a></li>
				<li><a href="shuoshuo.jsp"><i class="fa fa-cubes"></i> 说说</a></li>
				<li><a href="contact.jsp"><i class="fa fa-envelope"></i>Email</a></li>
				<li><a href="photo.jsp"><i class="fa fa-cubes"></i>相册</a></li>
			</ul>
		
		</div>
	</nav>
</header>

	
<div class="container">
   <div class="row">
      <div class="col-md-12" >
      
      
      <iframe src="test.jsp" style="width: 100%; height: 100%;"></iframe>
      
      
      </div>
   </div>
</div>

<!--测试-->


</body>
</html>
