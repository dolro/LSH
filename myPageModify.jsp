<%@page import="com.team.dto.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
					<p>가입일: 2021. 10. 10</p>
				</div>
			</div>
			<hr style="height: 1px; background-color: black;">
			<P style="font-size: 25px;">회원정보 변경</p>
			<hr style="height: 1px; background-color: black;">
			<br>
			<form action="myPageModify.do" method="post">
				<table class="user_table">
					<tr>
						<td class="col1">프로필사진</td>
						<td class="col2">
							<img src="${loginCustomer.customer_profile}" class="face_modify">
						</td>
						<td class="col3">
							<button type="button">사진변경</button>
						</td>
					</tr>
					<tr>
						<td class="col1">아이디</td>
						<td class="col2"><input type="text" value="${loginCustomer.customer_id}" name="customer_id" readonly></td>
						<td></td>
					</tr>
					<tr>
						<td class="col1">이름</td>
						<td class="col2">${loginCustomer.customer_name}</td>
						<td></td>
					</tr>
					<tr>
						<td class="col1">비밀번호</td>
						<td class="col2"><input type="password" value="${loginCustomer.customer_pw}" name="customer_pw"></td>
						<td></td>
					</tr>
					<tr>
						<td class="col1">이메일</td>
						<td class="col2"><input type="text" value="${loginCustomer.customer_email}" name="customer_email"></td>
						<td></td>
					</tr>
					<tr>
						<td class="col1">휴대폰 번호</td>
						<td class="col2"><input type="text" value="${loginCustomer.customer_phone}" name="customer_phone"></td>
						<td></td>
					</tr>
					<tr>
						<td class="col1">기본 배송지</td>
						<td class="col2"><input type="text" value="${loginCustomer.customer_address}" name="customer_address"></td>
						<td></td>
					</tr>
				</table>
				<br> <br> <br> 
				<span class="pschk_4"> <input type="submit" value="확인" onclick="return modify();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	</span> 
				<span class="pschk_5"> <button type="reset">취소</button> </span>
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