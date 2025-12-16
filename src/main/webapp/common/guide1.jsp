<%--page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VIVA PARK</title>
<link rel="stylesheet" type="text/css"
	href="http://192.168.10.73/html_prj/practice/vivatemplet.css" />

<!-- jQuery 먼저 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Bootstrap (Popper 포함 bundle) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<style type="text/css">
#wrap {
	margin: 0px auto;
	width: 100%;
	height: 1000px;
}

.container {
	height: auto;
	margin-top: 100px;
}

#container {
	margin-bottom: 20px;
}

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

.nav-item {
	list-style: none;
}


li {
	list-style: none;
}

/* 캐러셀 관련 */
#innerSwiper {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	padding-top: 20px; /* 위로 올림 */
	height: 300px;
	background-color: #F6F6F6;
	flex-direction: column; /* 세로로 쌓이도록 */
	border-radius: 30px;
	overflow: visible; /* 화살표가 잘리지 않도록 */
}

.swiper {
	width: 100%;
	padding: 0 40px; /* 양쪽에 화살표 공간 확보 */
	box-sizing: border-box;
	position: relative;
	margin: 0px auto;
}

.swiper-slide {
	width: 70px; /* 버튼 폭과 동일하게 */
	text-align: center;
	display: flex;
	justify-content: center;
	align-items: center;
}

.dateBtn, .dayDiv {
	font-family: NotoSansKR;
	border-radius: 10px;
	color: #333333 !important;
	z-index: 10;
}

.dateBtn.active {
	background-color: #FF6B00;
	color: #FFFFFF !important;
	border: 1px solid #FF6B00;
	border-radius: 10px;
}

.dateBtn {
	border: 0.5px solid #DDDDDD;
	background-color: #FFFFFF;
}

.swiper-button-prev, .swiper-button-next {
	width: 40px; /* 화살표 버튼 가로 */
	height: 40px; /* 화살표 버튼 세로 */
	border-radius: 50%; /* 원형 */
	top: 50%;
	transform: translateY(-50%);
	z-index: 10;
	/* 기본 화살표 아이콘 색상 변경 */
	--swiper-navigation-color: gray; /* Swiper 내 아이콘 색상 */
}

/* 위치 */
.swiper-button-prev {
	left: 10px;
}

.swiper-button-next {
	right: 10px;
}

.swiper-button-prev::after, .swiper-button-next::after {
	font-size: 16px; /* 아이콘 크기 조절 */
	color: gray; /* 아이콘 색상 */
}

/*캐러셀 끝*/
#timeInfo {
	display: flex;
	margin-top: 40px; /* Swiper와 간격 */
	font-family: NotoSansKR;
	font-size: 16px;
	text-align: center;
	border: 1px solid #DDDDDD;
	background-color: #FFFFFF;
	width: 300px;
	height: 60px;
	border-radius: 30px;
	padding: 5px;
	justify-content: center;
	align-items: center;
}

#miniMenu, .miniMenuSub, .nav-link-mini {
	font-family: 'NotoSansKR', sans-serif !important;
	text-decoration: none !important;
	color: gray;
}

