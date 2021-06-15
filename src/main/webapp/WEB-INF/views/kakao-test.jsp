<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>JOONGGO MARKET</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />

</head>


<body>
    <input type="text" id="sample5_address" placeholder="주소">
    <input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
    <div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2c329a02e7cbdb3ae60ee6da3e90e66b
    &libraries=services"></script>


    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
            mapOption = {
                center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표 level: 5 // 지도의 확대 레벨 };
                level: 5 // 지도의 확대 레벨
            };


        //지도를 미리 생성
        var map = new daum.maps.Map(mapContainer, mapOption);
        //주소-좌표 변환 객체를 생성
        var geocoder = new daum.maps.services.Geocoder();
        //마커 미리 생성
        var marker = new daum.maps.Marker({
            position: new daum.maps.LatLng(37.537187, 127.005476),
            map: map
        });

        function addressPostCode() {
            new daum.Postcode({
                oncomplete: function (data) {
                    //각 주소의 노출 규칙에 따라 주소를 조합
                    //내려오는 변수가 값이 없는 경우엔 공백('')값을 가짐
                    var fullAddr = data.address; //최종 주소 변수
                    var extraAddr = ''; //조합형 주소 변수

                    //기본 주소가 도로명 타입일 경우 조합
                    if (data.addressType === 'R') {
                        if (data.bname !== '') { //법정동명 있을 경우 추가
                            extraAddr += data.bname;
                        }
                        if (data.buildingName !== '') { //건물명 있을 경우 추가
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                        fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                    }
                    // 주소 정보를 해당 필드에 넣는다
                    document.getElementById("sample5_address").value = fullAddr;

                }
            })
        }
    </script>

</body>

</html>