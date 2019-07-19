<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/3
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>洛阳旅游网-地图</title>

    <style>
        body { margin: 0; font: 13px/1.5 "Microsoft YaHei", "Helvetica Neue", "Sans-Serif"; min-height: 960px; min-width: 600px; }
        .my-map { margin: 0 auto; width: 1903px; height: 720px; }
        .my-map .icon { background: url(http://lbs.amap.com/console/public/show/marker.png) no-repeat; }
        .my-map .icon-cir { height: 31px; width: 28px; }
        .my-map .icon-cir-red { background-position: -11px -5px; }
        .amap-container{height: 100%;}
    </style>
</head>

<body>
<jsp:include page="WEB-INF/views/header.jsp"></jsp:include>

    <div id="wrap" class="my-map">
        <div id="mapContainer"></div>
    </div>


<!--++++++++++++++++++++++++++++++++++++++++++-->

<script src="//webapi.amap.com/maps?v=1.3&key=8325164e247e15eea68b59e89200988b"></script>
<script>
    !function(){
        var infoWindow, map, level = 14,
            center = {lng: 112.483307, lat: 34.607948},
            features = [{type: "Marker", name: "龙门石窟", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 112.479057, lat: 34.555718}},
                {type: "Marker", name: "洛阳博物馆", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 112.452965, lat: 34.643466}},
                {type: "Marker", name: "隋唐城遗址", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 112.446613, lat: 34.634286}},
                {type: "Marker", name: "十字街夜市", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 112.478741, lat: 34.683622}},
                {type: "Marker", name: "洛邑古城", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 112.485393, lat: 34.680344}},
                {type: "Marker", name: "周朝王陵", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 112.387573, lat: 34.626985}},
                {type: "Marker", name: "明堂天堂", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 112.460122, lat: 34.680115}},
                {type: "Marker", name: "周公庙", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 112.462353, lat: 34.676418}},
                {type: "Marker", name: "白马寺", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 112.605873, lat: 34.721536}},
                {type: "Marker", name: "关林庙", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 112.483307, lat: 34.607948}}];

        function loadFeatures(){
            for(var feature, data, i = 0, len = features.length, j, jl, path; i < len; i++){
                data = features[i];
                switch(data.type){
                    case "Marker":
                        feature = new AMap.Marker({ map: map, position: new AMap.LngLat(data.lnglat.lng, data.lnglat.lat),
                            zIndex: 3, extData: data, offset: new AMap.Pixel(data.offset.x, data.offset.y), title: data.name,
                            content: '<div class="icon icon-' + data.icon + ' icon-'+ data.icon +'-' + data.color +'"></div>' });
                        break;
                    case "Polyline":
                        for(j = 0, jl = data.lnglat.length, path = []; j < jl; j++){
                            path.push(new AMap.LngLat(data.lnglat[j].lng, data.lnglat[j].lat));
                        }
                        feature = new AMap.Polyline({ map: map, path: path, extData: data, zIndex: 2,
                            strokeWeight: data.strokeWeight, strokeColor: data.strokeColor, strokeOpacity: data.strokeOpacity });
                        break;
                    case "Polygon":
                        for(j = 0, jl = data.lnglat.length, path = []; j < jl; j++){
                            path.push(new AMap.LngLat(data.lnglat[j].lng, data.lnglat[j].lat));
                        }
                        feature = new AMap.Polygon({ map: map, path: path, extData: data, zIndex: 1,
                            strokeWeight: data.strokeWeight, strokeColor: data.strokeColor, strokeOpacity: data.strokeOpacity,
                            fillColor: data.fillColor, fillOpacity: data.fillOpacity });
                        break;
                    default: feature = null;
                }
                if(feature){ AMap.event.addListener(feature, "click", mapFeatureClick); }
            }
        }

        function mapFeatureClick(e){
            if(!infoWindow){ infoWindow = new AMap.InfoWindow({autoMove: true}); }
            var extData = e.target.getExtData();
            infoWindow.setContent("<h5>" + extData.name + "</h5><div>" + extData.desc + "</div>");
            infoWindow.open(map, e.lnglat);
        }

        map = new AMap.Map("mapContainer", {center: new AMap.LngLat(center.lng, center.lat), level: level});

        loadFeatures();

        map.on('complete', function(){
            map.plugin(["AMap.ToolBar", "AMap.OverView", "AMap.Scale"], function(){
                map.addControl(new AMap.ToolBar);
                map.addControl(new AMap.OverView({isOpen: true}));
                map.addControl(new AMap.Scale);
            });
        })

    }();
</script>
<jsp:include page="WEB-INF/views/footer.jsp"></jsp:include>
</body>

</html>