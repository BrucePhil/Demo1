<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.direct.DaoH.DBhelper"%>
<%@page import="com.direct.Entity.saidreviewinfo"%>
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
    <title>Apricot 1.3</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/css/extra-pages.css">






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
				ArrayList<userInfo> arrr = dh.query_all(session.getAttribute("user").toString());
				userInfo ui = arrr.get(0);
			%>
			
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
                

                <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" class="admin-pic img-circle" src="../HeadPortrait_img/<%=ui.getPhoto() %>"><%=session.getAttribute("user") %>
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
                <input type="search" placeholder="搜索..." class="id_search">
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
                <li><a href="#" title="Sample page 1">其他选项</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">最近发布</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="搜索..." class="form-control">
                    </div>
                </li>
            </ul>

            <!-- END OF BREADCRUMB -->

  <!-- END OF BREADCRUMB -->
            <div class="content-wrap">
                <div class="time-wrap">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- The time line -->
                            <ul class="timeline">
                                <!-- timeline time label -->
                               
                                <!-- /.timeline-label -->
                                <!-- timeline item -->
                                
                                <!-- END timeline item -->
                               
                                <!-- timeline time label -->
                                <li class="time-label">
                                    <span class="bg-green">
                                        2017年5月8日
                                    </span>
                                </li>
                                <!-- /.timeline-label -->
                               
                                <!-- timeline item -->
                                <li>
                                    <i class="fa fa-video-camera bg-time"></i>
                                    <div class="timeline-item">
                                        <span class="time"><i class="fa fa-clock-o"></i>2 天前</span>
                                        <h3 class="timeline-header"><a href="#"></a> 分享了一个视频</h3>
                                        <div class="timeline-body">&nbsp;&nbsp;
                                            太阳在天空斜悬，我们来到海边。天空一丝云儿不见，深蓝的海面粼粼泛光。浩瀚的大海与茫茫的蓝天这对久经依存的朋友，他们虞城地相互行着注目礼。
清风微吹，海水发出孩童般的笑声，迈着轻盈的脚步，一波接一波地朝我们面前涌来。海燕在海面展示着舞姿，时不时地吻着海的面颊。远处的海鸥传来一声声的祝福。我们远视，蓝蓝的天空与蔚蓝的大海，安详和谐地连在一块，让久视的双眼简直分不清哪是天空，哪是大海。远远近近的渔船，点缀在漫无边际的蓝幕上，缓缓地蠕动。阳光的照抚下，海面上不停地洒落着星星点点的碎银。游伴们持着相机，跨着步儿，屏着呼吸，一丝不苟地抓拍着。
身后的太阳，羞红了脸，不知所措的踏着小步朝地平线迈着。她的脸庞由谈红臊得通红，胀大了许多。恐怕她正在想着，到地平线下后如何与她的情人亲吻同梦。与这同时，面前的海水、船只、瞧石、沙滩染上了一层一缕的金黄色。远处海崖、天际横挂着一匹匹或一片片，或深或浅的的红绸缎。柔和悦耳的风浪声，冲击着我们的耳膜。
天色渐渐暗下来，风大了，海浪一波接一波地向海滩中冲来，又一波一波地退回，我们转身，踏着沙土往海岸走去，海浪在身后不停地喊着：“抓住他！抓住他！”，还夹杂着“呱—唧，呱—唧！”的闯击瞧石的怒气声。
身后海上的船只，挂上了星星。
                                        </div>
                                        <div class="timeline-footer">
                                            <a href="#" class="btn btn-xs bg-time">查看评论</a>
                                        </div>
                                    </div>
                                </li>
                                <!-- END timeline item -->
                                <li>
                                    <i class="fa fa-clock-o bg-time"></i>
                                </li>
                            </ul>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
            </div>

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
</body>
</html>