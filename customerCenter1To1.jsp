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
					<b>&nbsp;&nbsp;고객센터</b>
				</p>
				<p style="font-size: 18px;">&nbsp;&nbsp;(02-1111-2222)</P>
				<p style="font-size: 18px;">&nbsp;&nbsp;(09:00 ~ 18:00)</P>
				<br> <br> <br>
				<div class="left_0">
					<img src="./images/cs1.JPG" class="cs1">
				</div>
			</div>
			<div class="my_page_right">
				<br> <br>
				<div class="right_0">
					<div class="right_1">
						<img src="./images/얼굴.JPG" class="profile">
					</div>
					<div class="right_2">
						<P style="font-size: 30px;"><b>LogoName</b></p>
					</div>
					<div class="right_3">
						<p>since 2022</p>
					</div>
				</div>
				<hr style="height: 1px; background-color: black;">
				<p style="margin: 25px">
					<span style="font-size: 20px;"><a href="customerCenterNotice.jsp">공지사항</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span style="font-size: 20px;"><a href="customerCenterQuestion.jsp">자주 묻는 질문</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span style="font-size: 25px;"><a href="customerCenter1To1.jsp"> <b>1:1 문의</b></a></span>
				</P>
				<hr style="height: 1px; background-color: black;">
				<br> <br>
				<form>
					<p style="font-size: 25px;">
						<b>문의 작성</b>
					</p>
					<hr style="height: 1px; background-color: black;" width="1200px"
						align="left";>
					<table class="cs_table2">
						<tbody>
							<tr>
								<th>문의유형</th>
								<td>
									<div class="inquiry_input">
										<select name="inquiry_kind">
											<option value>문의유형 선택</option>
											<option value="교환">교환</option>
											<option value="환불">환불</option>
											<option value="배송">배송</option>
											<option value="주문">주문</option>
											<option value="결제">결제</option>
											<option value="기타">기타</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th>주문번호</th>
								<td><input type="text" class="inquiry_input"></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><input type="text" class="inquiry_input" value="홍길동"></td>
							</tr>
							<tr>
								<th>휴대폰 번호</th>
								<td><input type="text" class="inquiry_input" value="01012345678"></td>
							</tr>
							<tr>
								<th>제목</th>
								<td><input type="text" class="inquiry_input" placeholder="제목을 입력해주세요."></td>
							</tr>
							<tr>
								<th>문의내용</th>
								<td><textarea class="inquiry_input" cols="100" rows="25" placeholder="내용을 입력해주세요."></textarea></td>
							</tr>
						</tbody>
					</table>
					<br> <br> <br> 
					<span class="pschk_4" style="padding-left: 150px;"> <input type="button" value="확인">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 
					<span class="pschk_5"><button type="reset">취소</button></span>
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