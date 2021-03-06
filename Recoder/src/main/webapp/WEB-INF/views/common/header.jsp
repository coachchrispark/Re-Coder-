<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/Recoder/resources/css/styles.css">
<script src="/Recoder/resources/js/jquery-3.3.1.js"></script>
<div id = "header">
	<jsp:include page="../common/slider_ad.jsp"/>
	
	<div id="logo">
		<a href="../common/index.do"><img src="/Recoder/resources/images/fatDiet2.png"></a>
	</div>

<c:if test="${sessionScope.login_memberVo == null }">
	<div id="login">
		<a href="../member/add.do"><span>회원가입</span></a>
		<a href="../auth/login.do"><span>로그인</span></a>
	</div>
	
	<div id="menu">
		<a href="../introduce/home.do"><span>소개</span></a>
		<a href="../auth/login.do"><span>칼로리 처방</span></a>
    	<a href="../auth/login.do"><span>식단 처방</span></a>
		<a href="../board/list.do"><span>게시판</span></a>
	</div>
</c:if>

	
<c:if test="${sessionScope.login_memberVo != null }">


	<input type="hidden" name="memberNo" value="${login_memberVo.memberNo}">
	<input type="hidden" name="memberNo" value="${_memberInfoVo.memberNo}">
	<div id="login">
	<c:if test="${sessionScope.login_memberVo.memberAuth == 'A'.charAt(0)}">
		<a href="../diet/list.do"><span>식단관리</span></a>
		<a href="../member/list.do"><span>회원관리</span></a>
	</c:if>
		<a href="../member/info.do"><span>${login_memberVo.memberName}</span></a>
		<a href="../auth/logout.do"><span>로그아웃</span></a>
	</div>
	
	<div id="menu">
		<a href="../introduce/home.do"><span>소개</span></a>
		
		<c:choose>
			<c:when test="${login_memberVo.memberNo != null}">
				<a href="../memberInfo/memberInfoView.do?memberNo=${login_memberVo.memberNo}"><span>칼로리 처방</span></a>
			</c:when>
			<c:otherwise>
				<a href="../memberInfo/memberInfoView.do"><span>칼로리 처방</span></a>
			</c:otherwise>
		</c:choose>
		
    	<a href="../diet/dietPrescription.do"><span>식단 처방</span></a>
		<a href="../board/list.do"><span>게시판</span></a>
	</div>
</c:if>
</div>