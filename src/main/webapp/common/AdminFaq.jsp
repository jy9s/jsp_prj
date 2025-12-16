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


<!-- 드랍다운바 옵션 -->
<style>
/* 드롭다운 버튼에 적용된 고유 클래스 선택 */
.search-filter .btn {
    /* 1. 이전에 설정했던 너비와 왼쪽 정렬 재확인 */
    min-width: 100px; /* 적절한 너비로 조정 */
    text-align: left; /* 텍스트를 왼쪽으로 정렬 */
    
    /* 2. Flexbox를 사용하여 내부 요소 (텍스트와 화살표) 정렬 */
    display: flex; 
    /* 텍스트와 화살표를 양쪽 끝으로 최대한 밀어냄 */
    justify-content: space-between; 
    /* 수직 중앙 정렬 (이미 기본값일 수 있지만 명시) */
    align-items: center; 
}

/* 3. Dropdown-toggle의 기본 화살표 스타일을 재설정하여 공간 확보 */
.search-filter .dropdown-toggle::after {
    /* Bootstrap의 기본 margin-left를 0으로 초기화하거나 제거 */
    margin-left: 0; 
    /* flexbox가 이미 공간을 만들었기 때문에, 
       ::after 요소 자체의 불필요한 마진을 없애줍니다. */
}

/* 4. 드롭다운 메뉴 너비 맞추기 (이전 코드 재사용) */
.search-filter .dropdown-menu {
    min-width: 100%; 
}
</style>




<style>


</style>

<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.14.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://code.jquery.com/ui/1.14.1/jquery-ui.js"></script>


<script type="text/javascript">


$(function() {
    $('.search-filter .dropdown-menu .dropdown-item').on('click', function(e) {
        // 브라우저의 기본 동작 (페이지 이동)을 막습니다.
        e.preventDefault(); 
        // 2. 클릭된 항목의 텍스트를 가져옵니다.
        var selectedText = $(this).text();        
        // 3. 드롭다운 버튼 요소를 찾습니다.
      	// 클릭된 항목의 부모(ul.dropdown-menu)의 부모(div.search-filter)에서 button을 찾습니다.
        var $button = $(this).closest('.search-filter').find('button.dropdown-toggle');
        
        // 4. 버튼 내부 텍스트를 가져온 텍스트로 변경합니다.
        // 화살표(▼)는 ::after 가상 요소로 생성되므로 텍스트만 변경해도 됩니다.
        $button.contents().filter(function() {
            return this.nodeType === 3; // 텍스트 노드만 선택
        }).first().replaceWith(selectedText);
    });
    
    
    $("#noticeBtn").click(function(){
    	window.location.replace("http://192.168.10.72/jsp_prj/common/AdminNotice.jsp");
    });

    $("#faqBtn").click(function(){
    	window.location.replace("http://192.168.10.72/jsp_prj/common/AdminFaq.jsp");
    });
    
    
    
});

function searchNotice(){
	var category = $("#category").text();
	var text = $("#searchText").val();
	
	//category, text를 입력받아서 처리한다.
	
	$("#searchFrm").submit();
	
}

function writeFaq(){
	//공지 쓰는 페이지로 이동
	$("#faq").submit();
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
				<div style="font-family: Noto Sans KR, sans-serif; font-weight: bold; font-size: 35px; margin-left: 20px">FAQ</div>
								
				<div style="display:flex; padding-right:100px; margin-top:30px; width:100%">
					
					
					<div style="display:flex; padding-left:30px;">
					<button type="button" class="share-button" id="noticeBtn" style="font-size:15px; padding-top:5px; padding-bottom:5px; ">공지</button>
					</div>
					<div style="display:flex; padding-left:10px;">
					<button type="button" class="share-button" id="faqBtn" style="font-size:15px; padding-top:5px; padding-bottom:5px; ">FAQ</button>
					</div>
					
					<div style="display:flex; justify-content: flex-end; width:85%">
					<div class="dropdown-center search-filter" style="display:flex;">
						<button class="btn btn-light dropdown-toggle" type="button"
							data-bs-toggle="dropdown" aria-expanded="false" id="category" style="width:220px">전체</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">전체</a></li>
							<li><a class="dropdown-item" href="#">이용정보</a></li>
							<li><a class="dropdown-item" href="#">온라인예매/우대정보</a></li>
							<li><a class="dropdown-item" href="#">연간이용</a></li>
							<li><a class="dropdown-item" href="#">탑승예약제/싱글라이더</a></li>
							<li><a class="dropdown-item" href="#">장애인 탑승 예약제</a></li>
							<li><a class="dropdown-item" href="#">기타</a></li>
						</ul>
					</div>
					
					<div style="margin-left:10px">
						<input type="text" class="form-control" id="searchText" name="search">
    
    
					</div>
					<div style="margin-left:10px">
							<button class="share-button" type="button" onclick="searchNotice()" style="font-size:17px;padding-top:5px;padding-bottom:5px;">조회</button>
					</div>				
					</div>
				</div>
				
				
				<div style="margin-top:50px; padding-left:20px; padding-right:100px">
				
					<table class="table table-striped table-hover">
						<tr>
						<th>번호</th>
						<th>카테고리</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회</th>
						</tr>
				
						<tr>
						<td>123</td>
						<td>공지</td>
						<td>하하하하 이것은 공지다</td>
						<td>2025.01.01</td>
						<td>564654654</td>
						</tr>
				
						<tr>
						<td>123</td>
						<td>FAQ</td>
						<td>하하하하 이것은 FAQ</td>
						<td>2025.01.01</td>
						<td>-</td>
						</tr>
					</table>
				
				
				</div>
				
				<div style="margin-left:10px; display:flex; justify-content: flex-end; padding-right:100px; margin-top:50px">

				<form id="faq" name="faq" action="AdminFaqWrite.jsp">
					<input class="share-button" type="button" id="faqBtn" onclick="writeFaq()" style="font-size:17px; padding-top:5px; padding-bottom:5px; margin-right:10px" value="글쓰기">
				</form>
				</div>
				
				<div style="margin-top:50px">
				
				Pagination 자리
				
				</div>
				
				
				
				
				
				
				
				
				
				
				
				
			</div>

		</div>
	</div>
</body>
</html>
