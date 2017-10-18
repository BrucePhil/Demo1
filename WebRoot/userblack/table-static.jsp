<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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


            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
               

                <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" class="admin-pic img-circle" src="http://api.randomuser.me/portraits/thumb/men/10.jpg">Hi, Dave Mattew <b class="caret"></b>
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
                                <strong><%=session.getAttribute("users") %></strong>                            </div>


                        </div>

                    </div>

            <!-- BREADCRUMB -->
            <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">Home</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">Blog List</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
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
                                    Basic Responsive Tables</h6>
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
                                                <th>Code</th>
                                                <th>Company</th>
                                                <th class="numeric">Price</th>
                                                <th class="numeric">Change</th>
                                                <th class="numeric">Change %</th>
                                                <th class="numeric">Open</th>
                                                <th class="numeric">High</th>
                                                <th class="numeric">Low</th>
                                                <th class="numeric">Volume</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>AAC</td>
                                                <td>AUSTRALIAN AGRICULTURAL COMPANY LIMITED.</td>
                                                <td class="numeric">$1.38</td>
                                                <td class="numeric">-0.01</td>
                                                <td class="numeric">-0.36%</td>
                                                <td class="numeric">$1.39</td>
                                                <td class="numeric">$1.39</td>
                                                <td class="numeric">$1.38</td>
                                                <td class="numeric">9,395</td>
                                            </tr>
                                            <tr>
                                                <td>AAD</td>
                                                <td>ARDENT LEISURE GROUP</td>
                                                <td class="numeric">$1.15</td>
                                                <td class="numeric">+0.02</td>
                                                <td class="numeric">1.32%</td>
                                                <td class="numeric">$1.14</td>
                                                <td class="numeric">$1.15</td>
                                                <td class="numeric">$1.13</td>
                                                <td class="numeric">56,431</td>
                                            </tr>
                                            <tr>
                                                <td>AAX</td>
                                                <td>AUSENCO LIMITED</td>
                                                <td class="numeric">$4.00</td>
                                                <td class="numeric">-0.04</td>
                                                <td class="numeric">-0.99%</td>
                                                <td class="numeric">$4.01</td>
                                                <td class="numeric">$4.05</td>
                                                <td class="numeric">$4.00</td>
                                                <td class="numeric">90,641</td>
                                            </tr>
                                            <tr>
                                                <td>ABC</td>
                                                <td>ADELAIDE BRIGHTON LIMITED</td>
                                                <td class="numeric">$3.00</td>
                                                <td class="numeric">+0.06</td>
                                                <td class="numeric">2.04%</td>
                                                <td class="numeric">$2.98</td>
                                                <td class="numeric">$3.00</td>
                                                <td class="numeric">$2.96</td>
                                                <td class="numeric">862,518</td>
                                            </tr>
                                            <tr>
                                                <td>ABP</td>
                                                <td>ABACUS PROPERTY GROUP</td>
                                                <td class="numeric">$1.91</td>
                                                <td class="numeric">0.00</td>
                                                <td class="numeric">0.00%</td>
                                                <td class="numeric">$1.92</td>
                                                <td class="numeric">$1.93</td>
                                                <td class="numeric">$1.90</td>
                                                <td class="numeric">595,701</td>
                                            </tr>
                                            <tr>
                                                <td>ABY</td>
                                                <td>ADITYA BIRLA MINERALS LIMITED</td>
                                                <td class="numeric">$0.77</td>
                                                <td class="numeric">+0.02</td>
                                                <td class="numeric">2.00%</td>
                                                <td class="numeric">$0.76</td>
                                                <td class="numeric">$0.77</td>
                                                <td class="numeric">$0.76</td>
                                                <td class="numeric">54,567</td>
                                            </tr>
                                            <tr>
                                                <td>ACR</td>
                                                <td>ACRUX LIMITED</td>
                                                <td class="numeric">$3.71</td>
                                                <td class="numeric">+0.01</td>
                                                <td class="numeric">0.14%</td>
                                                <td class="numeric">$3.70</td>
                                                <td class="numeric">$3.72</td>
                                                <td class="numeric">$3.68</td>
                                                <td class="numeric">191,373</td>
                                            </tr>
                                            <tr>
                                                <td>ADU</td>
                                                <td>ADAMUS RESOURCES LIMITED</td>
                                                <td class="numeric">$0.72</td>
                                                <td class="numeric">0.00</td>
                                                <td class="numeric">0.00%</td>
                                                <td class="numeric">$0.73</td>
                                                <td class="numeric">$0.74</td>
                                                <td class="numeric">$0.72</td>
                                                <td class="numeric">8,602,291</td>
                                            </tr>
                                            <tr>
                                                <td>AGG</td>
                                                <td>ANGLOGOLD ASHANTI LIMITED</td>
                                                <td class="numeric">$7.81</td>
                                                <td class="numeric">-0.22</td>
                                                <td class="numeric">-2.74%</td>
                                                <td class="numeric">$7.82</td>
                                                <td class="numeric">$7.82</td>
                                                <td class="numeric">$7.81</td>
                                                <td class="numeric">148</td>
                                            </tr>
                                            <tr>
                                                <td>AGK</td>
                                                <td>AGL ENERGY LIMITED</td>
                                                <td class="numeric">$13.82</td>
                                                <td class="numeric">+0.02</td>
                                                <td class="numeric">0.14%</td>
                                                <td class="numeric">$13.83</td>
                                                <td class="numeric">$13.83</td>
                                                <td class="numeric">$13.67</td>
                                                <td class="numeric">846,403</td>
                                            </tr>
                                            <tr>
                                                <td>AGO</td>
                                                <td>ATLAS IRON LIMITED</td>
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
                                    Responsive Stackable</h6>
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
                                            <th style="width=30%;">Stuff</th>
                                            <th style="width=12%;">Rate</th>
                                            <th style="width=12%;">Amount</th>
                                            <th style="width=12%;">Points</th>
                                            <th style="width=12%;">Number</th>
                                            <th style="width=18%;">Type</th>
                                            <th style="width=12%;">Name</th>
                                        </tr>
                                        <tr>
                                            <td>Something</td>
                                            <td>3.375%</td>
                                            <td>$123.12</td>
                                            <td>1.125</td>
                                            <td>4,000</td>
                                            <td>Potato</td>
                                            <td>Paul</td>
                                        </tr>
                                        <tr>
                                            <td>Something Else</td>
                                            <td>2.750%</td>
                                            <td>$345.23</td>
                                            <td>5</td>
                                            <td>180</td>
                                            <td>Spaceship</td>
                                            <td>Skippy</td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" class="sub">Subgroup Header</td>
                                        </tr>
                                        <tr>
                                            <td>Another Thing</td>
                                            <td>3.375%</td>
                                            <td>$563.12</td>
                                            <td>222</td>
                                            <td>60</td>
                                            <td>Gym Shoe</td>
                                            <td>George</td>
                                        </tr>
                                        <tr>
                                            <td>Thing w/Less Stuff</td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Harmonica</td>
                                            <td>Helga</td>
                                        </tr>
                                        <tr>
                                            <td>Last Thing</td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>4</td>
                                            <td>Meaning of Life</td>
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
