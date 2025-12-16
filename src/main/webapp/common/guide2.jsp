<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VIVA PARK</title>
<link rel="stylesheet" type="text/css"
	href="http://192.168.10.72/jsp_prj/common/css/vivatemplet.css" />


<!-- bootstrap CDN 시작 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
	crossorigin="anonymous"></script>
<!-- bootstrap CDN 끝 -->

<script src="https://www.gjw.co.kr/inc/gjw_2024/js/14jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://www.gjw.co.kr/inc/gjw_2024/bs/bootstrap.min.css?ver=1763706557">
<link rel="stylesheet" type="text/css"
	href="https://www.gjw.co.kr/inc/gjw_2024/bs/bootstrap.min.js?ver=1763706557">
<link rel="stylesheet"
	href="https://www.gjw.co.kr/css/gjw_2024/reset.css?ver=1763706557">
<link rel="stylesheet" type="text/css"
	href="https://www.gjw.co.kr/css/gjw_2024/sub.css?ver=1763706557">

<style>
.subWrap {
	padding: 0;
}
</style>



<style>
#wrap {
	margin: 0px auto;
	width: 100%;
	height: 1000px;
}

#container{margin-bottom: 20px;} 

#inner, inner2 {
	width: 70%;
	margin: 0px auto
}

#title {
	background-color: #00FF00;
	height: 120px;
	font-size: 60px;
	text-align: center;
	padding: 20px;
}

#miniMenu, .miniMenuSub {
	/* 자식 div 가로로 배열하기 위함 */
	display: flex;
	font-family: NotoSansKR;
	color: gray;
}

.nav-item.dropdown {
	margin-left: 10px;
}

#miniHome {
	height: 30px;
}

li {
	list-style: none;
}

.nav-link {
	cursor: pointer;
}

.bus-num, .sub-num {
	display: flex;
}

.bus-type-div, .sub-type-div {
	margin: 0px; auto;
	width: 100px;
	height: 40px;
	text-align: center;
}

.bus-type, .sub-type {
	display: inline-block;
	padding: 1px 8px; /* 위/아래 3px, 좌/우 8px 여백 추가 */
	border-radius: 4px;
	text-align: center;
	color: white;
}

.sub-type {
	border-radius: 50px;
}

<
style> /* 전체 섹션 스타일 */ .shuttle-info-section {
	max-width: 800px; /* 적절한 너비 설정 */
	margin: 20px auto;
	font-family: Arial, sans-serif;
	line-height: 1.5;
}

/* 제목 스타일 */
.shuttle-info-section h2 {
	font-size: 1.5em;
	font-weight: bold;
	margin-bottom: 5px;
}

.shuttle-info-section p {
	color: #666;
	margin-bottom: 20px;
}

<style> /* -------------------- 셔틀버스 테이블 스타일 -------------------- */
	.custom-table {
	border-top: 2px solid #000;
	width: 100%;

	/* 1. 테이블 전체에 오른쪽 테두리 추가 */
}

/* 테이블 헤더 및 행 스타일 */
.table-header, .table-row {
	display: flex;
	border-bottom: 1px solid #ddd;
	border-top: 1px solid #ddd;
	align-items: center;
}

.table-header {
	font-weight: bold;
	background-color: #f7f7f7;
	/* 헤더의 경우, 상단 검은색 테두리 아래에만 회색 선이 오도록 설정 가능 */
	/* border-top: 1px solid #ddd; */
}

/* 테이블 셀 스타일 */
.table-cell {
	flex: 1 1 0;
	padding: 14px 10px;
	text-align: center;
	/* 2. 모든 셀에 오른쪽 구분선 유지 */
	border-right: 1px solid #ddd;
	border-left: 1px solid #ddd;
}

/* -------------------- 주의사항 박스 디자인 복구 -------------------- */
.notes-box {
	margin-top: 20px;
	background-color: #f7f7f7;
	/* 이미지에 맞게 내부 패딩을 약간 늘리고 미세 조정 */
	padding: 18px 25px;
}

