<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.direct.DaoQ.DBhelperQ"%>
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
	
    <title>Newspaper</title>
	
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
	
	<!-- Owl Carousel Assets -->
    <link href="owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="owl-carousel/owl.theme.css" rel="stylesheet">
	
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
	<div class="featured container">
		<div id="owl-demo" class="owl-carousel">
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>腾讯视频</span>
						<a href="single.jsp">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>你的名字</p>
					</div>
					<img src="images/1.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>腾讯视频</span>
						<a href="single.jsp">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>我的名字</p>
					</div>
					<img src="images/2.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>腾讯视频</span>
						<a href="single.jsp">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>他的名字</p>
					</div>
					<img src="images/3.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>腾讯视频</span>
						<a href="single.jsp">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>她的名字</p>
					</div>
					<img src="images/8.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>腾讯视频</span>
						<a href="single.jsp">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>它的名字</p>
					</div>
					<img src="images/9.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>腾讯视频</span>
						<a href="single.jsp">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>我们的名字</p>
					</div>
					<img src="images/10.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>腾讯视频</span>
						<a href="single.jsp">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>你们的名字</p>
					</div>
					<img src="images/11.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>腾讯视频</span>
						<a href="single.jsp">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>他们的名字</p>
					</div>
					<img src="images/12.jpg" />
				</div>
			</div>
		</div>
	</div>
	<!-- Header -->
	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content" class="single-page container">
		<div class="row">
			<div id="main-content" class="col-md-8">
				<div class="box">
					<div class="wrap-vid">
<iframe width="100%" height="100%" src="test.mp4"></iframe>

					</div>
					
					<div class="line"></div>
					<h1 class="vid-name"><a href="#">冥冥之中我们</a></h1>
					<div class="info">
						<h5>发布<a href="#">张嘉豪</a></h5>
						<span><i class="fa fa-calendar"></i>22/4/2015</span> 
						<span><i class="fa fa-heart"></i>1,941</span>
					</div>
					<p style="margin-top: 20px">感情的戏，我没演技。请不要假装对我好，我很傻会当真的。你是我猜不到的不知所措，我是你想不到的无关痛痒。你做对的时候，没人会记得；你做错的时候，连呼吸都是错。没有什么过不去，只是再也回不去。我喜欢现在的自己，我怀念过去的我们。不再想要之际，什么都可放下。童话已经结束，遗忘就是幸福。</p>
					<h4>标题</h4>
					<p style="margin-top: 20px">如果把脑海里关于你的记忆，用一个点来表示的话，那我大概可以书写出足以延绵到宇宙尽头那么长的省略号。
