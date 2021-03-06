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
    <title>Apricot 1.3</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <style type="text/css">
    body {
        overflow:hidden!important;
        padding-top: 120px;
    }
    </style>
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/signin.css">
    <link rel="stylesheet" href="assets/css/extra-pages.css">


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
</head>

<body id="lock">
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>

	<%
		DBhelperZ dh = new DBhelperZ();
		ArrayList<userInfo> arrr = dh.query_all(session.getAttribute("user").toString());
		userInfo ui = arrr.get(0);
	%>
    <!-- Main content -->
    <section class="page-error">

        <div class="headline-lock text-center" id="time">
            <span></span>
            <!-- Time auto generated by js -->
        </div>
        <!-- /.headline -->
        <div class="lockscreen-name"><%=session.getAttribute("user")%></div>
        <div class="lockscreen-image">
            <img src="../HeadPortrait_img/<%=ui.getPhoto() %>" style="width: 100px; height: 100px;" alt="user image">
        </div>
        <!-- User name -->


        <!-- START LOCK SCREEN ITEM -->
        <form action="../servlet/LockScreenLoginServlet" method="post">
	        <div class="lockscreen-item">
	            <!-- lockscreen credentials (contains the form) -->
		            	<div class="lockscreen-credentials">
			                <div class="input-group">
			                    <input type="password" class="form-control" name="userpwd" placeholder="密码">
			                    <div class="input-group-btn">
			                        <button class="btn btn-flat"><i class="fa fa-arrow-right text-muted" onclick="form.submit()"></i>
			                        </button>
			                        <input type="submit" value="登陆" name="submit" id="submit" style="display:none" />
			                    </div>
			                </div>
			            </div>
		            <!-- /.lockscreen credentials -->
	        </div>
	        <!-- /.lockscreen-item -->
	    </form>

        <div class="lockscreen-link">
            <a class="lock-link" href="../registered.jsp">切换用户登陆</a>
        </div>

    </section>

    <!--  END OF PAPER WRAP -->

    <script type="text/javascript" src="assets/js/load.js"></script>
    <script type="text/javascript" src="assets/js/main.js"></script>
    <script type="text/javascript">
    $(function() {
        startTime();
        $(".center").center();
        $(window).resize(function() {
            $(".center").center();
        });
    });

    /*  */

    function startTime() {
        var today = new Date();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();

        // add a zero in front of numbers<10
        m = checkTime(m);
        s = checkTime(s);

        //Check for PM and AM
        var day_or_night = (h > 11) ? "PM" : "AM";

        //Convert to 12 hours system
        if (h > 12)
            h -= 12;

        //Add time to the headline and update every 500 milliseconds
        $('#time').jsp(h + ":" + m + ":" + s + " " + day_or_night);
        setTimeout(function() {
            startTime()
        }, 500);
    }

    function checkTime(i) {
        if (i < 10) {
            i = "0" + i;
        }
        return i;
    }

    /* CENTER ELEMENTS IN THE SCREEN */
    jQuery.fn.center = function() {
        this.css("position", "absolute");
        this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) +
            $(window).scrollTop()) - 30 + "px");
        this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) +
            $(window).scrollLeft()) + "px");
        return this;
    }
    </script>

</body>
</html>