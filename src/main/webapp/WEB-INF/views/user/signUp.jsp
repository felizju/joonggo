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

	<%@ include file="../include/static-head.jsp" %>
</head>

<!-- [ signup ] start -->
<div class="auth-wrapper">
	<div class="auth-content">
		<div class="card">
			<div class="row align-items-center text-center">
				<div class="col-md-12">
					<div class="card-body">
						<form action="/user/sign-up" name="signup" id="signUpForm" method="post">
							<input type="hidden" name="auth" value="USER">
							<img src="/images/market_logo2.png" alt="로고이미지" class="img-fluid mb-4">
							<h4 class="mb-3 f-w-400">회원가입</h4>

							<div class="form-group mb-3">
								<label class="floating-label" for="userId">아이디</label>
								<span id="idChk"></span>
								<input type="text" class="form-control" name="userId" id="user_id" maxlength="14"
									required="required" aria-required="true" placeholder="숫자와 영어로 4-14자">
							</div>
							<div class="form-group mb-3">
								<label class="floating-label" for="userNickname">닉네임</label>
								<span id="nicknameChk"></span>
								<input type="text" class="form-control" name="userNickname" id="userNickname"
									required="required" aria-required="true" maxlength="10" placeholder="한글로 최대 10자">
							</div>
							<div class="form-group mb-3">
								<label class="floating-label" for="userEmail">이메일</label>
								<span id="emailChk"></span>
								<input type="text" class="form-control" name="userEmail" id="userEmail"
									required="required" aria-required="true" placeholder="ex) abc@gmail.com">
							</div>
							<div class="form-group mb-4">
								<label class="floating-label" for="userPw">비밀번호</label>
								<span id="pwChk"></span>
								<input type="password" class="form-control" name="userPw" id="userPw" maxlength="20"
									required="required" aria-required="true" placeholder="영문과 특수문자를 포함한 최소 8자">
							</div>
							<div class="form-group mb-4">
								<label class="floating-label" for="userPwChk">비밀번호 확인</label>
								<span id="pwChk2"></span>
								<input type="password" class="form-control" name="userPwChk" id="userPwChk"
									maxlength="20" required="required" aria-required="true"
									placeholder="비밀번호가 일치해야 합니다.">
							</div>
						</form>
						<input type="button" value="회원가입" class="btn btn-primary btn-block mb-4" id="signup-btn">
						<p class="mb-2"><a href="/user/sign-in" class="f-w-400">로그인하기</a>
						</p>
						<p>카카오(다음) 주소찾기</p>
						<input id="member_post" type="text" placeholder="Zip Code" readonly onclick="findAddr()">
						<input id="member_addr" type="text" placeholder="Address" readonly> <br>
						<input type="text" placeholder="Detailed Address">
						
						<p>카카오(다음) 주소찾기2</p>
						<input type="text" id="sample5_address" placeholder="주소">
						<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
						<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- [ signup ] end -->

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2c329a02e7cbdb3ae60ee6da3e90e66b&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
			level: 5 // 지도의 확대 레벨 
		};

	//지도를 미리 생성
	var map = new daum.maps.Map(mapContainer, mapOption); //주소-좌표 변환 객체를 생성
	var geocoder = new daum.maps.services.Geocoder(); //마커를 미리 생성
	var marker = new daum.maps.Marker({
		position: new daum.maps.LatLng(37.537187, 127.005476),
		map: map
	});


	function kakaoPostcode() {
		new daum.Postcode({
			oncomplete: function (data) {
				// 각 주소의 노출 규칙에 따라 주소를 조합한다. 
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다. 
				var fullAddr = data.address; // 최종 주소 변수 
				var extraAddr = ''; // 조합형 주소 변수 

				// 기본 주소가 도로명 타입일때 조합한다. 
				if (data.addressType === 'R') { //법정동명이 있을 경우 추가한다. 
					if (data.bname !== '') {
						extraAddr += data.bname;
					}
					// 건물명이 있을 경우 추가한다. 
					if (data.buildingName !== '') {
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다. 
					fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
				}
				// 주소 정보를 해당 필드에 넣는다.
				document.getElementById("sample5_address").value = fullAddr;
				// 주소로 상세 정보를 검색 
				geocoder.addressSearch(data.address, function (results, status) {
					// 정상적으로 검색이 완료됐으면
					if (status === daum.maps.services.Status.OK) {
						var result = results[0]; //첫번째 결과의 값을 활용 
						// 해당 주소에 대한 좌표를 받아서 
						var coords = new daum.maps.LatLng(result.y, result.x); // 지도를 보여준다. 
						mapContainer.style.display = "block";
						map.relayout();
						// 지도 중심을 변경한다.
						map.setCenter(coords);
						// 마커를 결과값으로 받은 위치로 옮긴다. 
						marker.setPosition(coords)
					}
				});
			}
		}).open();
	}
</script>



<!-- <script>
	function findAddr() {
		new daum.Postcode({
			oncomplete: function (data) {

				console.log(data);

				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('member_post').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("member_addr").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("member_addr").value = jibunAddr;
				}
			}
		}).open();
	}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->



