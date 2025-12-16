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

<!-- summerNote를 사용하기 위함 -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.js"></script>


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

.share-btn {
	background-color: #fff;
	border-radius: 5px;
	padding: 10px 25px;
	font-size: 18px;
	cursor: pointer;
	transition: background-color 0.2s, color 0.2s, border-color 0.2s;
	color: #ff6b00;
	border: 1px solid #ff6b00;
}


</style>


<style>
/*서머노트 크기 설정*/
#summernote,
.note-editor,
.note-editable,
.note-toolbar {
    width: 100% !important;
    max-width: 100%;
    box-sizing: border-box;
}
</style>

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
	    // 버튼 내부에서 텍스트 노드(nodeType === 3)만 찾아 텍스트를 변경하여 화살표(::after)를 유지합니다.
	    $button.contents().filter(function() {
	        return this.nodeType === 3; // 텍스트 노드만 선택
	    }).first().replaceWith(selectedText);
	});
 
	// summernote jqeury 시작
	$('#summernote').summernote({
	  placeholder: '내용을 입력하세요.',
	  tabsize: 2,
	  height: 500,
	  disableResizeEditor: true,
      toolbar: [
          ['style', ['bold','italic','clear']],
          ['fontsize', ['fontsize']],          
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['insert', ['link', 'picture']]
        ]
	});
	
	$('.note-statusbar').hide();
	// summernote jqeury 끝
	
	$("#writeBtn").click(function(){
		window.location.replace("http://192.168.10.72/jsp_prj/common/AdminFaq.jsp");
		
		//이곳에 작성했을때의 내용들 이벤트로 처리 필요
		
		
		
		
		
	});
	
	$("#cancelBtn").click(function(){
		window.location.replace("http://192.168.10.72/jsp_prj/common/AdminFaq.jsp");
	});
	
	
});

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
				
				<form id="searchFrm" name="searchFrm">
				<div id="writeWrap" style="display:flex; margin-left:50px; margin-top:50px; width:85%;">

					<div class="dropdown-center search-filter">
						<button class="btn btn-light dropdown-toggle" type="button"
							data-bs-toggle="dropdown" aria-expanded="false" id="category" style="width:250px;">이용정보</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">이용정보</a></li>
							<li><a class="dropdown-item" href="#">온라인예매/우대정보</a></li>
							<li><a class="dropdown-item" href="#">연간이용</a></li>
							<li><a class="dropdown-item" href="#">탑승예약제/싱글라이더</a></li>
							<li><a class="dropdown-item" href="#">장애인 탑승 예약제</a></li>
							<li><a class="dropdown-item" href="#">기타</a></li>
						</ul>
					</div>

					<div style="width:70%; margin-left:20px" >
						<input type="text" class="form-control" id="searchText" name="title">
						<input type="text" style="display:none">
    				</div>
    			</div>
				</form>    
				<div id="noteWrap" style="margin-left:50px; margin-top:50px; width:80%;">
				
						<form action="AdminFaq.jsp" id="faqfrm">
							<textarea name="intro" id="summernote"></textarea>
							<div style="display:flex; justify-content:flex-end; margin-top:30px">
								<input type="button" value="작성" class="share-btn" id="writeBtn" style="display:flex; margin-right:20px; background-color: #ff6b00; color : #ffffff">
								<input type="button" value="취소" class="share-btn" id="cancelBtn" style="border: 1px solid #ff6b00;	background-color: #ffffff">
							</div>
						</form>

				</div>
			
			</div>

		</div>
	</div>
</body>
</html>