.notes-box ul {
	list-style-type: none;
	padding-left: 0;
	margin: 0;
	/* 텍스트 크기를 약간 줄여 (0.95em) 가독성 확보 */
	font-size: 0.95em;
	/* 글씨색을 조금 더 진한 회색 (#333)으로 지정 */
	color: #333;
	/* 각 항목 간 간격(줄 높이)을 늘려 시각적 여백 확보 */
	line-height: 1.6;
}

.notes-box li::before {
	content: "•"; /* * 대신 • (점) 기호 사용 */
	font-weight: normal;
	color: #333;
	display: inline-block;
	width: 0.8em; /* 기호와 텍스트 사이의 간격 조정 */
	margin-left: -0.8em;
	vertical-align: top; /* 기호의 수직 정렬을 위로 맞춰 텍스트와 균형 */
}
</style>

<style>
/* ------------------------------------------------ */
/* 1. 주차 안내 제목 및 굵은 구분선 스타일 */
/* ------------------------------------------------ */
/* h1 태그 자체의 마진과 여백을 조정할 수 있도록 클래스 지정 */
.parking-title-section {
	padding-top: 0;
	padding-bottom: 0;
	margin-bottom: 0; /* 제목 아래 기본 여백 제거 */
}

/* 굵은 검은색 구분선 */
.title-separator {
	border: none;
	border-bottom: 3px solid #000; /* 굵은 검은색 선 */
	margin-top: 20px; /* 제목과의 간격 */
	margin-bottom: 30px; /* 테이블과의 간격 */
	width: 100%;
}

/* ------------------------------------------------ */
/* 2. 롯데월드 주차 할인 테이블 (<table> 기반) 스타일 */
/* ------------------------------------------------ */

/* 테이블 전체를 감싸는 래퍼: 둥근 모서리, 그림자, 중앙 정렬 */
.table-container-wrapper {
	width: 100%;
	max-width: 600px; /* 이미지와 유사한 너비 */
	margin: 0 auto; /* 테이블을 중앙에 배치 */
	border-radius: 8px; /* 둥근 모서리 */
	overflow: hidden; /* 자식 요소가 모서리 밖으로 넘어가지 않도록 */
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1); /* 미세한 그림자 */
	border: 1px solid #e0e0e0; /* 전체 테이블의 얇은 회색 테두리 */
}

/* 실제 테이블 요소 */
.lotteworld-parking-table {
	width: 100%;
	border-collapse: collapse;
	font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
	color: #333;
}

/* 최상단 캡션/제목 셀 스타일 */
.lotteworld-parking-table .table-title {
	background-color: #f7f7f7;
	font-weight: bold;
	text-align: center;
	padding: 14px 10px;
	border-bottom: 1px solid #e0e0e0;
	color: #333;
}

/* 헤더 행의 셀 스타일 */
.lotteworld-parking-table th {
	background-color: #f7f7f7;
	padding: 14px 10px;
	border-bottom: 1px solid #e0e0e0;
	font-weight: bold;
	text-align: center;
	color: #333;
}

/* 첫 번째 헤더 셀 (주차시간)의 오른쪽 테두리 */
.lotteworld-parking-table th.col-parking-time {
	border-right: 1px solid #e0e0e0;
}

/* 데이터 행의 셀 스타일 */
.lotteworld-parking-table td {
	padding: 20px 10px; /* 상하 여백 20px로 칸 높이 확보 (이미지 일치) */
	text-align: center;
	border-bottom: 1px solid #e0e0e0;
	color: #555;
}

/* 데이터 셀의 오른쪽 테두리 */
.lotteworld-parking-table td:first-child {
	border-right: 1px solid #e0e0e0;
}

/* 마지막 데이터 행의 하단 테두리 제거 (이미지 일치) */
.lotteworld-parking-table tbody tr:last-child td {
	border-bottom: none;
}

/* ------------------------------------------------ */
/* 3. 공유하기 버튼 스타일 */
/* ------------------------------------------------ */
.share-button-wrapper {
	text-align: center;
	margin-top: 30px;
	margin-bottom: 30px; /* 하단 여백 추가 */
}

