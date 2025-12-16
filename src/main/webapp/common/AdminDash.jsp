<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Viva Admin</title>
<link rel="stylesheet" type="text/css"
	href="http://192.168.10.72/jsp_prj/common/css/vivaAdminTemplate.css" />
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

<!-- jQeury DNS 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>

#dashboardWrap{
	margin-right:100px;
	height:auto;
	font-family: "Noto Sans KR", sans-serif;
}
/* <!-- 상단크기 --> */
#topDashMenu{
	display:flex;
}
/* <!-- 하단크기 --> */
#bottomDashMenu{
	display:flex;
}

/* <!-- 각각 섹션 --> */
.dashSection{
height:300px;
border-radius: 30px;
margin:10px;
box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
border:1px solid #eee; 
padding-top:10px;
padding-left:20px;
padding-right:20px;
}

/* <!-- 소제목 --> */
.dashTitle{
font-size:20px;
font-weight:bold;
}

.dashSub{
font-family: "Noto Sans KR", sans-serif;
font-size:15px;
font-weight:bold;
}


.dashCalandar{
text-align: right;
margin-right:100px;
}

#to, #from {
	border: 1px solid lightgray;
	background-color: #ffffff
	font-family: "Noto Sans KR", sans-serif;
}



</style>

<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.14.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://code.jquery.com/ui/1.14.1/jquery-ui.js"></script>


<script type="text/javascript">


$(function() {
	
	var dateFormat = 'yy-mm-dd', from = $("#from").datepicker({
		defaultDate : null,
		changeMonth : true,
		numberOfMonths : 2,
		dateFormat : 'yy-mm-dd',
		dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
		monthNames: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
		monthNamesShort: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ]

	
	
	}).on("change", function() {
		to.datepicker("option", "minDate", getDate(this));
	}), to = $("#to").datepicker({
		defaultDate : "+7d",
		changeMonth : true,
		numberOfMonths : 2,
		dateFormat : 'yy-mm-dd',
		dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
		monthNames: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
		monthNamesShort: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ]

	
	
	}).on("change", function() {
		from.datepicker("option", "maxDate", getDate(this));
	});
	
	
	
	
	
	$("#from").datepicker('setDate', new Date());
    $("#to").datepicker('setDate', '+7d');

    
	function getDate(element) {
		var date;
		try {
			date = $.datepicker.parseDate(dateFormat, element.value);
		} catch (error) {
			date = null;
		}

		return date;
	}
});

function calView(){
	
	//예외 처리 
	if($("#from").val()=="" || $("#to").val()==""){
		alert("날짜를 먼저 입력해주세요");
		return;
	}
	
	//날짜 입력받기
	var strDate = $("#from").val(); //시작일
	var endDate = $("#to").val(); //종료일
	
	
	
}

</script>

