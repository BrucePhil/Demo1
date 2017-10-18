<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <title>图片上传</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/js/upload/demos/css/uploader.css">
    <link rel="stylesheet" href="assets/js/upload/demos/css/demo.css">

    <link rel="stylesheet" href="assets/js/dropZone/downloads/css/dropzone.css">


<!---->
<script src="jquery.js"></script>

<link rel="stylesheet" type="text/css" href="diyUpload/css/webuploader.css">
<link rel="stylesheet" type="text/css" href="diyUpload/css/diyUpload.css">
<script type="text/javascript" src="diyUpload/js/webuploader.html5only.min.js"></script>
<script type="text/javascript" src="diyUpload/js/diyUpload.js"></script>



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
                            <img alt="" class="admin-pic img-circle" src="../HeadPortrait_img/<%=ui.getPhoto() %>">Hi,<%=session.getAttribute("user")%> <b class="caret"></b>
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
                <li><a href="#" title="Sample page 1">Form</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">上传图片</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="搜索..." class="form-control">
                    </div>
                </li>
            </ul>

            <!-- END OF BREADCRUMB -->

                  
<!--                  -->
<div   class="panel panel-default">
	<div id="as"  class="panel-body"></div>
</body>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>



<!---->
                  </div>

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
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

    <script type="text/javascript" src="assets/js/upload/demos/js/demo.min.js"></script>
    <script type="text/javascript" src="assets/js/upload/src/dmuploader.min.js"></script>


    <script src="assets/js/dropZone/lib/dropzone.js"></script>

   <script type="text/javascript">

/*
* 服务器地址,成功返回,失败返回参数格式依照jquery.ajax习惯;
* 其他参数同WebUploader
*/

$('#test').diyUpload({
	url:'../servlet/upload_servlet',
	success:function( data ) {
		console.info( data );
	},
	error:function( err ) {
		console.info( err );	
	}
});

$('#as').diyUpload({
	url:'../servlet/upload_servlet',
	success:function( data ) {
		console.info( data );
	},
	error:function( err ) {
		console.info( err );	
	},
	buttonText : '选择文件',
	chunked:true,
	// 分片大小
	chunkSize:512 * 1024,
	//最大上传的文件数量, 总文件大小,单个文件大小(单位字节);
	fileNumLimit:50,
	fileSizeLimit:500000 * 1024,
	fileSingleSizeLimit:50000 * 1024,
	accept: {}
});
</script>


    <script>
    Dropzone.options.myDropzone = {

        // Prevents Dropzone from uploading dropped files immediately
        autoProcessQueue: false,

        init: function() {
            var submitButton = document.querySelector("#submit-all")
            myDropzone = this; // closure

            submitButton.addEventListener("click", function() {
                myDropzone.processQueue(); // Tell Dropzone to process all queued files.
            });

            // You might want to show the submit button only when 
            // files are dropped here:
            this.on("addedfile", function() {
                // Show submit button here and/or inform user to click it.
            });

        }
    };
    </script>

</body>

</html>