.share-button {
	background-color: #fff;
	color: #ff6b00;
	border: 1px solid #ff6b00;
	border-radius: 5px;
	padding: 10px 25px;
	font-size: 1em;
	cursor: pointer;
	transition: background-color 0.2s, color 0.2s, border-color 0.2s;
}

.share-button:hover {
	background-color: #ff6b00;
	color: #fff;
}
</style>


<style>
#miniMenu, .miniMenuSub, .nav-link-mini {
	font-family: 'NotoSansKR', sans-serif !important;
	text-decoration: none !important;
	color: gray;
}

.nav-link:hover {
	color: gray;
}

body {
	font-family: NotoSansKR;
	
}

/* 메인 컨텐츠 여백 */
.container {
	height: auto;
	margin-top: 100px;
}

</style>


<script type="text/javascript">
	$(function() {
		
		
		$("#mainMenu>li").mouseover(function() {
			$(".opensubMenu").slideDown(200);
			$("#subBar").slideDown(200);
			$(".subItems").slideDown(200);
		});

		$(".container").mouseover(function() {

			$(".opensubMenu").slideUp(200);
			$("#subBar").slideUp(200);
			$(".subItems").slideUp(200);
		});
		$(".header-btns").mouseover(function() {

			$(".subItems").slideUp(200);
			$(".opensubMenu").slideUp(200);
			$("#subBar").slideUp(200);
		});
		$(".close").mouseover(function() {

			$(".subItems").slideUp(200);
			$(".opensubMenu").slideUp(200);
			$("#subBar").slideUp(200);
		});

		$('.hamburger-toggle').on('click', function() {
			// 햄버거 버튼 클릭 시 메뉴 목록에 'is-open' 클래스를 토글합니다.
			$('.hamburger-list').toggleClass('is-open');
			$('.container').toggleClass('isClose');
			// 아이콘 모양을 바꾸려면 버튼에도 클래스를 토글할 수 있습니다.
			$(this).toggleClass('active');
			
		});
	});
</script>





<script>
	$(document).ready(
			function() {
				$(document).on(
						"click",
						"ul.tabs li > a",
						function() {

							var tab_id = $(this).attr("data-tab");

							$("ul.tabs li > a").removeClass("active").parent()
									.addClass('text-bg-light');
							$(".tab-content").removeClass("current");
							$(this).addClass("active").parent().removeClass(
									'text-bg-light');
							$("#" + tab_id).addClass("current");
						})
			})
</script>




