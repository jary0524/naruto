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
    <title>定位</title>
    <script src="http://webapi.amap.com/maps?v=1.3&key=e01ef73c56692018725b08952a688329"></script>
</head>
<body onLoad="mapInit()">
<div>
    <input id="relaId" type="text" value="10001" >
    <br/>
    <br/>
    <br/>
</div>
<div id="result">即将开始定位.........</div>
<script type="text/javascript">
    
var mapObj, geolocation;
var result;
function mapInit () {
    mapObj = new AMap.Map('iCenter');    //默认定位：初始化加载地图时，center及level属性缺省，地图默认显示用户所在城市范围
    mapObj.plugin('AMap.Geolocation', function () {
        geolocation = new AMap.Geolocation({
            enableHighAccuracy: true,//是否使用高精度定位，默认:true
            timeout: 10000,          //超过10秒后停止定位，默认：无穷大
            maximumAge: 0,           //定位结果缓存0毫秒，默认：0
            convert: false,           //自动偏移坐标，偏移后的坐标为高德坐标，默认：true
            showButton: false,        //显示定位按钮，默认：true
            buttonPosition: 'LB',    //定位按钮停靠位置，默认：'LB'，左下角
            buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
            showMarker: false,        //定位成功后在定位到的位置显示点标记，默认：true
            showCircle: false,        //定位成功后用圆圈表示定位精度范围，默认：true
            panToLocation: false,     //定位成功后将定位到的位置作为地图中心点，默认：true
            zoomToAccuracy: false      //定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
        });
        mapObj.addControl(geolocation);
        AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息
        AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息
    });
};
function getCurrentPosition () { //调用浏览器定位服务
	geolocation.getCurrentPosition();
};

function onComplete (data) {   //解析定位结果
	//http://localhost:8888/naruto/location/save.shtml?relaId=10000&longitude=113.94388210858348&latitude=22.53873232949709&name=%E6%B7%B1%E5%A4%A7%E5%9C%B0%E9%93%81%E7%AB%99
	
    var str = '<p>定位成功</p>';
    str += '<p>当前时间：' + (new Date()).toLocaleDateString() + " " + (new Date()).toLocaleTimeString() + '</p>';
    str += '<p>经度：' + data.position.getLng() + '</p>';
    str += '<p>纬度：' + data.position.getLat() + '</p>';
    str += '<p>精度：' + data.accuracy + ' 米</p>';
    str += '<p>是否经过偏移：' + (data.isConverted ? '是' : '否') + '</p>';
    document.getElementById('result').innerHTML = str;
  	$.ajax({
        type: "POST",
        url: "<%=basePath%>location/save",
        data: {relaId:$("#relaId").val(),
        	longitude:data.position.getLng(),
        	latitude:data.position.getLat()
        },
        dataType: "json",
        success: function(data){
                    if (data.code=="0") {
                    	
                    } else {
                    	alert(data.message);
                    }
                 }
    });
};

function onError (data) {    //解析定位错误信息
    var str = '<p>定位失败</p>';
    str += '<p>错误信息：'
    switch(data.info) {
        case 'PERMISSION_DENIED':
            str += '浏览器阻止了定位操作';
            break;
        case 'POSITION_UNAVAILBLE':
            str += '无法获得当前位置';
            break;
        case 'TIMEOUT':
            str += '定位超时';
            break;
        default:
            str += '未知错误';
            break;
    }
    str += '</p>';
    result.innerHTML = str;
};



function showCityInfo() {  //IP定位
    //加载IP定位插件
    mapObj.plugin(["AMap.CitySearch"], function() {
        //实例化城市查询类
        var citysearch = new AMap.CitySearch();
        //自动获取用户IP，返回当前城市
        citysearch.getLocalCity();
        AMap.event.addListener(citysearch, "complete", function(result){
            if(result && result.city && result.bounds) {
                var cityinfo = result.city;
                var citybounds = result.bounds;
                document.getElementById('result').innerHTML = "您当前所在城市："+cityinfo+"";
                //地图显示当前城市
                mapObj.setBounds(citybounds);
            }
            else {
                document.getElementById('result').innerHTML = "您当前所在城市："+result.info+"";
            }
        });
        AMap.event.addListener(citysearch, "error", function(result){alert(result.info);});
    });
}
var MSearch;
var key_1;
function placeSearch() {  //POI搜索，关键字查询
    key_1 = document.getElementById("key_1").value;
    document.getElementById('result').innerHTML = "您输入的是：" + key_1;
    mapObj.plugin(["AMap.PlaceSearch"], function() {    //构造地点查询类  
        MSearch = new AMap.PlaceSearch({ 
            pageSize:10,
            pageIndex:1,
            city:"021" //城市
        });
        AMap.event.addListener(MSearch, "complete", function(data){
            var poiArr = data.poiList.pois;
            var lngX = poiArr[0].location.getLng();
            var latY = poiArr[0].location.getLat();
            mapObj.setCenter(new AMap.LngLat(lngX, latY));
        });//返回地点查询结果        
        MSearch.search(key_1); //关键字查询
    });
}
var MGeocoder;
var key_2;
function geocoder() {  //地理编码返回结果展示
    key_2 = document.getElementById("key_2").value;  
    document.getElementById('result').innerHTML = "您输入的是：" + key_2;    
    mapObj.plugin(["AMap.Geocoder"], function() {     //加载地理编码插件
        MGeocoder = new AMap.Geocoder({
            city:"010", //城市，默认：“全国”
            radius:1000 //范围，默认：500
        });
        //返回地理编码结果
        AMap.event.addListener(MGeocoder, "complete", function(data){
            var geocode = data.geocodes; 
            var lngX = geocode[0].location.getLng();
            var latY = geocode[0].location.getLat();
            mapObj.setCenter(new AMap.LngLat(lngX, latY));
        });        
        MGeocoder.getLocation(key_2);  //地理编码
    });
}





var timeid = window.setInterval(getCurrentPosition, 10000);
</script>
</body>
</html>