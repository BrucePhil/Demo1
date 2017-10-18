<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.direct.DaoQ.DBhelperQ"%>
<%@page import="com.direct.Entity.saidinfo"%>
<%@page import="registeredDao.DBhelperZ"%>
<%@page import="com.direct.Entity.userInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Apricot v 1.2</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/media.css">
    <link rel="stylesheet" href="assets/css/social.css">



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
				DBhelperZ dh = new DBhelperZ();
				ArrayList<userInfo> arrr=dh.query_all(session.getAttribute("user").toString());
				userInfo ui = arrr.get(0);
			%>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
               
                <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" class="admin-pic img-circle" src="../HeadPortrait_img/<%=ui.getPhoto() %>"><%=session.getAttribute("user") %>
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
                        <li>
                            <a class="tooltip-tip ajax-load" href="leave.jsp" title="我的留言">
                                <i class="icon-document-edit"></i>
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

                    <ul id="menu-showhide" class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                                <span class="component"></span>
                                <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                            </a>
                        </li>


                        <li>
                            <a class="tooltip-tip" href="#" title="个人应用">
                                <i class="icon-monitor"></i>
                                <span>个人应用</span>
                            </a>
                            <ul>
                             
                               
                            </ul>
                        </li>
                        <li>
                            <a class="tooltip-tip" href="#" title="Form">
                                <i class="icon-document"></i>
                                <span>文件处理</span>
                            </a>
                            <ul>
                             
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="andvance-form.jsp" title="文章类型发布"><i class="icon-map"></i><span>文章类型发布</span></a>
                                </li>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="text-editor.jsp" title="文章发布"><i class="icon-code"></i><span>文章发布</span></a>
                                </li>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="file-upload.jsp" title="图片上传"><i class="icon-upload"></i><span>图片上传</span></a>
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
                <li><a href="#" title="Sample page 1">Blog App</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">Blog Detail</a>
                </li>
                <li class="pull-right">
                    <div class="input-group" style="margin:-7px 30px 0 0">

                        <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
                    </div>
                </li>
            </ul>

            <!-- END OF BREADCRUMB -->

            <!--CONTENT-->
            <div class="row" style="margin-top:30px;padding:0 15px;">
                <!--  BLOG CONTENT -->
                <div class="col-sm-8">
                    <%
                    int id=Integer.parseInt(request.getParameter("id"));
                    DBhelperQ db=new DBhelperQ();
                    ArrayList<saidinfo> arr=db.queryH_shuoid(id);
                    saidinfo sa=arr.get(0);
                    
                     %>
                     <form action="../servlet/del_shuoinfo" method="post">
                    <div class="blog-list-nest">
                        <div class="blog-list-content">
                            <h4><%=sa.getSacont() %></h4>
                            <input style="display: none;" type="text" value="<%=sa.getSaid()%> " name="id"/>
                            <ul class="list-inline">
                                <li>
                                    <a href="#">
                                        <span class="entypo-network"></span>&nbsp;<%=sa.getSatime() %></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-chat"></span>&nbsp;2 Comments</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-share"></span>&nbsp;14 Shares</a>
                                </li>
                            </ul>
                            <hr>
                            
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                    </form>




                    <div class="comment-nest">
                        <h1>评论说说:</h1>
                        <div class="well">

                            <form role="form" method="post" action="../servlet/addplsaid1">
                                <div class="form-group">
                                <input style="display: none" type="text" value="<%=sa.getSaid()%>" name="rename">	
                                    <textarea placeholder="请输入评论内容" rows="5" class="form-update" name="cont"></textarea>
                                </div>
                                <input type="submit" class="btn btn-info" value="评论"></button>
                            </form>
                        </div>
                        <hr>



                </div>
                <!--  END OF BLOG CONTENT -->

                <!--  BLOG SIDE CONTENT -->
              

            <!-- /END OF CONTENT -->

        </div>
    </div>
    <!--  END OF PAPER WRAP -->

    <!-- RIGHT SLIDER CONTENT -->
   

    <!-- END OF RIGHT SLIDER CONTENT-->




    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="assets/js/preloader.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/app.js"></script>
    <script type="text/javascript" src="assets/js/load.js"></script>
    <script type="text/javascript" src="assets/js/main.js"></script>
    <script src="assets/js/flatvideo/jquery.fitvids.js"></script>


    <script>
    // Basic FitVids Test
    $(".blog-list-nest").fitVids();
    // Custom selector and No-Double-Wrapping Prevention Test
    $(".blog-list-nest").fitVids({
        customSelector: "iframe[src^='http://socialcam.com']"
    });
    </script>


</body>

</html>