</head>
<body>
	<div id="wrap">
			<!-- 헤더 -->
	<div class="close" style="width:100%; position:fixed;top:0;left:0; height : 10px;"></div>
	<div id="header" >
	<div class="close"></div>
		<div id="mainBar">
			<div class="logo">
				<img src="http://192.168.10.73/html_prj/practice/images/vivaLog.png"
					alt="VIVA PARK Logo" id="logImg" />
			</div>
			<button class="hamburger-toggle" style="background-color:#fff; border : 0px;"><img src="http://192.168.10.73/html_prj/practice/images/hamburger_menu.png"/></button>
			<div id="nav">
				<ul id="mainMenu" class="">
					<li>
						<div class="liDiv">
							즐길거리
							<div class="subItems">
								<ul>
									<li><a href="#void">어트랙션</a></li>
									<li><a href="#void">푸드코트</a></li>
									<li><a href="#void">기프트샵</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="liDiv">
							행사
							<div class="subItems">
								<ul>
									<li><a href="#void">행사 안내</a></li>
									<li><a href="#void">행사 예약</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="liDiv">
							요금/예매
							<div class="subItems">
								<ul>
									<li><a href="#void">티켓 요금</a></li>
									<li><a href="#void">연간 이용권</a></li>
									<li><a href="#void">할인/제휴</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="liDiv">
							이용정보
							<div class="subItems">
								<ul>
									<li><a href="#void">오시는 길</a></li>
									<li><a href="#void">영업 시간</a></li>
									<li><a href="#void">파크 이용 안내</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="liDiv">
							소통 서비스
							<div class="subItems">
								<ul>
									<li><a href="#void">공지</a></li>
									<li><a href="#void">FAQ</a></li>
									<li><a href="#void">문의</a></li>
								</ul>
							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="header-btns">
				<button class="btn" style="color: #FF6124; border: 1.5px solid #FF6124;">예약하기</button>
				<button class="btn" style="color: #000; border: 1.5px solid #000;">로그인</button>
			</div>
		</div>
		<div id=subBar>
		<div class="close"></div>
		<div class="close" style="position:fixed; top:100px; right: 0px; height:200px;"></div>
		</div>
		<div class="close"></div>
		<hr style="margin:0px !important">
	</div>
			<!-- 햄버거 메뉴 시작 -->
			<div class="hamburger-list">

				<div class="login-box">
					<span >로그인해 주세요</span> <span>〉</span>
				</div>

				<div class="reservation-box">
					<div>예매하기</div>
					<div>|</div>
					<div>티켓등록</div>
				</div>

				<div class="menu-section">
					<div class="menu-title">즐길거리</div>
					<div class="menu-list">
						<div>
							<a href="#void">어트랙션</a><br><a href="#void">푸드코트</a>
						</div>
						<div style="margin-right : 100px">
							 <a href="#void">기프트샵</a>
						</div>
					</div>

					<div class="menu-title">행사</div>
					<div class="menu-list">
						<div>
							<a href="#void">행사안내</a>
						</div>
						<div style="margin-right : 100px">
						 	<a href="#void">행사예약</a>
						 </div>
					</div>

					<div class="menu-title">요금/예매</div>
					<div class="menu-list">
						<div>
							<a href="#void">티켓 요금</a><br><a href="#void">연간 이용권</a>
						</div>
						<div style="margin-right : 100px">
							<a href="#void">할인/제휴</a>
						</div>
					</div>

					<div class="menu-title">이용정보</div>
					<div class="menu-list">
						<div>
							<a href="#void">오시는 길</a><br><a href="#void">영업 시간</a> 
						</div>
						<div style="margin-right : 100px">
							<a href="#void">파크 이용안내</a>
						</div>
					</div>
					
					<div class="menu-title">소통 서비스</div>
					<div class="menu-list">
						<div>
							<a href="#void">공지</a><br><a href="#void">FAQ</a> 
						</div>
						<div style="margin-right : 100px">
							<a href="#void">문의</a>
						</div>
					</div>

				</div>
			</div>
			<!-- 햄버거 메뉴 끝 -->

		<div id="container" class="container">

			<div id="inner">
				<!-- 페이지 상단 여백 -->
				<div style="height: 50px"></div>
				<!-- 미니 버튼 -->
				<div id="miniMenu" style="margin: 0px auto; height: 30px">
					<div>
						<a href="#void"><img
							src="http://192.168.10.72/html_prj/common/images/minihome.png"
							id="miniHome"></a> |&nbsp;
					</div>
					<div class="miniMenuSub">
						<li class="nav-item dropdown"><a
							class="nav-link-mini dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="font-weight: normal;"> 이용정보 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">즐길거리</a></li>
								<li><a class="dropdown-item" href="#">행사</a></li>
								<li><a class="dropdown-item" href="#">요금/예매</a></li>
								<li><a class="dropdown-item" href="#">소통서비스</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a
							class="nav-link-mini dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> <span
								style="font-weight: bold; color: black">오시는 길</span>
						</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">운영/운휴</a></li>
								<li><a class="dropdown-item" href="#">파크 이용 안내</a></li>
							</ul></li>
					</div>
				</div>

				<div
					style="font-size: 50px; font-family: NotoSansKR; font-weight: bold; text-align: center; padding: 5px; height: 150px;">
					오시는 길</div>


			</div>

			<section class="gogle_marp">
				<div id="mapWrap" style="width: 80%; margin: 0px auto">
					<div id="map" style="width: 100%; height: 500px;">

					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.134121204791!2d127.05059697629447!3d37.50475472766779!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca1c32408f9b7%3A0x4e3761a4f356d1eb!2z7IyN7Jqp6rWQ7Jyh7IS87YSw!5e0!3m2!1sko!2skr!4v1764141440021!5m2!1sko!2skr" width="600" height="450" style="border:0; width:100%" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

					</div>
					<div class="box box02">
						<div class="flex">
							<div class="icon01">
								<p>
									<i class="map"></i>
								</p>
							</div>
							<dl class="980_line">
								<dt>(우)06193 서울특별시 강남구 테헤란로 412 비바파크</dt>
								<dd>
									<a
										href="https://map.kakao.com/link/map/대치동890,37.504858565068,127.05326470511"
										target="_blank"><button type="button"
											class="btn btn-outline-secondary">
											<img
												src="http://192.168.10.72/jsp_prj/common/images/icon_kakaomap.png">
											Kakao Map
										</button></a> <a
    href="https://map.naver.com/v5/search/서울특별시 강남구 테헤란로 412"
    target="_blank">
    <button type="button" class="btn btn-outline-secondary">
        <img
            src="http://192.168.10.72/jsp_prj/common/images/icon_navermap.png"
            style="width: 40px"> Naver Map
    </button>
