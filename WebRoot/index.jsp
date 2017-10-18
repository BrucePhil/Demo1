<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.direct.DaoQ.DBhelperQ"%>
<%@page import="com.direct.Entity.titleinfo"%>
<%@page import="com.direct.Entity.photoinfo"%>
<%@ page import="java.text.*"%>
<%@page import="com.direct.Entity.typeinfo"%>
<%@page import="com.direct.Entity.recommendinfo"%>
<%@page import="com.direct.Entity.saidinfo"%> 
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
	
    <title>旧城</title>
	
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
<!--	背景音乐-->
	<embed src="http://www.kugou.com/song/#hash=BC038ED3A8F1C6F96559656D9F6FA79E&album_id=1559741" autostart="true" loop="-1" controls="ControlPanel" width="0px" height="0px" type="text/html"> 
<!--end	-->
	<nav id="top">
		<div class="container">
			<div class="row">
			<div class="col-md-6">
			
			<%
			if(session.getAttribute("user")==null){%>
			<strong>欢迎游客访问本网站！</strong>
			<%} else{
			%>
			<strong>欢迎<%=session.getAttribute("user") %>访问本网站！<iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=11" width="500" height="15" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" ></iframe></strong>
			<%}%>
				</div>
				<div class="col-md-6">
				
					<ul class="list-inline top-link link">
						<li><a href="index.jsp"><i class="fa fa-home"></i>主页</a></li>
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
								<li  "dropdown"><a href="registered.jsp">登陆</a></li>
								<li 	"dropdown"><a href="registered.jsp">注册</a></li>
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
								<li "dropdown"><a href="archive.jsp?id=<%=ty.getTypeid()%>"><%=ty.getTypename()%></a></li>
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
	<div class="copyrights">收集的 <a href="" >德克特交流</a></div>	
	<div class="featured container">
		<div class="row">
			<div class="col-sm-8">
				<!-- Carousel -->
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>
					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="images/timg (2).jpg" alt="First slide">
							<!-- Static Header -->
							<div class="header-text hidden-xs">
							</div><!-- /header-text -->
						</div>
						<div class="item">
							<img src="images/timg (1).jpg" alt="Second slide">
							<!-- Static Header -->
							<div class="header-text hidden-xs">
							</div><!-- /header-text -->
						</div>
						<div class="item">
							<img src="images/timg (3).jpg" alt="Third slide">
							<!-- Static Header -->
							<div class="header-text hidden-xs">
							</div><!-- /header-text -->
						</div>
					</div>
					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a>
					<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div><!-- /carousel -->
			</div>
			<div class="col-sm-4" >
				<div id="owl-demo-1" class="owl-carousel">
					<img src="images/slide-2.jpg" />
					<img src="images/slide-1.jpg" />
					<img src="images/slide-3.jpg" />
				</div>
				<img src="images/banner.jpg" />
			</div>
		</div>
	</div>
	
	<!-- //Content -->
	<div id="page-content" class="index-page container">
		<div class="row">
			<div id="main-content"><!-- background not working -->
				<div class="col-md-6">
					<div class="box wrap-vid">
						<div class="zoom-container">
							<div class="zoom-caption">
								<span class="youtube">原视频网站</span>
								<a href="single.jsp">
									<i class="fa fa-play icon-play" style="color: #fff"></i>
								</a>
								<p>三国争雄</p>
							</div>
							<img src="images/4.jpg" />
						</div>
						<h3 class="vid-name"><a href="#">三国争雄</a></h3>
						<div class="info">
							<h5>发布人 <a href="#">罗贯中</a></h5>
							<span><i class="fa fa-calendar"></i>25/3/2015</span> 
							<span><i class="fa fa-heart"></i>1,200</span>
						</div>
						<p class="more">&nbsp;&nbsp;时光翩翩起舞，无涯的荒野里，盈盈如画也只是卑微的开出花来，清寒细雨，为君沉醉，桃花乱落如红雨，一蓑烟雨茫茫醉荡，尘缘相误，你依旧是你，独我面目全非，忘记来时的路，怎能回归。张爱玲说，流泪，是因为寂寞，孤独的游子，无关风月，一样刻骨。那我们，几载年华，携手而过，而今，独留我演绎寂寞，伴着余留的烟香，散落天涯追往事。
 
