<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="registeredDao.DBhelperZ"%>
<%@page import="com.direct.Entity.userInfo"%>
<%@page import="com.direct.Entity.saidreviewinfo"%>
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

    <link href="assets/js/stackable/stacktable.css" rel="stylesheet">
    <link href="assets/js/stackable/responsive-table.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
</head>

<body><div id="awwwards" class="right black"><a href="http://www.awwwards.com/best-websites/apricot-navigation-admin-dashboard-template" target="_blank">best websites of the world</a></div>
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
                            <img alt="" class="admin-pic img-circle" src="../HeadPortrait_img/<%=ui.getPhoto() %>">Hi, <%=session.getAttribute("user")%> <b class="caret"></b>
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
                                <strong><%=session.getAttribute("user")%>！</strong> 
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
                <li><a href="#" title="Sample page 1">主页</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">详细内容</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="搜索..." class="form-control">
                    </div>
                </li>
            </ul>

            <!-- END OF BREADCRUMB -->


            <div class="content-wrap">
                <div class="row">


                    <div class="col-sm-12">

                        <div class="nest" id="tableStaticClose">
                            <div class="title-alt">
                                <h6>
                                    	基本响应表</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#tableStaticClose">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#tableStatic">
                                        <span class="entypo-up-open"></span>
                                    </a>
                                </div>

                            </div>

                            <div class="body-nest" id="tableStatic">

                                <section id="flip-scroll">

                                    <table class="table table-bordered table-striped cf">
                                        <thead class="cf">
                                            <tr>
                                                <th>代码</th>
                                                <th>公司</th>
                                                <th class="numeric">价格</th>
                                                <th class="numeric">改变</th>
                                                <th class="numeric">变化率 %</th>
                                                <th class="numeric">正常开放</th>
                                                <th class="numeric">高</th>
                                                <th class="numeric">低</th>
                                                <th class="numeric">体积</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>航空顾问委员会</td>
                                                <td>澳大利亚农业公司有限公司.</td>
                                                <td class="numeric">$1.38</td>
                                                <td class="numeric">-0.01</td>
                                                <td class="numeric">-0.36%</td>
                                                <td class="numeric">$1.39</td>
                                                <td class="numeric">$1.39</td>
                                                <td class="numeric">$1.38</td>
                                                <td class="numeric">9,395</td>
                                            </tr>
                                            <tr>
                                                <td>前方弹药库</td>
                                                <td>热心的休闲集团</td>
                                                <td class="numeric">$1.15</td>
                                                <td class="numeric">+0.02</td>
                                                <td class="numeric">1.32%</td>
                                                <td class="numeric">$1.14</td>
                                                <td class="numeric">$1.15</td>
                                                <td class="numeric">$1.13</td>
                                                <td class="numeric">56,431</td>
                                            </tr>
                                            <tr>
                                                <td>巴西阿拉夏机场</td>
                                                <td>该公司</td>
                                                <td class="numeric">$4.00</td>
                                                <td class="numeric">-0.04</td>
                                                <td class="numeric">-0.99%</td>
                                                <td class="numeric">$4.01</td>
                                                <td class="numeric">$4.05</td>
                                                <td class="numeric">$4.00</td>
                                                <td class="numeric">90,641</td>
                                            </tr>
                                            <tr>
                                                <td>中国农业银行</td>
                                                <td>阿德莱德布赖顿有限公司</td>
                                                <td class="numeric">$3.00</td>
                                                <td class="numeric">+0.06</td>
                                                <td class="numeric">2.04%</td>
                                                <td class="numeric">$2.98</td>
                                                <td class="numeric">$3.00</td>
                                                <td class="numeric">$2.96</td>
                                                <td class="numeric">862,518</td>
                                            </tr>
                                            <tr>
                                                <td>雄激素结合蛋白</td>
                                                <td>空战分析中心多用装置系统</td>
                                                <td class="numeric">$1.91</td>
                                                <td class="numeric">0.00</td>
                                                <td class="numeric">0.00%</td>
                                                <td class="numeric">$1.92</td>
                                                <td class="numeric">$1.93</td>
                                                <td class="numeric">$1.90</td>
                                                <td class="numeric">595,701</td>
                                            </tr>
                                            <tr>
                                                <td>酸性铋酵母</td>
                                                <td>阿迪蒂亚矿业有限公司</td>
                                                <td class="numeric">$0.77</td>
                                                <td class="numeric">+0.02</td>
                                                <td class="numeric">2.00%</td>
                                                <td class="numeric">$0.76</td>
                                                <td class="numeric">$0.77</td>
                                                <td class="numeric">$0.76</td>
                                                <td class="numeric">54,567</td>
                                            </tr>
                                            <tr>
                                                <td>活动空腔辐射计</td>
                                                <td>南十字二公司有限公司</td>
                                                <td class="numeric">$3.71</td>
                                                <td class="numeric">+0.01</td>
                                                <td class="numeric">0.14%</td>
                                                <td class="numeric">$3.70</td>
                                                <td class="numeric">$3.72</td>
                                                <td class="numeric">$3.68</td>
                                                <td class="numeric">191,373</td>
                                            </tr>
                                            <tr>
                                                <td>自动拨号装置</td>
                                                <td>阿达穆斯资源有限公司</td>
                                                <td class="numeric">$0.72</td>
                                                <td class="numeric">0.00</td>
                                                <td class="numeric">0.00%</td>
                                                <td class="numeric">$0.73</td>
                                                <td class="numeric">$0.74</td>
                                                <td class="numeric">$0.72</td>
                                                <td class="numeric">8,602,291</td>
                                            </tr>
                                            <tr>
                                                <td>无丙种球蛋白血症</td>
                                                <td>英美黄金阿散蒂公司</td>
                                                <td class="numeric">$7.81</td>
                                                <td class="numeric">-0.22</td>
                                                <td class="numeric">-2.74%</td>
                                                <td class="numeric">$7.82</td>
                                                <td class="numeric">$7.82</td>
                                                <td class="numeric">$7.81</td>
                                                <td class="numeric">148</td>
                                            </tr>
                                            <tr>
                                                <td>致冷工业协会</td>
                                                <td>AGL能源有限公司</td>
                                                <td class="numeric">$13.82</td>
                                                <td class="numeric">+0.02</td>
                                                <td class="numeric">0.14%</td>
                                                <td class="numeric">$13.83</td>
                                                <td class="numeric">$13.83</td>
                                                <td class="numeric">$13.67</td>
                                                <td class="numeric">846,403</td>
                                            </tr>
                                            <tr>
                                                <td>安大略美术馆</td>
                                                <td>阿特拉斯钢铁有限公司</td>
                                                <td class="numeric">$3.17</td>
                                                <td class="numeric">-0.02</td>
                                                <td class="numeric">-0.47%</td>
                                                <td class="numeric">$3.11</td>
                                                <td class="numeric">$3.22</td>
                                                <td class="numeric">$3.10</td>
                                                <td class="numeric">5,416,303</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-wrap">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="nest" id="StackableClose">
                            <div class="title-alt">
                                <h6>
                                    	响应堆叠</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#tStackableClose">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#StackableStatic">
                                        <span class="entypo-up-open"></span>
                                    </a>
                                </div>

                            </div>

                            <div class="body-nest" id="StackableStatic">

                                <table id="responsive-example-table" class="table large-only">
                                    <tbody>
                                        <tr class="text-right">
                                            <th style="width=30%;">东西</th>
                                            <th style="width=12%;">概率</th>
                                            <th style="width=12%;">数量</th>
                                            <th style="width=12%;">点</th>
                                            <th style="width=12%;">数</th>
                                            <th style="width=18%;">型</th>
                                            <th style="width=12%;">名字</th>
                                        </tr>
                                        <tr>
                                            <td>某事、某物、某人</td>
                                            <td>3.375%</td>
                                            <td>$123.12</td>
                                            <td>1.125</td>
                                            <td>4,000</td>
                                            <td>马铃薯</td>
                                            <td>保罗</td>
                                        </tr>
                                        <tr>
                                            <td>其他</td>
                                            <td>2.750%</td>
                                            <td>$345.23</td>
                                            <td>5</td>
                                            <td>180</td>
                                            <td>宇宙飞船</td>
                                            <td>日本女人</td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" class="sub">组头</td>
                                        </tr>
                                        <tr>
                                            <td>另一件事</td>
                                            <td>3.375%</td>
                                            <td>$563.12</td>
                                            <td>222</td>
                                            <td>60</td>
                                            <td>运动鞋</td>
                                            <td>乔治</td>
                                        </tr>
                                        <tr>
                                            <td>东西/更少的东西</td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>口琴</td>
                                            <td>海尔格</td>
                                        </tr>
                                        <tr>
                                            <td>最后一件事</td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>4</td>
                                            <td>生命的意义</td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
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
    <!-- /MAIN EFFECT -->
    <script type="text/javascript" src="assets/js/stackable/stacktable.js"></script>
    <script>
    $(document).on('click', '#run', function(e) {
        e.preventDefault();
        $('#simple-example-table').stacktable({
            hideOriginal: true
        });
        $(this).replaceWith('<span>ran</span>');
    });
    $('#responsive-example-table').stacktable({
        myClass: 'stacktable small-only'
    });
    </script>
</body>
</html>