.nav-link:hover {
	color: gray;
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





<script type="text/javascript">


$(function(){

	var today= new Date();
	var date = today.getDate();
	var day = ["일","월","화","수","목","금","토"];
	

	var swiper = new Swiper('.swiper', {
	slidesPerView: 9,        // 한 화면에 9개
	slidesPerGroup: 9,
	centeredSlides: false,
	initialSlide: 9,
	spaceBetween: 20,
	pagination: {
	el: '.swiper-pagination',
	type: 'fraction',
	},
	navigation: {
	nextEl: '.swiper-button-next',
	prevEl: '.swiper-button-prev',
	},
	virtual: {
	slides: (function () {
		var slides = [];
		for (var i = -15; i < 15; i ++) {
			var tempDate = new Date();
			tempDate.setDate(date + i);
			
			let isToday = (i === 0) ? "active" : ""; 
			
			
			
			slides.push(
					  "<div>"
				    + "<form action='#void' method='post' id='postFrm'>"
				    + "<input type='hidden' name='year' value='" + tempDate.getFullYear() + "'>"
				    + "<input type='hidden' name='month' value='" + (tempDate.getMonth() + 1) + "'>"
				    + "<input type='button' value='" + tempDate.getDate() 
				    + "' name='day' class='dateBtn " + isToday 
				    + "' onclick='viewBtn(this)' style='width:70px; height:70px; cursor:pointer;'>"
				    + "<div class='dayDiv'>" + day[tempDate.getDay()] + "</div>"
				    + "</form>"
				    + "</div>"
			);
			
		}
		return slides;
	})(),
	},
	});

});

function viewBtn(btn) {
    var $form = $(btn).closest("form");
    var date = btn.value;           //눌렀을때 날짜
    var day = $form.find(".dayDiv").text(); //눌렀을때 요일 
    var year  = $form.find("input[name='year']").val();
    var month = $form.find("input[name='month']").val();
	
    
    
    
    
    $(".dateBtn").removeClass("active");
    $(btn).addClass("active");
    
}


</script>
</head>
<body>
	<div id="wrap">
		<!-- 헤더 -->
		<div class="close"
			style="width: 100%; position: fixed; top: 0; left: 0; height: 10px;"></div>
		<div id="header">
			<div class="close"></div>
			<div id="mainBar">
				<div class="logo">
					<img
						src="http://192.168.10.73/html_prj/practice/images/vivaLog.png"
						alt="VIVA PARK Logo" id="logImg" />
				</div>
				<button class="hamburger-toggle"
					style="background-color: #fff; border: 0px;">
					<img
						src="http://192.168.10.73/html_prj/practice/images/hamburger_menu.png" />
				</button>
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
					<button class="btn"
						style="color: #FF6124; border: 1.5px solid #FF6124;">예약하기</button>
					<button class="btn" style="color: #000; border: 1.5px solid #000;">로그인</button>
				</div>
			</div>
			<div id=subBar>
				<div class="close"></div>
				<div class="close"
					style="position: fixed; top: 100px; right: 0px; height: 200px;"></div>
			</div>
			<div class="close"></div>
			<hr style="margin: 0px !important">
		</div>
		<!-- 햄버거 메뉴 시작 -->
		<div class="hamburger-list">

			<div class="login-box">
				<span>로그인해 주세요</span> <span>〉</span>
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
						<a href="#void">어트랙션</a><br> <a href="#void">푸드코트</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">기프트샵</a>
					</div>
				</div>

				<div class="menu-title">행사</div>
				<div class="menu-list">
					<div>
						<a href="#void">행사안내</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">행사예약</a>
					</div>
				</div>

				<div class="menu-title">요금/예매</div>
				<div class="menu-list">
					<div>
						<a href="#void">티켓 요금</a><br> <a href="#void">연간 이용권</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">할인/제휴</a>
					</div>
				</div>

				<div class="menu-title">이용정보</div>
				<div class="menu-list">
					<div>
						<a href="#void">오시는 길</a><br> <a href="#void">영업 시간</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">파크 이용안내</a>
					</div>
				</div>

				<div class="menu-title">소통 서비스</div>
				<div class="menu-list">
					<div>
						<a href="#void">공지</a><br> <a href="#void">FAQ</a>
					</div>
					<div style="margin-right: 100px">
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
								style="font-weight: bold; color: black">운영/운휴</span>
						</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">오시는길</a></li>
								<li><a class="dropdown-item" href="#">파크 이용 안내</a></li>
							</ul></li>
					</div>
				</div>





				<div id="inner2">
					<div id="innerSwiper" style="border-radius: 30px;">


						<div class="swiper">
							<div class="swiper-wrapper"></div>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
						</div>

						<div></div>

						<div id="timeInfo">
							<span>운영시간&nbsp;</span> <span>|&nbsp;</span> <span>10:00 ~
								22:00</span>
						</div>

					</div>
				</div>

		</div>











		<!-- 푸터 -->
		<div id="footer">
			<div class="footer-inner">

				<div class="footer-top">
					<img
						src="http://192.168.10.73/html_prj/practice/images/vivaLog.png"
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