<script>
	$(function () { //jQuery Start

		//입력값 검증 정규 표현식
		const getIdCheck = RegExp(/^[a-zA-Z0-9]{4,14}$/); //아이디 검증
		const getPwCheck = RegExp(
			/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/); //비밀번호 검증
		const getNickname = RegExp(/^[가-힣]+$/); //닉네임 검증
		const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/); //이메일 검증


		//회원가입 입력값 검증===============================================
		//입력을 정확히 했는지 판단하는 변수들
		let chk1 = false,
			chk2 = false,
			chk3 = false,
			chk4 = false,
			chk5 = false;

		//아이디 입력값 검증
		const $idInput = $('#user_id');
		console.log($idInput);

		$idInput.on('keyup', e => {
			if ($idInput.val().trim() === '') {
				$idInput.css('background', 'pink');
				$('#idChk').html('<b style="color:red; font-size:14px;">[Danger : 아이디 필수정보]</b>');
				chk1 = false;

			} else if (!getIdCheck.test($idInput.val())) {
				$idInput.css('background', 'pink');
				$('#idChk').html(
					'<b style="color:red; font-size:14px;">[영문, 숫자 4~14자로 작성하세요.]</b>');
				chk1 = false;
			} else {
				//아이디 중복확인 비동기 요청
				fetch('/check?type=userId&keyword=' + $idInput.val())
					.then(res => res.text())
					.then(flag => {
						console.log(flag);
						if (flag === 'true') { //중복
							$idInput.css('backgroud', 'pink');
							$('#idChk').html(
								'<b style="color:red; font-size:14px;">[Danger : 아이디 중복]</b>');
							chk1 = false;
						} else { //중복x
							$idInput.css('background', 'aqua');
							$('#idChk').html(
								'<b style="color:green; font-size:14px;">[Success : 아이디]</b>');
							chk1 = true;
						}
					});
			}
		});

		//비밀번호 입력값 검증
		$('#userPw').on('keyup', function () {
			//비밀번호 공백 확인
			if ($("#userPw").val().trim() === "") {
				$('#userPw').css("background-color", "pink");
				$('#pwChk').html('<b style="font-size:14px;color:red;">[Danger : 비밀번호 필수정보]</b>');
				chk2 = false;
			}
			//비밀번호 유효성검사
			else if (!getPwCheck.test($("#userPw").val()) || $("#userPw").val().length < 8) {
				$('#userPw').css("background-color", "pink");
				$('#pwChk').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상]</b>');
				chk2 = false;
			} else {
				$('#userPw').css("background-color", "aqua");
				$('#pwChk').html('<b style="font-size:14px;color:green;">[Success : 비밀번호]</b>');
				chk2 = true;
			}
		});

		//패스워드 확인 입력값 검증
		$('#userPwChk').on('keyup', function () {
			//비밀번호 확인란 공백 확인
			if ($("#userPwChk").val().trim() === "") {
				$('#userPwChk').css("background-color", "pink");
				$('#pwChk2').html('<b style="font-size:14px;color:red;">[Danger : 비밀번호 확인 필수정보]</b>');
				chk3 = false;
			}
			//비밀번호 확인란 유효성검사
			else if ($("#userPw").val() !== $("#userPwChk").val()) {
				$('#userPwChk').css("background-color", "pink");
				$('#pwChk2').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상]</b>');
				chk3 = false;
			} else {
				$('#userPwChk').css("background-color", "aqua");
				$('#pwChk2').html('<b style="font-size:14px;color:green;">[Success : 비밀번호]</b>');
				chk3 = true;
			}
		});

		//닉네임 입력값 검증
		$('#userNickname').on('keyup', function () {
			//닉네임값 공백 확인
			if ($("#userNickname").val().trim() === "") {
				$('#userNickname').css("background-color", "pink");
				$('#nicknameChk').html('<b style="font-size:14px;color:red;">[Danger : 닉네임 필수정보]</b>');
				chk4 = false;
			}
			//닉네임값 유효성검사
			else if (!getNickname.test($("#userNickname").val())) {
				$('#userNickname').css("background-color", "pink");
				$('#nicknameChk').html('<b style="font-size:14px;color:red;">[한글로 최대 10자]</b>');
				chk4 = false;
			} else {
				$('#userNickname').css("background-color", "aqua");
				$('#nicknameChk').html('<b style="font-size:14px;color:green;">[Success : 닉네임]</b>');
				chk4 = true;
			}
		});

		//이메일 입력값 검증
		const $emailInput = $('#userEmail');
		$emailInput.on('keyup', function () {
			//이메일값 공백 확인
			if ($emailInput.val().trim() === "") {
				$emailInput.css("background-color", "pink");
				$('#emailChk').html('<b style="font-size:14px;color:red;">[Danger : 이메일 필수정보]</b>');
				chk5 = false;
			}
			//이메일값 유효성검사
			else if (!getMail.test($emailInput.val())) {
				$emailInput.css("background-color", "pink");
				$('#emailChk').html('<b style="font-size:14px;color:red;">[Danger : 이메일 형식 오류]</b>');
				chk5 = false;
			} else {
				//이메일 중복확인 비동기 통신
				fetch('/check?type=email&keyword=' + $emailInput.val())
					.then(res => res.text())
					.then(flag => {
						//console.log(flag);
						if (flag === 'true') {
							$emailInput.css('background', 'pink');
							$('#emailChk').html(
								'<b style="font-size:14px; color:red;">[Danger : 이메일 중복]</b>');
							chk5 = false;
						} else {
							$emailInput.css('background', 'aqua');
							$('#emailChk').html(
								'<b style="font-size:14px; color:green;">[Success : 이메일]</b>'
							);
							chk5 = true;
						}
					});
			}
		});

		//회원가입 버튼 클릭 이벤트
		$('#signup-btn').on('click', e => {
			if (chk1 && chk2 && chk3 && chk4 && chk5) {
				$('#signUpForm').submit(); //수동 submit
			} else {
				alert('입력값을 확인하세요!');
			}
		});

	}); //jQuery End
</script>


</body>

</html>