<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.direct.DaoQ.DBhelperQ"%>
<%@page import="com.direct.Entity.userInfo"%>
<%@page import="com.direct.DaoH.DBhelper"%>
<%@page import="com.direct.Entity.saidreviewinfo"%>
<%@page import="com.direct.Entity.leaveinfo"%>
<%@page import="com.direct.Entity.releaveinfo"%>
<%@page import="registeredDao.DBhelperZ"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>Apricot 1.3</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/mail.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
</head>
  
  <body>
     <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <!-- 顶部导航栏 -->
    <nav role="navigation" class="navbar navbar-static-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="entypo-menu"></span>
                </button>
                <button class="navbar-toggle toggle-menu-mobile toggle-left" type="button">
                    <span class="entypo-list-add"></span>
                </button>
                <div id="logo-mobile" class="visible-xs">
                   <h1>个人中心<span>v1.2</span></h1>
                </div>
            </div>
			
			<%
				DBhelperZ dhZ = new DBhelperZ();
				ArrayList<userInfo> ar=dhZ.query_all(session.getAttribute("user").toString());
				userInfo usero = ar.get(0);
			%>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
                <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" class="admin-pic img-circle" src="../HeadPortrait_img/<%=usero.getPhoto() %>"><%=session.getAttribute("user")%>
                        </a>
                        
                    </li>
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="icon-gear"></span>&#160;&#160;主题设置</a>
                        <ul role="menu" class="dropdown-setting dropdown-menu">

                            <li class="theme-bg">
                                <div id="button-bg"></div>
                                <div id="button-bg2"></div>
                                <div id="button-bg3"></div>
                                <div id="button-bg5"></div>
                                <div id="button-bg6"></div>
                                <div id="button-bg7"></div>
                                <div id="button-bg8"></div>
                                <div id="button-bg9"></div>
                                <div id="button-bg10"></div>
                                <div id="button-bg11"></div>
                                <div id="button-bg12"></div>
                                <div id="button-bg13"></div>
                            </li>
                        </ul>
                    </li>
                    
                </ul>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- /END OF TOP NAVBAR -->

    <!-- SIDE MENU -->
    <div id="skin-select">
        <div id="logo">
         <h1>个人中心<span>v1.2</span></h1>
        </div>

        <a id="toggle">
            <span class="entypo-menu"></span>
        </a>
        <div class="dark">
            <form action="#">
                <span>
                    <input type="text" name="search" value="" class="search rounded id_search" placeholder="搜索功能" autofocus="">
                </span>
            </form>
        </div>

        <div class="search-hover">
            <form id="demo-2">
                <input type="search" placeholder="Search Menu..." class="id_search">
            </form>
        </div>




        <div class="skin-part">
            <div id="tree-wrap">
                <div class="side-bar">
                    <ul class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                                <span class="widget-menu"></span>
                                <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                            </a>
                        </li>

                        <li>
                            <a class="tooltip-tip ajax-load" href="#" title="个人应用">
                                <i class="icon-document-edit"></i>
                                <span>个人应用</span>

                            </a>
                            <ul>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="blog-list.jsp" title="文章列表"><i class="entypo-doc-text"></i><span>文章列表</span></a>
                                </li>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="blog-shuo.jsp" title="说说列表"><i class="entypo-doc-text"></i><span>说说列表</span></a>
                                </li>
                                <li>
                                    <a style="display: none;"  class="tooltip-tip2 ajax-load" href="blog-detail.jsp" title="我的文章详细信息"><i class="entypo-newspaper"></i><span>我的文章详细信息</span></a>
                                </li>
                                <li>
                                    <a style="display: none;"  class="tooltip-tip2 ajax-load" href="blog-detail1.jsp" title="我的说说详细信息"><i class="entypo-newspaper"></i><span>我的说说详细信息</span></a>
                                </li>
                            </ul>
                        </li>
                       
                        <li>
                            <a class="tooltip-tip ajax-load" href="media.jsp" title="图片动态">
                                <i class="icon-camera"></i>
                                <span>图片动态</span>

                            </a>
                        </li>
                          </li>
                          <li>
                            <a class="tooltip-tip ajax-load" href="leave.jsp" title="我的留言">
                                <i class="icon-mail"></i>
                                <span>留言板</span>
                            </a>
                        </li>
                            <li>
                            <a class="tooltip-tip ajax-load" href="../index.jsp" title="返回首页">
                                   <i class="icon-window"></i>
                                <span>返回首页</span>

                            </a>
                        </li>
                    </ul>

                    <ul class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                                <span class="design-kit"></span>
                                <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                            </a>
                        </li>


                        <li>
                            <a class="tooltip-tip" href="#" title="其他选项">
                                <i class="icon-document-new"></i>
                                <span>其他选项</span>
                            </a>
                            <ul>
                                <li>
                                    <a class="tooltip-tip2" href="lock-screen.jsp" title="锁定屏幕"><i class="icon-lock"></i><span>锁定屏幕</span></a>
                                </li>
                                 <li>
                                    <a class="tooltip-tip2" href="../servlet/SignoutSessionServlet" title="退出账号"><i class="icon-help tooltitle"></i><span>退出账号</span></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- END OF SIDE MENU -->



    <!--  PAPER WRAP -->
    <div class="wrap-fluid">
        <div class="container-fluid paper-wrap bevel tlbr">





            <!-- CONTENT -->
            <!--TITLE -->
            <div class="row">
                <div id="paper-top">
                    <div class="col-lg-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-window"></i> 
                            <span>信息模板
                            </span>
                        </h2>

                    </div>

                    <div class="col-lg-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">

                            <div class="alert">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                               <h4> <span class="tittle-alert entypo-info-circled"> 欢迎来到,&nbsp;<strong><%=session.getAttribute("users") %></strong>的个人中心 </h4></span>
                            </div>
                        </div>
                    </div>
            <!-- BREADCRUMB -->
            <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="social.jsp" title="Sample page 1">个人中心</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">我的留言</a>
                </li>
            
            </ul>

            <!-- END OF BREADCRUMB -->



            <div class="content-wrap">
                <div class="row">
                        <div aria-labelledby="myLargeModalLabel" role="dialog" tabindex="-1" class="modal fade bs-example-modal-lg" style="display: none;" id="myModal">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">
                                            <span class="entypo-cancel"></span>
                                        </button>
                                        <h6 id="myLargeModalLabel" class="modal-title">Compose Mail</h6>
                                    </div>
                                    <div class="modal-body">

                                        <div class="compose_mail">

                                            <form role="form">
                                                <div class="form-group">

                                                    <input type="email" placeholder="To" id="exampleInputEmail1" class="form-control">
                                                </div>
                                                <div class="form-group">

                                                    <input type="email" placeholder="Subject" id="exampleInputPassword1" class="form-control">
                                                </div>
                                        </div>

                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    	<form method="post" action="../servlet/addreply"></form>
                    
                    <div class="well" >
  						<form method="post" action="../servlet/add_leave"> 
  						 <div class="form-group">
                              <input style="display: none" type="text" value="<%=session.getAttribute("user").toString() %>" name="rename">	
                                    <textarea placeholder="留下你的足迹吧！" rows="5" class="form-update" name="cont"></textarea>
                                </div>
                                <input type="submit" class="btn btn-info">
  	
  						</form>
                        </div>
                    
                    
                 
  			
                    
