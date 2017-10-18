<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="registeredDao.DBhelper"%>
<%@page import="com.direct.Entity.userInfo"%>
<%@page import="java.io.File"%>

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
    <link rel="stylesheet" href="assets/css/profile.css">

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
			
			

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
              

                <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" class="admin-pic img-circle" src="http://api.randomuser.me/portraits/thumb/men/10.jpg">Hi, <%=session.getAttribute("user") %> <b class="caret"></b>
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
                                <span class="tittle-alert entypo-info-circled"></span>
                                欢迎来到个人中心,&nbsp;
                                <strong><%=session.getAttribute("users")%></strong>                            </div>
                        </div>
                    </div>

            <!-- BREADCRUMB -->
            <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
              <li><a href="#" title="Sample page 1">个人中心</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">我的信息</a>
               <!--  
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">空白页</a>
                </li>
               -->
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="搜索..." class="form-control">
                    </div>
                </li>
            </ul>

            <!-- END OF BREADCRUMB -->

            <div class="content-wrap">
                <!-- PROFILE -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="well profile">
                            <div class="col-sm-12">
                                <div class="col-xs-12 col-sm-4 text-center">

                                    <ul class="list-group">
                                        <li class="list-group-item text-left">
                                            <span class="entypo-user"></span>&nbsp;&nbsp;个人主页</li>
                                        <li class="list-group-item text-center">
                                            <img src="http://api.randomuser.me/portraits/men/10.jpg" alt="" class="img-circle img-responsive img-profile">
                                        </li>
                                        <li class="list-group-item text-center">
                                            <span class="pull-left">
                                                <strong>颜值</strong>
                                            </span>
                                            <div class="ratings">

                                                <a href="#">
                                                    <span class="fa fa-star"></span>
                                                </a>
                                                <a href="#">
                                                    <span class="fa fa-star"></span>
                                                </a>
                                                <a href="#">
                                                    <span class="fa fa-star"></span>
                                                </a>
                                                <a href="#">
                                                    <span class="fa fa-star"></span>
                                                </a>
                                                <a href="#">
                                                    <span class="fa fa-star-o"></span>
                                                </a>

                                            </div>


                                        </li>

                                        <li class="list-group-item text-right">
                                            <span class="pull-left">
                                                <strong>注册时间</strong>
                                            </span>2.13.2014</li>
                                        <li class="list-group-item text-right">
                                            <span class="pull-left">
                                                <strong>上次登录</strong>
                                            </span>Yesterday</li>
                                        <li class="list-group-item text-right">
                                            <span class="pull-left">
                                                <strong>昵称</strong>
                                            </span>themesmile</li>

                                    </ul>

                                </div>
                                <div class="col-xs-12 col-sm-8 profile-name">
                                    <h2><%=session.getAttribute("user")%>
                                        <span class="pull-right social-profile">
                                            <i class="entypo-facebook-circled"></i>  <i class="entypo-twitter-circled"></i>  <i class="entypo-linkedin-circled"></i>  <i class="entypo-github-circled"></i>  <i class="entypo-gplus-circled"></i>
                                        </span>
                                    </h2>
                                    <hr>
										<%
											DBhelper db = new DBhelper();
										    ArrayList<userInfo> arr = db.query_all(session.getAttribute("user").toString());
										    userInfo ui = arr.get(0);
										%>
                                    <dl class="dl-horizontal-profile">
                                        <dt>用户编号</dt>
                                        <dd><%=ui.getUser_id() %></dd>

                                        <dt>姓名</dt>
                                        <dd><%=ui.getUser_name() %></dd>
                                        
                                        <dt>性别</dt>
                                        <dd><%=ui.getSex() %></dd>
                                        
                                        <dt>生日</dt>
                                        <dd><%=ui.getBirthday() %></dd>

                                        <dt>邮件</dt>
                                        <dd><%=ui.getE_mail() %></dd>

                                        <dt>联系电话</dt>
                                        <dd><%=ui.getPhone() %></dd>
                                    </dl>
                                    <hr>
                                    <h5>
                                        <span class="entypo-arrows-ccw"></span>&nbsp;&nbsp;近期活动</h5>
                                    <div class="table-responsive">
                                        <table class="table table-hover table-striped table-condensed">
                                            <tbody>
                                                <tr>
                                                    <td><i class="pull-right fa fa-edit"></i> 今天, 1:00 - 贺波涛关注了你。</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="pull-right fa fa-edit"></i> 今天, 12:23 - 彭子庭关转发了你的帖子，并且关注了你</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="pull-right fa fa-edit"></i> 今天, 12:20 - 你发布了一条新的动态，标题是“世界将被我改变”。</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="pull-right fa fa-edit"></i> 昨天 - 王思聪关注了你。</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="pull-right fa fa-edit"></i> 两天前 - 菲利普关注了你。</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="pull-right fa fa-edit"></i> 两天前 - 奶茶妹妹关注了你。</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 divider text-center">
                                <div class="col-xs-12 col-sm-4 emphasis">
                                    <h2>
                                        <strong>20,7K</strong>
                                    </h2>
                                    <p>
                                        <small>鲜花</small>
                                    </p>
                                    <button class="btn btn-success btn-block">
                                        <span class="fa fa-plus-circle"></span>&nbsp;&nbsp;我的鲜花</button>
                                </div>
                                <div class="col-xs-12 col-sm-4 emphasis">
                                    <h2>
                                        <strong>245</strong>
                                    </h2>
                                    <p>
                                        <small>粉丝</small>
                                    </p>
                                    <button class="btn btn-info btn-block">
                                        <span class="fa fa-user"></span>&nbsp;&nbsp;粉丝管理</button>
                                </div>
                                <div class="col-sm-4 emphasis">
                                    <h2>
                                        <strong>43</strong>
                                    </h2>
                                    <p>
                                        <small>关注</small>
                                    </p>
                                    <button class="btn btn-default btn-block">
                                        <span class="fa fa-user"></span>&nbsp;&nbsp;全部关注</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <!-- BLANK PAGE-->
                            <div style="margin:-20px 15px;" class="nest" id="Blank_PageClose">
                                <div class="title-alt">
                                    <h6>
                                        	修改个人信息</h6>
                                    <div class="titleClose">
                                        <a class="gone" href="#Blank_PageClose">
                                            <span class="entypo-cancel"></span>
                                        </a>
                                    </div>
                                    <div class="titleToggle">
                                        <a class="nav-toggle-alt" href="#Blank_Page_Content">
                                            <span class="entypo-up-open"></span>
                                        </a>
                                    </div>
                                </div>
                                <div class="body-nest" id="Blank_Page_Content">
                                    <div class="row">
                                        <!-- left column -->
                                        <div class="col-md-3">
                                            <div class="text-center">
												<img src="http://placehold.it/150" class="avatar img-circle" alt="avatar">
                                                <h6>上传不同的头像...</h6>
                                                <div class="input-group">
                                                    <span class="input-group-btn">
                                                        <span class="btn btn-primary btn-file">
                                                            <input type="file" multiple="" id="myfile" name="img" onchange="input1.value=this.value" style="display:none">
                                                            <a style="text-decoration: none; color: #ffffff;" onclick="myfile.click();">浏览...</a>
                                                        </span>
                                                    </span>
                                                    <input type="text" id="input1" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <!-- edit form column -->
                                        <div class="col-md-9 personal-info">
                                            <div class="alert alert-info alert-dismissable">
                                                <a class="panel-close close" data-dismiss="alert">×</a> 
                                                <i class="fa fa-coffee"></i>
                                                                                                                                这是一个<strong>警示条</strong>。使用此警示条显示重要信息给用户。                                                                                
                                            </div>
                                            <h3>个人信息</h3>
                                            <form class="form-horizontal" action="../servlet/profileUpdateServlet"  role="form" method="post">
                                            	 <input type="text" name="user_id" value="<%=ui.getUser_id() %>" style="display:none" />
                                            	 <div class="form-group">
                                                    <label class="col-md-3 control-label">用户名（昵称）:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" value="<%=session.getAttribute("user")%>" name="user_name" type="text" readonly>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">密码:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" placeholder="•••••••••••" name="userpwd" type="password">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">确认密码:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" placeholder="•••••••••••" name="queren_userpwd" type="password">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">联系电话:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" placeholder="" name="phone" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">邮件:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" placeholder="中国@e_mail.com" name="e_mail" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">性别:</label>
                                                    <div class="col-lg-8">
                                                        <div class="ui-select">
                                                            <select id="user_time_zone" name="sex" class="form-control">
                                                                <option value="男">男
                                                                <option value="女">女
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label"></label>
                                                    <div class="col-md-8">
                                                        <input class="btn btn-primary" value="保存修改" type="submit">
                                                        <span></span>
                                                        <input class="btn btn-default" value="重新修改" type="reset">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END OF BLANK PAGE -->

                    </div>
                </div>
                <!-- END OF PROFILE -->

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
</div></body>
</html>