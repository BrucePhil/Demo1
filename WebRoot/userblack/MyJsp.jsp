<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<title>指定城市区号定位</title>
<style type="text/css">
*{
    margin:0px;
    padding:0px;
}
body, button, input, select, textarea {
    font: 12px/16px Verdana, Helvetica, Arial, sans-serif;
}
p{
    width:603px;
    padding-top:3px;
    overflow:hidden;
}
</style>
<script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp"></script>
<script>
var citylocation,map,marker = null;
var init = function() {
    var center = new qq.maps.LatLng(29.976527,106.297128);
    var city = document.getElementById("city");
    map = new qq.maps.Map(document.getElementById('container'),{
        center: center,
        zoom: 13
    });
    citylocation = new qq.maps.CityService({
        complete : function(results){
            map.setCenter(results.detail.latLng);
            city.style.display = 'inline';
            city.innerHTML = '所在位置: ' + results.detail.latLng;
            if (marker != null) {
                marker.setMap(null);
            }
            marker = new qq.maps.Marker({
                map: map,
                position: results.detail.latLng
            });
        }
    });
}
function geolocation_localcity() {
    var localcity = document.getElementById("localcity").value;

    citylocation.searchCityByName(localcity);
	
}
</script>
</head>
<body onload="init()">
<div>
    城市：<input id="localcity" type="textbox" value="重庆市">
    <input type="button" value="search" onclick="geolocation_localcity()">
    <span style="height:30px;display:none" id="city"></span>
</div>
<div style="width:100%;height:500px" id="container"></div>
<p>根据城市名称定位地图中心点的坐标。</p>
</body>
</html>

