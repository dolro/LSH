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
			<form>
				<div class="loginForm">
					<h1>아이디 찾기</h1>
					<br> <br>
					<div class="ip">
						<input type="radio" name="find" onclick="doDisplay0('0')" checked>
						<label>휴대폰으로 찾기 </label>
					</div>
					<div id="find1" style="display: block; text-align: center;">
						<input type="text" placeholder="이름" style="margin-bottom: 21px;">
						<input type="text" placeholder="- 없이 번호 입력"
							style="margin-bottom: 21px;">
						<button style="margin-bottom: 21px;">
							<b>확인</b>
						</button>
					</div>
					<div class="ip">
						<input type="radio" name="find" onclick="doDisplay0('1')">
						<label>이메일로 찾기 </label>
					</div>
					<div id="find2" style="display: none; text-align: center;">
						<input type="text" placeholder="이름" style="margin-bottom: 21px;">
						<input type="text" placeholder="이메일 입력"
							style="margin-bottom: 21px;">
						<button style="margin-bottom: 21px;">
							<b>확인</b>
						</button>
					</div>
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