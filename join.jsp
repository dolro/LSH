<%@page import="com.team.dto.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>남성 의류 쇼핑몰</title>
<link rel="stylesheet" type="text/css" href="./css/team.css">
<script src="js/main.js?ver=123"></script>
<script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="wrapper">
		<header>
			<div class="header">
				<div class="logo-box">
					<a href="./index.jsp"><b>LogoName</b></a>
				</div>

				<div class="search-box">
					<form class="search-form" action="productListAll.do" method="get">
						<input class="search-bar" type="text" name="searchKeyword" value="${param.searchKeyword}" id="fSearch"> 
						<input class="btn-search" type="submit" value="검색">
					</form>
				</div>
				<div class="info-box">
					<ul>
						<c:choose>
							<c:when test="${empty loginCustomer}">
								<li><a href="login.do">로그인</a></li>
								<li><a href="join.do">회원가입</a></li>
							</c:when>
							<c:when test="${!empty loginCustomer}">
								<li><a href="logout.do">로그아웃</a></li>
								<li><a href="myPage.do">내정보</a></li>
							</c:when>
						</c:choose>
						<li><a href="customerCenterNotice.jsp">고객센터</a></li>
					</ul>
				</div>
			</div>
		</header>

		<nav>
			<div class="menu-bar">
				<ul>
					<li><a href="productListAll.do">전체상품</a></li>
					<li><a href="productListTop.do">TOP</a></li>
					<li><a href="productListPants.do">PANTS</a></li>
					<li><a href="productListOuter.do">OUTER</a></li>
				</ul>
			</div>
		</nav>
		<div class="content">
			<form action="join.do" method="post">
				<div class="loginForm loginForm2">
					<h1>회원가입</h1>
					<br> <input type="text" placeholder="아이디" name="id"> <br>
					<input type="password" placeholder="비밀번호" name="pwd"> <br>
					<input type="text" placeholder="이름" name="name"> <br>
					<input type="text" placeholder="이메일" name="email"> <br>
					<input type="text" placeholder="휴대폰번호" name=phone> <br>
					<input type="text" placeholder="주소" name="address"> <br>
					<br>
					<div class="ip">
						<input type="checkbox" name="joinCheck" onclick='selectAll(this)'> 약관 전체 동의
					</div>
					<div class="ip">
						<input type="checkbox" name="joinCheck"> 개인 정보 수집 이용 동의 (필수)
					</div>
					<div class="ip">
						<input type="checkbox" name="joinCheck"> 스토어 이용약관 (필수)
					</div>
					<div class="ip">
						<input type="checkbox" name="joinCheck"> 마케팅활용 및 광고성정보 수신동의 (선택)
					</div>
					<div class="ip">
						<input type="checkbox" name="joinCheck"> 만 14세 미만 가입 제한 (필수)
					</div>
					<br> <br>
					<button type="submit">
						<b>동의하고 회원가입</b>
					</button>
				</div>
			</form>
		</div>
	</div>
	<footer>
		<address>
			<p>(주)LogoName</p>
			<p>대표전화 : 1111-2222</p>
			<p>팩스번호 : 1111-2222</p>
			<p>이메일주소 : LogoName@LogoName.com</p>
			<p>주소 : 서울특별시 영등포구</p>
			<p>Copyright © All Rights Reserved</p>
		</address>
	</footer>
</body>
</html>