</head>
<body>
	<div id="wrap">
		<div id="header" style="display: flex">
			<div>
				<img src="http://192.168.10.72/jsp_prj/common/images/logo.png"
					id="logo">
			</div>
			<div
				style="width: 80%; display: flex; justify-content: flex-end; align-items: center; margin-right: 100px">
				<input type="button" value="로그아웃" class="share-button">
			</div>
		</div>

		<div id="container">
			<div id="left">
				<div class="menu">
					<a href="http://192.168.10.72/jsp_prj/common/AdminDash.jsp" class="menuLink"><img
						src="http://192.168.10.72/jsp_prj/common/images/dashboard.png"
						class="icon"><span class="menu-text">대시보드</span></a>
				</div>
				<div class="menu">
					<a href="http://192.168.10.72/jsp_prj/common/AdminUserInfo.jsp" class="menuLink"><img
						src="http://192.168.10.72/jsp_prj/common/images/info.png"
						class="icon"><span class="menu-text">회원 정보 조회</span></a>
				</div>
				<div class="menu">
					<a href="http://192.168.10.72/jsp_prj/common/AdminNotice.jsp" class="menuLink"><img
						src="http://192.168.10.72/jsp_prj/common/images/speaker.png"
						class="icon"><span class="menu-text">공지/FAQ</span></a>
				</div>
				<div class="menu">
					<a href="#void" class="menuLink"><img
						src="http://192.168.10.72/jsp_prj/common/images/event.png"
						class="icon"><span class="menu-text">행사 관리</span></a>
				</div>
				<div class="menu">
					<a href="#void" class="menuLink"><img
						src="http://192.168.10.72/jsp_prj/common/images/question.png"
						class="icon"><span class="menu-text">1:1문의</span></a>
				</div>
				<div class="menu">
					<a href="#void" class="menuLink"><img
						src="http://192.168.10.72/jsp_prj/common/images/ticket.png"
						class="icon"><span class="menu-text">예매관리</span></a>
				</div>
				<div class="menu">
					<a href="#void" class="menuLink"><img
						src="http://192.168.10.72/jsp_prj/common/images/calandar.png"
						class="icon"><span class="menu-text">예약관리</span></a>
				</div>
				<div class="menu">
					<a href="#void" class="menuLink"><img
						src="http://192.168.10.72/jsp_prj/common/images/attraction.png"
						class="icon"><span class="menu-text">놀이기구관리</span></a>
				</div>
			</div>

			<div id="right">
				<div style="font-family: Noto Sans KR, sans-serif; font-weight: bold; font-size: 35px; margin-left: 20px">V!VA 파크 관리자 대시보드</div>
				<!-- JQUERY 달력  -->
				<div class="dashCalandar">
				<label for="from" class="dashSub">기간 : </label>
				<input type="text" id="from" name="from" style="width:95px">
				<label for="to" class="dashSub">~</label> <input type="text" id="to" name="to" style="width:95px">
				<input type="button" value="조회" id="calBtn" class="share-button" onclick="calView()" style="font-size:15px; padding-top:5px; padding-bottom:5px; padding-left:30px;padding-right:30px">
				</div>
				<!-- JQUERY 달력끝  -->
				<div id="dashboardWrap">
					<div id="topDashMenu">
						<div class="dashSection" id="userCount" style="width: 50%">
							<div class="dashTitle">방문객수</div>
							<div style="display: flex">
								<div style="width: 80%">
									<div style="font-size: 40px; font-weight: bold">2,500명</div>
									<div style="font-size: 15px; color: gray;">일일 입장 인원</div>
								</div>

								<div style="width: 20%">
									<div
										style="font-size: 15px; color: gray; text-align: right; font-weight: bold;">전월대비</div>
									<div style="text-align: right">8.3%</div>
								</div>
							</div>

							<div style="width: 100%">그래프</div>


						</div>
						<div class="dashSection" id="ticketRevenue" style="width: 25%">
							<div class="dashTitle">입장권 매출</div>
							<div style="margin-top: 10px">
								<div style="font-size: 15px; color: gray; font-weight: bold;">일반이용권</div>
								<div>그래프</div>
							</div>
							<div>
								<div style="font-size: 15px; color: gray; font-weight: bold;">연간이용권</div>
								<div>그래프</div>
							</div>
							<div
								style="font-size: 15px; color: gray; text-align: right; font-weight: bold;">이번달
								매출</div>
							<div
								style="font-size: 30px; font-weight: bold; text-align: right">2,222,222</div>

						</div>
						<div class="dashSection" id="performanceRevenue"
							; style="width: 25%">
							<div class="dashTitle">행사 매출</div>
							<div style="margin-top: 10px">
								<div>그래프</div>
							</div>
							<div
								style="font-size: 15px; color: gray; text-align: right; font-weight: bold;">이번달
								매출</div>
							<div
								style="font-size: 30px; font-weight: bold; text-align: right">2,222,222</div>
						</div>
					</div>

					<div id="bottomDashMenu">
						<div class="dashSection" id="ticketStatus"
							; style="border: 1px solid #eee; width: 50%">
							<div class="dashTitle">예매 관리</div>
							<div style="margin-top: 10px; display: flex">
								<div class="dashSub" style="width: 90%">금일 예매</div>
								<div style="text-align: right; width: 10%">
									<div class="dashSub" style="color: #47b15b;">132건</div>
								</div>
							</div>
							<div style="margin-top: 5px; display: flex">
								<div style="width: 90%" class="dashSub">환불 요청</div>
								<div style="text-align: right; width: 10%">
									<div class="dashSub" style="color: #ffd160;">5건</div>
								</div>
							</div>
							<div style="margin-top: 5px; display: flex">
								<div style="width: 90%;" class="dashSub">처리 완료</div>
								<div style="text-align: right; width: 10%">
									<div class="dashSub" style="color: #e15d68;">4건</div>
								</div>
							</div>
						</div>
						<div style="height: 300px; width: 50%">
							<div id="qnaStatus" class="dashSection"
								style="border: 1px solid #eee; border-radius: 30px; height: 45%">
								<div class="dashTitle">1:1 문의</div>
								<div style="margin-top: 5px; display: flex">
									<div style="width: 90%;" class="dashSub">문의 접수</div>
									<div style="text-align: right; width: 10%">
										<div class="dashSub" style="color: #47b15b;">120건</div>
									</div>
								</div>
								<div style="margin-top: 5px; display: flex">
									<div style="width: 90%;" class="dashSub">답변 완료</div>
									<div style="text-align: right; width: 10%">
										<div class="dashSub" style="color: #e15d68;">4건</div>
									</div>
								</div>
							</div>
							<div style="height: 1%"></div>
							<div id="attractionStatus" class="dashSection"
								style="border: 1px solid #eee; border-radius: 30px; height: 45%">
								<div class="dashTitle">놀이기구 관리</div>
								<div style="margin-top: 5px; display: flex">
									<div style="width: 90%;" class="dashSub">정상 운행</div>
									<div style="text-align: right; width: 10%">
										<div class="dashSub" style="color: #47b15b;">7종</div>
									</div>
								</div>
								<div style="margin-top: 5px; display: flex">
									<div style="width: 90%;" class="dashSub">정기 점검</div>
									<div style="text-align: right; width: 10%">
										<div class="dashSub" style="color: #e15d68;">2종</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
