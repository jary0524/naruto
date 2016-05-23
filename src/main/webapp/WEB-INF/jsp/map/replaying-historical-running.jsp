<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@include file="/includes/header.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>轨迹回放</title>
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <script src="http://webapi.amap.com/maps?v=1.3&key=e01ef73c56692018725b08952a688329"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body>
<div id="container"></div>
<div class="button-group">
    <input type="button" class="button" value="开始动画" id="start"/>
    <input type="button" class="button" value="停止动画" id="stop"/>
</div>
<script type="text/javascript">

var marker, lineArr = [];

var map = new AMap.Map("container", {
    resizeEnable: true,
    center: [113.645512, 22.676378],
    zoom: 17
});
    map.on("complete", completeEventHandler);
	//动画按钮
    AMap.event.addDomListener(document.getElementById('start'), 'click', function() {
        marker.moveAlong(lineArr, 5000);
    }, false);
    AMap.event.addDomListener(document.getElementById('stop'), 'click', function() {
        marker.stopMove();
    }, false);


// 地图图块加载完毕后执行函数
function completeEventHandler() {
	
	
	$.ajax({
        type: "GET",
        url: "<%=basePath%>location/select",
        data: {
        	limit:1000
        },
        dataType: "json",
        success: function(data){
                    if (data.code=="0") {
                    	completeEventHandler2(data);
                    } else {
                    	alert(data.message);
                    }
                 }
    });
}
// 地图图块加载完毕后执行函数
function completeEventHandler2(data) {
	var list = eval('(' + data.dataJson + ')');

	//汽车对象
	marker = new AMap.Marker({
		map: map,
		position: [list[0].longitude, list[0].latitude],//汽车起始位置            [list[list.length-1].longitude, list[list.length-1].latitude]
		icon: "http://webapi.amap.com/images/car.png",
		offset: new AMap.Pixel(-26, -13),
		autoRotation: true
	});
	lineArr = [];
	for (var i = 0; i < list.length-1; i++) {
	    lineArr.push([list[i].longitude, list[i].latitude]);
	}
	
	// 绘制轨迹
	var polyline = new AMap.Polyline({
	    map: map,
	    path: lineArr,
	    strokeColor: "#00A",  //线颜色
	    strokeOpacity: 1,     //线透明度
	    strokeWeight: 3,      //线宽
	    strokeStyle: "solid"  //线样式
	});
	map.setFitView();
}
</script>
</body>
</html>