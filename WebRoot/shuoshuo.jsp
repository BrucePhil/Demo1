<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.direct.DaoQ.DBhelperQ"%>
<%@page import="com.direct.Entity.typeinfo"%>
<%@page import="com.direct.Entity.titleinfo"%>
<%@page import="com.direct.Entity.saidreviewinfo"%>
<%@page import="com.direct.Entity.plsaidinfo"%>
<%@page import="com.direct.Entity.replyinfo"%>
<%@page import="com.direct.Entity.userInfo"%>
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
	
    <title>说说</title>
	
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
	
	<!-- Owl Carousel Assets -->
    <link href="owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="owl-carousel/owl.theme.css" rel="stylesheet">
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
	 <link rel="stylesheet" href="black/assets/css/style.css">
    <link rel="stylesheet" href="black/assets/css/loader-style.css">
    <link rel="stylesheet" href="black/assets/css/bootstrap.css">
    <link rel="stylesheet" href="black/assets/js/button/ladda/ladda.min.css">
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
	<div class="featured container"></div>
	<!-- Header -->
	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content" class="archive-page container">
		<div class="" >
			<div class="row">
				<div id="main-content" class="col-md-12">
					</div>
				<% DBhelperQ db =new DBhelperQ();
					ArrayList<saidreviewinfo>sa=db.query_said();
					for(int i=0;i<sa.size();i++)
					{saidreviewinfo said=sa.get(i);
				 %>
 <div id="page-content" class="archive-page container">
		<div class="" >
			<div class="row">
				<div id="main-content" class="col-md-12">
    						 <div class="nest" id="a<%=i %>">
                            <div class="title-alt" >
                            <h6>
                            <% ArrayList<userInfo>usa=db.query_userid(said.getSaidname());
                            userInfo uad=usa.get(0); %>
                            <%if(session.getAttribute("user")==null){%>
                                                                          发布人：<font><%=said.getSaidname() %> </font>
                                                                     
                            <% }else if(session.getAttribute("user").equals(said.getSaidname())){%>
                                                                         发布人： <a href="black/social.jsp"><%=said.getSaidname() %></a> 
                                                                 
                            
                          <%}else{%>
                                                                          发布人： <a href="userblack/social.jsp?id=<%=uad.getUser_id() %>"><%=said.getSaidname() %></a> 
                            <% } %>内容：<%=said.getSaidid() %>
                                   </h6> <div class="titleClose">
                                    <a class="gone" href="#a<%=i %>">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#<%=i %>">
                                       <span class="entypo-up-open" >
                                       
                                       </span>
                                    </a>
                                </div>
                                  
                               
                            </div>
                            <div style="display: none" class="body-nest" id="<%=i %>">
                                <address>
                                <%if(said.getPhoto()==null) {%><%}else{%>
                              
                                <div class="nest"><img style=" height: 150px;width: 150px;" src="photo/<%=said.getPhoto() %>"></div>
                             	   <%}%>
                             	  <%
	                                ArrayList<plsaidinfo>pl=sa.get(i).getArr();
	                                for(int k=0;k<pl.size();k++) {
	                                ArrayList<userInfo>us=db.query_username(pl.get(k).getSaidren());
	                                userInfo u=us.get(0);
	                               %>
	                                    
	                               <br>
	                               <%if(session.getAttribute("user")==null){%>
	                               <strong>
	                                                                                     评论人:<font><%=u.getUser_name()%></font>
                                    </strong><br/>
	                               <% }else{%>
	                               <strong>评论人：<a href="userblack/social.jsp?id=<%=pl.get(k).getSaidren() %>">
                                    <%=u.getUser_name()%></a>
                                    </strong><br/>
	                              <%} %>
                                    
                                  <strong>评论内容：<%=pl.get(k).getPlcont() %></strong> 
                                </address>
                                <address>
                                    <strong>评论时间：<%=pl.get(k).getPltime() %></strong><hr/>
                                </address>
                         
                              
<!--   作者回复                           -->
      
                                 <% 
                                    	ArrayList<replyinfo>arr1=pl.get(k).getArr();
                                    
                                    	for(int j=0;j<arr1.size();j++)
                                    	{	%>
                                      <strong>回复对象：<%=u.getUser_name() %></strong><br/>
                                    <strong>回复时间：<%=arr1.get(j).getReplytime() %></strong><br/>
                                     <strong>回复内容：<%=arr1.get(j).getReplycont() %></strong><hr/>
                                  
                                   <%  }} %>
                                </address>
<!---->

  								 <div class="title-alt">
                               
                                <div class="titleToggle">
                                  <%if(session.getAttribute("user")==null){%>  <% } else{%>
                                    <a class="nav-toggle-alt" href="#c<%=i %>">
                                    
                                    		 评论  <span class="entypo-up-open"></span>
                                    </a>
                                    <% }%>
                                </div>
                            </div>
                            <div class="body-nest" style="display: none" id="c<%=i %>">


								<div class="well" >
  						<form method="post" action="servlet/addplsaid"> 
  						 <div class="form-group">
  						
                              <input style="display: none" type="text" value="<%=said.getShuoid() %>" name="rename">	
                                    <textarea placeholder="评论内容" rows="5" class="form-update" name="cont"></textarea>
                                </div>
                                <input type="submit" class="btn btn-info">
  	
  						</form>
                        </div>
                            </div>
                            </div>
                            
                        </div>
<!--                        end-->
                       
<%} %>
					<hr class="line">
				</div>
		</div>
	</div>
	<!-- JS -->
	<script src="owl-carousel/owl.carousel.js"></script>
	 <script type="text/javascript" src="black/assets/js/preloader.js"></script>
    <script type="text/javascript" src="black/assets/js/bootstrap.js"></script>
  <script type="text/javascript" src="black/assets/js/app.js"></script>
    <script type="text/javascript" src="black/assets/js/load.js"></script>
   <script type="text/javascript" src="black/assets/js/main.js"></script>
    <script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({
        autoPlay: 3000,
        items : 5,
        itemsDesktop : [1199,4],
        itemsDesktopSmall : [979,4]
      });

    });
    </script>
</body>
</html>