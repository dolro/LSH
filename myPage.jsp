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
	<div class="wrapper wrapper2">
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
			<div class="my_page_left">
				<br> <br> <br> <br>
				<p style="font-size: 25px;">
					<b>마이페이지</b>
				</p>
				<br> <br> <br> <br>
				<p>
					<a href="myPageOrderDeliveryList.jsp" style="color: black">주문/배송 목록</a>
				</p>
				<br>
				<p>
					<a href="myPageCartList.jsp" style="color: black">장바구니</a>
				</p>
				<p>
					<a href="myPageWishList.jsp" style="color: black">관심품목</a>
				</p>
				<br>
				<p>
					<a href="myPageReviewList.jsp" style="color: black">리뷰내역</a>
				</p>
				<p>
					<a href="myPage1To1List.jsp" style="color: black">문의내역</a>
				</p>
				<br>
				<p>
					<a href="myPage.jsp" style="color: black">회원정보 변경/</a><a href="myPage1.jsp" style="color: black">탈퇴</a>
				</p>
			</div>
			<div class="my_page_right">
				<br> <br>
				<div class="right_0">
					<div class="right_1">
						<img src="${loginCustomer.customer_profile}" class="profile">
					</div>
					<div class="right_2">
						<P style="font-size: 30px;">${loginCustomer.customer_name}님</p>
					</div>
					<div class="right_3">
						<p>가입일: ${loginCustomer.customer_date}</p>
					</div>
				</div>
				<hr style="height: 1px; background-color: black;">
				<P style="font-size: 25px;">회원정보 변경</p>
				<hr style="height: 1px; background-color: black;">

				<form name="psForm" action="myPage.do" method="post">
					<div class="pschk">
						<br>
						<div class="pschk_1">
							<P style="font-size: 25px; text-align: center;">비밀번호 확인</p>
							<br>
						</div>
						<div class="pschk_2">
							<p style="font-size: 22px;">${loginCustomer.customer_id}</p>
						</div>
						<div class="pschk_3">
							<input name="input_pw" type="password" placeholder="비밀번호를 입력하세요" onclick="myPageModify.do?customer_id=${loginCustomer.customer_id}'"><br>
							<br>
							<br>
							<br>
						</div>
						<span class="pschk_4"><input type="submit" value="확인">&nbsp;&nbsp;&nbsp;&nbsp;</span> 
						<span class="pschk_5"><button>취소</button></span>
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
	</div>
</body>
</html>