　　</p>
					</div>
					
					<div class="box">
						<div class="box-header header-photo">
							<h2>照片墙</h2>
						</div>
						<div class="box-content">
							<div id="owl-demo-2" class="owl-carousel">
							<%
							DBhelperQ d=new DBhelperQ();
							ArrayList<photoinfo>e=d.query_photo();
							for(int b=0;b<e.size();b++){
							photoinfo p=e.get(b);
							
							 %>
								<div class="item">
									<img src="photo/<%=p.getPhotoname() %>" />
									
								</div>
								<%} %>
								
							</div>
						</div>
					</div>
					
					<div class="box">
						<div class="box-header header-natural">
							<h2>热门推荐</h2>
						</div>
						<div class="box-content">
							<div class="row">
								<div class="col-md-6">
									<img src="images/6.jpg" />
									<h3><a href="#">三月，意志和冬青在例行的远征</a></h3>
									<span><i class="fa fa-heart"></i> 1,200 / <i class="fa fa-calendar"></i> 25/3/2015 / <i class="fa fa-comment-o"> / </i> 10 <i class="fa fa-eye"></i> 945</span>
									<span class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half"></i>
									</span>
									<p>三月, 意志和冬青 例行远征,遇见了他们所知道的最大的地震. 水流湍急, 并且击中了他们的小木筏! 把他们冲倒在一千米之外......</p>
								</div>
								<div class="col-md-6">
									<img src="images/7.jpg" />
									<h3><a href="#">你的脚步一定很轻，好像你的路径...</a></h3>
									<span><i class="fa fa-heart"></i> 1,200 / <i class="fa fa-calendar"></i> 25/3/2015 / <i class="fa fa-comment-o"> / </i> 3 <i class="fa fa-eye"></i> 1007</span>
									<span class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half"></i>
									</span>
									<p>曾经有一个关于一个可以变成隐形人的故事。我以为这只是一个故事，直到它发生在我身上。好了，让我们看看在这里是如何工作的：因为这个东西叫做...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="sidebar">
				<div class="col-md-3">
						<div class="widget wid-new-post">
						<div class="heading"><h4>最新图片     <a href="#">更多</a></h4></div>
						<div class="content">
					<%	
					//获取系统时间
					    Calendar c = Calendar.getInstance();
						Date da=new Date();
						c.setTime(da);
						c.get(Calendar.YEAR);
						c.get(Calendar.MONTH);
						c.get(Calendar.DATE);
						c.get(Calendar.HOUR);
						DBhelperQ dh=new DBhelperQ();
						ArrayList<photoinfo>arr1=dh.query_photo();
						for(int i=0;i<6;i++){
							photoinfo ph=arr1.get(i);
					%>
							<%String a=ph.getPhototime(); %>
							<%
							//获取图片上传时间
							int year=Integer.parseInt(a.substring(0,4)); 
							int month=Integer.parseInt(a.substring(5,7)); 
							int day=Integer.parseInt(a.substring(8,10)); 
							int hour=Integer.parseInt(a.substring(11,13));
							int test=c.get(Calendar.MONTH)+1;
							if(c.get(Calendar.YEAR)==year&&test==month&&c.get(Calendar.DATE)-day<=1&&c.get(Calendar.HOUR)-hour<12)
							{%>
							<a href="#"><img style="width: 110px; float: left; padding: 10px;" src="photo/<%=ph.getPhotoname() %>" /></a>
							<%} %>
							<%} %>
						</div>
					</div>
					<!---- Start Widget ---->
					<div class="widget wid-new-post">
						<div class="heading"><h4>最近发表    <a href="#">更多</a></h4></div>
						<div class="content">
						<%
							DBhelperQ db4=new DBhelperQ();
							ArrayList<saidinfo> arr4=db4.query_shuoD();
							for(int i=0;i<arr4.size();i++){
							saidinfo sa=arr4.get(i);
						%>
							<h6><%=sa.getSaname() %></h6>
						<% if(sa.getImage()==null){
						%>
						<img style="display: none;" src="<%=sa.getImage() %>" />
					<% } else{%>
					<img  src="photo/<%=sa.getImage() %>" />
					<%}%>
							
							<p><%=sa.getSacont() %></p>
							<ul class="list-inline">
								<li><i class="fa fa-calendar"></i><%=sa.getSatime() %></li> 
							</ul>
							<hr style="border-color: green;"/>
							<%} %>
						
						</div>
					</div>
					<!---- Start Widget ---->
					<div class="widget wid-recent-post">
						<div class="heading"><h4>近期文章</h4></div>
						<div class="content">
						<%
							DBhelperQ db=new DBhelperQ();
							ArrayList<titleinfo>arr=db.query_title();
							for(int i=0;i<arr.size();i++){
							titleinfo ti=arr.get(i);
						%>
							<span><%=ti.getTitle() %><a href="title1.jsp?id=<%=ti.getTitleid() %>">详情请点击</a></span>
						<%} %>	
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<!---- Start Widget ---->
					<div class="widget wid-tags">
						<div class="heading"><h4>搜索</h4></div>
						<div class="content">
							<form role="form" class="form-horizontal" method="post" action="">
								<input type="text" placeholder="请输入需要搜索的内容" value="" name="v_search" id="v_search" class="form-control">
							</form>
							<iframe security="restricted" sandbox=""; name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=55&py=hechuan" style="border:none  #7ec8ea" width="250" height="294" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
						</div>
					</div>
					<!---- Start Widget ---->
					
					<!---- Start Widget ---->
					
					<!---- Start Widget ---->
					<div class="widget wid-banner">
						<div class="content">
							<img src="images/banner-2.jpg" class="img-responsive"/>
						</div>
					</div>
					<!---- Start Widget ---->
					
					<!---- Start Widget ---->
					<div class="widget wid-calendar">
						<div class="heading"><h4>日历</h4></div>
						<div class="content">
							<center><form action="" role="form">        
								<div class="">
									<div class="input-group date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">                </div>
									<input type="hidden" id="dtp_input2" value="" /><br/>
								</div>
							</form></center>
						</div>
					</div>
					<!---- Start Widget ---->
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
      $("#owl-demo-1").owlCarousel({
        autoPlay: 3000,
        items : 1,
        itemsDesktop : [1199,1],
        itemsDesktopSmall : [400,1]
      });
	  $("#owl-demo-2").owlCarousel({
        autoPlay: 3000,
        items : 3,
      });
    });
    </script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>
</body>
</html>