<!--            测试   -->
                     <%
                     DBhelperQ db=new DBhelperQ();
                     ArrayList<userInfo> arr=db.query_userid(session.getAttribute("users").toString());
                     userInfo ui=arr.get(0);
                   
                      %>
 					 <%
 					 int id=ui.getUser_id();
 					 DBhelperQ dh=new DBhelperQ();
 					 ArrayList<leaveinfo> arr2=dh.query_leave(ui.getUser_id());
 					 for(int i=0;i<arr2.size();i++){
 					 leaveinfo li=arr2.get(i);
 					 
 					  %>
						 
    						 <div class="nest" id="a<%=i%>">
                            <div class="title-alt">
                                <h6>
                                
                                  </h6>
                                <div class="titleClose">
                                    <a class="gone" href="#a<%=i %>">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#<%=i %>">
                                       <span class="entypo-up-open" ></span>
                                    </a>
                                </div>
                            </div>
                            <div style="display: none" class="body-nest" id="<%=i %>">
                                <address>
                                    <strong>留言人：<%=li.getName() %></strong>
                                 <p>留言内容：<%=li.getLeavecontent() %></p>
                                </address>
                                <address>
                                    <strong>留言时间：<%=li.getLeavetime() %></strong><hr/>
                                </address>
                                 <%
                                 
  						           DBhelperQ dhh=new DBhelperQ();
  						           ArrayList<userInfo>arr3=dhh.query_userid(li.getName());
  						           userInfo uf=arr3.get(0);
  						  
                                 
                                
                                 DBhelperQ dbb=new DBhelperQ();
                                 ArrayList<releaveinfo>arr4=dbb.query_releave();
                                 for(int h=0;h<arr4.size();h++){
                                 releaveinfo re=arr4.get(h);
                                 if(uf.getUser_id()==re.getRelea_user()){
                                
                                  System.out.println(arr.size()+arr2.size()+arr3.size()+arr4.size());
                                 
                                  %>
                                      <strong>回复人：<%=re.getReleav_name() %></strong><br/>
                                    <strong>回复时间：<%=re.getReleav_time() %></strong><br/>
                                     <strong>回复内容：<%=re.getReleav_content() %></strong><hr/>
                                     <%}} %>
                                </address>
                            <div class="title-alt" style="display: none;">
                               
                               
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#c<%=i %>">
                                    		  回复  <span class="entypo-up-open"></span>
                                    </a>
                                </div>

                            </div>

                            <div class="body-nest" style="display: none" id="c<%=i %>">


						<div class="well" >
  						<form method="post" action="../servlet/add_releave"> 
  						 <div class="form-group">
  						 
                              <input style="display: none" type="text" value="<%=ui.getUser_id() %>" name="rename">	
                                    <textarea placeholder="回复内容" rows="5" class="form-update" name="cont"></textarea>
                                </div>
                                <input type="submit" class="btn btn-info">
  	
  						</form>
                        </div>
                            </div>
                            </div>
                        </div>
<!--                        end-->
<%} %>


                                  

    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="assets/js/preloader.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
  <script type="text/javascript" src="assets/js/app.js"></script>
    <script type="text/javascript" src="assets/js/load.js"></script>
   <script type="text/javascript" src="assets/js/main.js"></script>



    
  </body>
</html>
