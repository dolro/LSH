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
				<p style="margin: 25px 0px">
					<span style="font-size: 25px;"> <a href="customerCenterNotice.jsp"> <b>공지사항</b></a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<span style="font-size: 20px;"> <a href="customerCenterQuestion.jsp">자주 묻는 질문</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span style="font-size: 20px;"> <a href="customerCenter1To1.jsp">1:1 문의</a></span>
				</P>
				<hr style="height: 1px; background-color: black;">
				<br> <br>
				<table class="cs_table">
					<thead>
						<tr>
							<th></th>
							<th>제목</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 100px;">5</td>
							<td class="cs_td5" style="text-align: left; padding-left: 100px;">
								<span class="cs_td5_1"> <a href="javascript:doDisplay5();" class="cs_td5_1_1"> <b>[긴급점검]</b>내용보기</a>
									<div id=dodis5 style="display: none;">
										<p>----------------------------------------------------------------------------------</p>
										<h4>안녕하세요. 고객님</h4>
										<p>주문관련 에러로 긴급점검을 진행하였습니다.</p>
										<p>이제 정상적으로 서비스를 이용하실 수 있습니다.</p>
									</div>
								</span>
							</td>
							<td style="width: 200px;">2021.12.21</td>
						</tr>
						<tr>
							<td style="width: 100px;">4</td>
							<td class="cs_td4" style="text-align: left; padding-left: 100px;">
								<span class="cs_td4_1"> <a
									href="javascript:doDisplay4();" class="cs_td4_1_1"> <b>[긴급점검]</b>내용보기</a>
									<div id=dodis4 style="display: none;">
										<p>----------------------------------------------------------------------------------</p>
										<h4>안녕하세요. 고객님</h4>
										<p>배송관련 에러로 긴급점검을 진행하였습니다.</p>
										<p>이제 정상적으로 서비스를 이용하실 수 있습니다.</p>
									</div>
								</span>
							</td>
							<td style="width: 200px;">2021.12.11</td>
						</tr>
						<tr>
							<td style="width: 100px;">3</td>
							<td class="cs_td3" style="text-align: left; padding-left: 100px;">
								<span class="cs_td3_1"> <a
									href="javascript:doDisplay3();" class="cs_td3_1_1"> <b>[긴급점검]</b>내용보기</a>
									<div id=dodis3 style="display: none;">
										<p>----------------------------------------------------------------------------------</p>
										<h4>안녕하세요. 고객님</h4>
										<p>로그인관련 에러로 긴급점검을 진행하였습니다.</p>
										<p>이제 정상적으로 서비스를 이용하실 수 있습니다.</p>
									</div>
								</span>
							</td>
							<td style="width: 200px;">2021.12.01</td>
						</tr>
						<tr>
							<td style="width: 100px;">2</td>
							<td class="cs_td2" style="text-align: left; padding-left: 100px;">
								<span class="cs_td2_1"> <a
									href="javascript:doDisplay2();" class="cs_td2_1_1"> <b>[시스템점검]</b>내용보기</a>
									<div id=dodis2 style="display: none;">
										<p>----------------------------------------------------------------------------------</p>
										<h4>안녕하세요. 고객님</h4>
										<p>오늘 새벽 시스템점검을 진행하였습니다.</p>
										<p>이제 정상적으로 서비스를 이용하실 수 있습니다.</p>
									</div>
								</span>
							</td>
							<td style="width: 200px;">2021.11.30</td>
						</tr>
						<tr>
							<td style="width: 100px;">1</td>
							<td class="cs_td1" style="text-align: left; padding-left: 100px;">
								<span class="cs_td1_1"> <a href="javascript:doDisplay();"
									class="cs_td1_1_1"> <b>[시스템점검]</b> 내용보기</a>
									<div id=dodis style="display: none;">
										<p>----------------------------------------------------------------------------------</p>
										<h4>안녕하세요. 고객님</h4>
										<p>오늘 새벽 시스템점검을 진행하였습니다.</p>
										<p>이제 정상적으로 서비스를 이용하실 수 있습니다.</p>
									</div>
								</span>
							</td>
							<td style="width: 200px;">2021.11.11</td>
						</tr>
					</tbody>
				</table>
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