</a>
								</dd>
							</dl>
						</div>
					</div>
				</div>
			</section>


			<main class="sub0304">
				<ul class="nav nav-tabs tabs d-flex">
					<li class="nav-item flex-fill"><a class="nav-link active"
						aria-current="page" data-tab="tab-1">버스</a></li>
					<li class="nav-item flex-fill text-bg-light"><a
						class="nav-link" aria-current="page" data-tab="tab-2">지하철</a></li>
					<li class="nav-item flex-fill text-bg-light"><a
						class="nav-link" aria-current="page" data-tab="tab-3">자가용</a></li>
				</ul>
			</main>


			<!-- 버스 메뉴 -->

			<div id="tab-1" class="tab-content current">
				<main class="sub0304">
					<section>
						<div class="box box01">
							<h1 style="font-weight: bold">버스 이용 시</h1>
						</div>


						<div style="display: flex; margin-top: 80px; margin-bottom: 80px">
							<div
								style="width: 120px; height: 120px; display: flex; align-content: center; justify-content: center; background-color: lightgray; border-radius: 50%; align-items: center">
								<img src="http://192.168.10.72/jsp_prj/common/images/bus.png"
									style="width: 80px; height: 80px">
							</div>
							<div>
								<ul>
									<li class="bus-num">
										<div class="bus-type-div">
											<span class="bus-type" style="background-color: #62AF1E">지선</span>
										</div>
										<div>
											<span>3217번, 3313번, 3314번, 3315번, 3317번, 3411번, 3414번,
												4319번</span>
										</div>
									</li>
									<li class="bus-num">
										<div class="bus-type-div">
											<span class="bus-type" style="background-color: #D63A3C">광역</span>
										</div>
										<div>
											<span>1007-1번, 1100번, 1700번, 2000번, 6900번, 7007번,
												8001번</span>
										</div>
									</li>
									<li class="bus-num">
										<div class="bus-type-div">
											<span class="bus-type" style="background-color: #3369BC">간선</span>
										</div>
										<div>
											<span>301번, 341번, 360번, 362번</span>
										</div>
									</li>
									<li class="bus-num">
										<div class="bus-type-div">
											<span class="bus-type" style="background-color: #9E7940">공항</span>
										</div>
										<div>
											<span>6000번, 6006번, 6705번, 6706A번</span>
										</div>
									</li>
								</ul>
							</div>

						</div>
						<!--//box box02 -->


					</section>
					<div class="shuttle-info-section">
						<h2>지방 정기 셔틀버스 이용 시</h2>
						<p>지방에서 비바파크를 편하게 오고 싶으신가요? 셔틀버스를 이용해보세요!</p>

						<div class="custom-table">
							<div class="table-header">
								<div class="table-cell">소재지</div>
								<div class="table-cell">여행사명</div>
								<div class="table-cell">연락처</div>
							</div>

							<div class="table-row">
								<div class="table-cell">광양, 순천</div>
								<div class="table-cell">해피투어</div>
								<div class="table-cell">061-761-4146</div>
							</div>

							<div class="table-row">
								<div class="table-cell">광주</div>
								<div class="table-cell">아시아 여행사</div>
								<div class="table-cell">062-225-3456</div>
							</div>

							<div class="table-row">
								<div class="table-cell">대전</div>
								<div class="table-cell">미르 여행사</div>
								<div class="table-cell">042-471-0970</div>
							</div>
						</div>

						<div class="notes-box">
							<ul>
								<li>해당되는 지역 확인 후, 여행사 번호로 문의 바랍니다.</li>
								<li>상기 리스트는 비바파크 공식 지정 파트너사임을 확인합니다.</li>
								<li>소재지 가나다순으로 정렬하였습니다.</li>
							</ul>
						</div>
					</div>
				</main>
			</div>


			<!-- 지하철 메뉴 -->

			<div id="tab-2" class="tab-content">
				<main class="sub0304">
					<section>
						<div class="box box01">
							<h1 style="font-weight: bold">지하철 이용 시</h1>
						</div>


						<div style="display: flex; margin-top: 80px; margin-bottom: 80px">
							<div
								style="width: 120px; height: 120px; display: flex; align-content: center; justify-content: center; background-color: lightgray; border-radius: 50%; align-items: center">
								<img src="http://192.168.10.72/jsp_prj/common/images/subway.png"
									style="width: 80px; height: 80px">
							</div>
							<div>
								<ul>
									<li class="sub-num">
										<div class="sub-type-div">
											<span class="sub-type" style="background-color: #62AF1E">2</span>
										</div>
										<div>
											<span>선릉역 1번 출구</span>
										</div>
									</li>
									<li class="sub-num">
										<div class="sub-type-div">
											<span class="sub-type" style="background-color: #FABE00">분</span>
										</div>
										<div>
											<span>선릉역 9번 출구</span>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<!--//box box02 -->
					</section>
				</main>
			</div>
			
			<!--  자가 이용시 -->
			
			<div id="tab-3" class="tab-content">
				<main class="sub0304">
					<section>
						<div class="box box01">
							<h1 style="font-weight: bold">주차 안내</h1>
						</div>



						<div class="shuttle-info-section" style="margin-top:60px;">
							<div class="custom-table">
								<div class="table-header">
									<div class="table-cell">비바파크 이용권 인증 시</div>
								</div>
								<div class="table-header">
									<div class="table-cell">주차시간</div>
									<div class="table-cell">할인적용</div>
								</div>

								<div class="table-row">
									<div class="table-cell">~3시간 이하(~3시간)</div>
									<div class="table-cell">무료</div>
								</div>

								<div class="table-row">
									<div class="table-cell">3시간 초과 (3시간~)</div>
									<div class="table-cell">최대 3천원 (시간관계 無)</div>
								</div>

							</div>





						</div>

						<div class="share-button-wrapper">
							<button class="share-button">공유하기</button>
						</div>

						<!--//box box02 -->
					</section>
				</main>
			</div>

		</div>


		<!-- 푸터 -->
		<!-- 푸터 -->
	<div id="footer"  >
		<div class="footer-inner">

			<div class="footer-top">
				<img src="http://192.168.10.73/html_prj/practice/images/vivaLog.png"
					alt="VIVA PARK Logo" style="height: 50px;" />

				<div class="footer-menu">
					<span>비바파크 어트랙션 소개</span> <span>비바파크 소개</span> <span>ESG</span> <span>이용약관</span>
					<span style="color: #6A35FF">개인정보처리방침</span> <span>영상정보처리기기
						운영/관리방침</span> <span>이메일무단수집거부</span> <span>채용안내</span> <span>사업문의</span>
					<span>언제사용</span> <span>사이트맵</span>
				</div>
			</div>

			<div class="footer-bottom">
				비바파크 어트랙션<br> 사업장소재지: 충남 아산시 송악면 외암로 200 비바파크 아산랜드 | 대표자: 박정호<br>
				사업자등록번호: 219-85-00014 | 통신판매업신고번호: 아산 제 1532호 | 전화: 1605-2000
			</div>

			<div class="footer-icons"></div>

		</div>
	</div>




	</div>

</body>
</html>


