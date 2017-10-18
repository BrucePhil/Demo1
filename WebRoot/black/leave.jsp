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
				DBhelperZ dhhh = new DBhelperZ();
				ArrayList<userInfo> arrr = dhhh.query_all(session.getAttribute("user").toString());
				userInfo uh = arrr.get(0);
			%>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
               
                <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" class="admin-pic img-circle" src="../HeadPortrait_img/<%=uh.getPhoto() %>">Hi,<%=session.getAttribute("user")%> <b class="caret"></b>
                        </a>
                        <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                            <li>
                                <a href="profile.jsp">
                                    <span class="entypo-user"></span>&#160;&#160;我的信息</a>
                            </li>
                      
                        </ul>
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
                            <a class="tooltip-tip ajax-load" href="#"  title="个人应用" >
                                 <font style="font-size: xx-small;">个人应用</font> 

                            </a>
                            <ul>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="blog-list.jsp" title="文章列表"> <font style="font-size: xx-small;">文章列表</font> </a>
                                </li>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="blog-shuo.jsp" title="说说列表"> <font style="font-size: xx-small;">说说列表</font> </a>
                                </li>
                            </ul>
                        </li>
                     
                        <li>
                            <a class="tooltip-tip ajax-load" href="media.jsp" title="图片动态">
                              <font style="font-size: xx-small;">图片动态</font> 

                            </a>
                        </li>
                            <li>
                            <a class="tooltip-tip ajax-load" href="../index.jsp" title="返回首页">
                                 <font style="font-size: xx-small;">返回首页</font> 

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
                            <a class="tooltip-tip ajax-load" href="social.jsp" title="个人中心">
                              <font style="font-size: xx-small;">个人中心</font> 
                            </a>
                        </li>
                        <li>
                            <a class="tooltip-tip ajax-load" href="leave.jsp" title="我的留言">
                               <font style="font-size: xx-small;">我的留言</font> 
                            </a>
                        </li>
                        <li>
                            <a class="tooltip-tip ajax-load" href="mail1.jsp" title="文章评论">
                              <font style="font-size: xx-small;">文章评论</font> 
                            </a>
                        </li>
                        <li>
                            <a class="tooltip-tip ajax-load" href="mail.jsp" title="说说评论">
                                 <font style="font-size: xx-small;">说说评论</font> 
                         
                                <div class="noft-blue"></div>
                            </a>
                        </li>

                

                        <li>
                            <a class="tooltip-tip" href="#" title="其他选项">
                                 <font style="font-size: xx-small;">其他选项</font> 
                            </a>
                            <ul>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="blank_page.jsp" title="未处理消息"> <font style="font-size: xx-small;">未处理</font> </a>
                                </li>
                                 <li>
                                    <a class="tooltip-tip2 ajax-load" href="profile.jsp" title="个人信息"> <font style="font-size: xx-small;">个人信息</font> </a>
                                </li>
                              
                                <li>
                                    <a class="tooltip-tip2" href="lock-screen.jsp" title="锁定屏幕"> <font style="font-size: xx-small;">锁定屏幕</font> </a>
                                </li>
                                 <li>
                                    <a class="tooltip-tip2" href="../servlet/SignoutSessionServlet" title="退出账号"><font style="font-size: xx-small;">退出账号</font></a>
                                </li>
                            </ul>
                        </li>


                    </ul>

                    <ul id="menu-showhide" class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                                <span class="component"></span>
                                <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                            </a>
                        </li>


                        <li>
                            <a class="tooltip-tip" href="#" title="文件处理">
                               <font style="font-size: xx-small;">文件处理</font>
                            </a>
                            <ul>
                             
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="andvance-form.jsp" title="文章类型发布"><font style="font-size: xx-small;">发布类型</font></a>
                                </li>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="text-editor.jsp" title="文章发布"><font style="font-size: xx-small;">文章发布</font></a>
                                </li>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="file-upload.jsp" title="图片上传"><font style="font-size: xx-small;">图片上传</font></a>
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
                            <span>Dashboard
                            </span>
                        </h2>

                    </div>

                    <div class="col-lg-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">

                            <div class="alert">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <span class="tittle-alert entypo-info-circled"></span>
                                欢迎来到个人中心,&nbsp;
                                <strong><%=session.getAttribute("user") %></strong>                            </div>


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
                           </div> </div> </div>
  				<form method="post" action="../servlet/addreply"></form>
                    
<!--            测试   -->
<!--                通过查询session值查询来获取用户id -->
 					 <%  DBhelperQ db=new DBhelperQ();
                     ArrayList<userInfo> arr=db.query_userid(session.getAttribute("user").toString());
                     userInfo ui=arr.get(0);
//通过用户id查询背留言人的留言内容
                     int id=ui.getUser_id();
 					 DBhelperQ dh=new DBhelperQ();
 					 ArrayList<leaveinfo> arr2=dh.query_leave(ui.getUser_id());
 					 for(int i=0;i<arr2.size();i++){
 					 leaveinfo li=arr2.get(i);
					%>
						 
    						 <div class="nest" id="a<%=i %>">
                            <div class="title-alt">
                                <h6>
                                 <%=li.getLeavecontent() %></h6>
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
<!--                                通过留言人查询留言人的信息 -->
                                 <%
  						  
                                 //通过查询留言回复表
                                 String name="";
                                 DBhelperQ dbb=new DBhelperQ();
                                 ArrayList<releaveinfo>arr4=dbb.query_releave(li.getName());
                                 for(int h=0;h<arr4.size();h++){
                                 releaveinfo re=arr4.get(h);
                                 name=re.getReleav_name();
                                 System.out.println(arr4.size()+li.getName()+re.getReleav_name());
                                 
                                 
                                 
                                 DBhelperQ dhh=new DBhelperQ();
  						           ArrayList<userInfo>arr3=dhh.query_username(re.getRelea_user());
  						           System.out.println(li.getName());
  						           userInfo uf=arr3.get(0);

                                     %>
                                      <strong>回复人：<%=uf.getUser_name() %></strong><br/>
                                    <strong>回复时间：<%=re.getReleav_time() %></strong><br/>
                                     <strong>回复内容：<%=re.getReleav_content() %></strong><hr/>
                                     <%} %>
                                </address>
                            <div class="title-alt">
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
<!--  						 查询留言人的id-->
  						 <% ArrayList<userInfo>arr6=db.query_userid(li.getName());
  						 userInfo uq=arr6.get(0);
  						  %>
                               <input style="display: none" type="text" value="<%=uq.getUser_id() %>" name="rename"/>
                               <input style="display: none" type="text" value="<%=name %>" name="name"/>	
                                    <textarea placeholder="回复内容" rows="5" class="form-update" name="cont"></textarea>
                                </div>
                                <input type="submit" class="btn btn-info"/>
  	
  						</form>
                        </div>
                            </div>
                            </div>
                        </div>
<!--                        end-->
                       
<%} %>

          </div></div>                        

    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="assets/js/preloader.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
  <script type="text/javascript" src="assets/js/app.js"></script>
    <script type="text/javascript" src="assets/js/load.js"></script>
   <script type="text/javascript" src="assets/js/main.js"></script>



    
  </body>
</html>