22、天真的誓言，总有被搁浅的一天。</p>
					
					<div class="line"></div>
					<div class="comment">
					
					</div>
				</div>
				
				<div class="box">
					<div class="box-header header-natural">
					</div>
					<div class="box-content">
						<div class="row">
							<div class="col-md-4">
								<div class="wrap-vid">
									<div class="zoom-container">
										<div class="zoom-caption">
											<span>腾讯视频</span>
											<a href="single.jsp">
												<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
											</a>
											<p>她们的名字</p>
										</div>
										<img src="images/2.jpg" />
									</div>
									<h3 class="vid-name"><a href="#">她们的名字</a></h3>
									<div class="info">
										<h5>By <a href="#">张嘉豪</a></h5>
										<span><i class="fa fa-calendar"></i>25/3/2015</span> 
										<span><i class="fa fa-heart"></i>1,207</span>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="wrap-vid">
									<div class="zoom-container">
										<div class="zoom-caption">
											<span>腾讯视频</span>
											<a href="single.jsp">
												<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
											</a>
											<p>谁的名字</p>
										</div>
										<img src="images/2.jpg" />
									</div>
									<h3 class="vid-name"><a href="#">谁的名字</a></h3>
									<div class="info">
										<h5>By <a href="#">张嘉豪</a></h5>
										<span><i class="fa fa-calendar"></i>25/3/2015</span> 
										<span><i class="fa fa-heart"></i>537</span>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="wrap-vid">
									<div class="zoom-container">
										<div class="zoom-caption">
											<span>腾讯视频</span>
											<a href="single.jsp">
												<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
											</a>
											<p>名字</p>
										</div>
										<img src="images/2.jpg" />
									</div>
									<h3 class="vid-name"><a href="#">名字</a></h3>
									<div class="info">
										<h5>By <a href="#">张嘉豪</a></h5>
										<span><i class="fa fa-calendar"></i>25/3/2015</span> 
										<span><i class="fa fa-heart"></i>397</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="sidebar" class="col-md-4">
				<!---- Start Widget ---->
				<div class="widget wid-follow">
					<div class="heading"><h4>怀旧</h4></div>
					<div class="content">
						<img src="images/banner.jpg" />
					</div>
				</div>
				<!---- Start Widget ---->
				<div class="widget wid-post">
					<div class="heading"><h4>经典</h4></div>
					<div class="content">
						<div class="post wrap-vid">
							<div class="zoom-container">
								<div class="zoom-caption">
									<span>腾讯视频</span>
									<a href="single.jsp">
										<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
									</a>
									<p>好名字</p>
								</div>
								<img src="images/1.jpg" />
							</div>
							<div class="wrapper">
								<h5 class="vid-name"><a href="#">好名字</a></h5>
								<div class="info">
									<h6>By <a href="#">张嘉豪</a></h6>
									<span><i class="fa fa-calendar"></i>25/3/2015</span> 
									<span><i class="fa fa-heart"></i>786</span>
								</div>
							</div>
						</div>
						<div class="post wrap-vid">
							<div class="zoom-container">
										<div class="zoom-caption">
											<span>腾讯视频</span>
											<a href="single.jsp">
												<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
											</a>
											<p>名字不错</p>
										</div>
										<img src="images/2.jpg" />
									</div>
							<div class="wrapper">
								<h5 class="vid-name"><a href="#">名字不错</a></h5>
								<div class="info">
									<h6>By <a href="#">张嘉豪</a></h6>
									<span><i class="fa fa-calendar"></i>25/3/2015</span> 
									<span><i class="fa fa-heart"></i>783</span>
								</div>
							</div>
						</div>
						<div class="post wrap-vid">
							<div class="zoom-container">
								<div class="zoom-caption">
									<span>腾讯视频</span>
									<a href="single.jsp">
										<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
									</a>
									<p>名字可以</p>
								</div>
								<img src="images/3.jpg" />
							</div>
							<div class="wrapper">
								<h5 class="vid-name"><a href="#">名字可以</a></h5>
								<div class="info">
									<h6>By <a href="#">张嘉豪</a></h6>
									<span><i class="fa fa-calendar"></i>25/3/2015</span> 
									<span><i class="fa fa-heart"></i>7,386</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!---- Start Widget ---->
				<div class="widget ">
					<div class="heading"><h4>头条新闻</h4></div>
					<div class="content">
						<div class="wrap-vid">
							<div class="zoom-container">
								<div class="zoom-caption">
									<span>腾讯视频</span>
									<a href="single.jsp">
										<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
									</a>
									<p>流行名字</p>
								</div>
								<img src="images/1.jpg" />
							</div>
							<h3 class="vid-name"><a href="#">流行名字</a></h3>
							<div class="info">
								<h5>By <a href="#">张嘉豪</a></h5>
								<span><i class="fa fa-calendar"></i>25/3/2015</span> 
								<span><i class="fa fa-heart"></i>196</span>
							</div>
						</div>
						<div class="wrap-vid">
							<div class="zoom-container">
								<div class="zoom-caption">
									<span>腾讯视频</span>
									<a href="single.jsp">
										<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
									</a>
									<p>名字还行</p>
								</div>
								<img src="images/2.jpg" />
							</div>
							<h3 class="vid-name"><a href="#">名字还行</a></h3>
							<div class="info">
								<h5>By <a href="#">张嘉豪</a></h5>
								<span><i class="fa fa-calendar"></i>25/3/2015</span> 
								<span><i class="fa fa-heart"></i>399</span>
							</div>
						</div>
						<div class="wrap-vid">
							<div class="zoom-container">
								<div class="zoom-caption">
									<span>腾讯视频</span>
									<a href="single.jsp">
										<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
									</a>
									<p>名字很棒</p>
								</div>
								<img src="images/3.jpg" />
							</div>
							<h3 class="vid-name"><a href="#">名字很棒</a></h3>
							<div class="info">
								<h5>By <a href="#">张嘉豪</a></h5>
								<span><i class="fa fa-calendar"></i>25/3/2015</span> 
								<span><i class="fa fa-heart"></i>967</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div class="copy-right">
			<p>版权 &copy; 2017.旧城旧梦公司名称版权所有</p>
		</div>
	</footer>
	<!-- Footer -->
	
	<!-- JS -->
	<script src="owl-carousel/owl.carousel.js"></script>
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
