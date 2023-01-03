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
					<form class="search-form" action="productListPants.do" method="get">
						<select class="category-box" name="searchKeywordType">
							<option ${(param.searchKeywordType =="3")?"selected":"" } value="3">PANTS</option>
						</select>
						<input class="search-bar" type="text" name="searchKeyword" value="${param.searchKeyword}"> 
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
			<br>
			<br>
			<br>

			<nav id="content_box">
				<div class="box1">
					<h2 align="center">PANTS</h2>
				</div>
			</nav>
			<br>
			<div class="box2">
				<span onclick="location.href='productListPants.do'">전체</span>&nbsp|&nbsp
				<span onclick="location.href='productListPantsDESC.do'">높은가격순</span>&nbsp|&nbsp
				<span onclick="location.href='productListPantsASC.do'">낮은가격순</span>&nbsp|&nbsp
				<span onclick="location.href='productListAll.do'">최신등록순</span>
			</div>
			<br>
			<br>

			<c:if test="${!empty param.searchKeyword}">
				<p align="center">
					<b>"${param.searchKeyword}" 검색 결과입니다.</b>
				</p>
			</c:if>

			<br>
			<br>

			<div id="items">
				<ul>
					
					<c:forEach var="pVo" items="${list}">
						<li>
							<div class="items_box">
								<a href="productDetail.do?product_number=${pVo.product_number}">
									<div class="items_box_img">
										<img src="${pVo.product_image}">
									</div>
									<br>
									<div class="items_box_description">
										<div>
											<strong>${pVo.product_name}</strong>
										</div>
										<div>${pVo.product_information}</div>
										<div>
											<strong>₩<fmt:formatNumber
													value="${pVo.product_price}" pattern="#,###" /></strong>
										</div>
										<br>
									</div>
								</a>
							</div>
						</li>
					</c:forEach>
					
				</ul>
			</div>

			<div class="pageBox">
				<c:set var="page" value="${(empty param.p)?1:param.p}" />
				<c:set var="startNum" value="${page-(page-1)%5}" />
				<c:set var="lastNum" value="${fn:substringBefore(count/12, '.')}" />

				<span> <c:if test="${startNum>1}">
						<a href="?p=${startNum-1}&searchKeywordType=&searchKeyword="
							class="prev">◀&nbsp&nbsp</a>
					</c:if> <c:if test="${startNum<=1}">
						<span class="next" onclick="alert('이전 페이지가 없습니다.');">◀&nbsp&nbsp</span>
					</c:if>
				</span>

				<div class="pageNum">
					<ul>
						<c:forEach var="i" begin="0" end="1">
							<li><a style="color:${(page==(startNum+i))?'red':''}"
								href="?p=${startNum+i}&searchKeywordType=${param.searchKeywordType}&searchKeyword=${param.searchKeyword}">${startNum+i}</a></li>
						</c:forEach>
					</ul>
				</div>

				<span> <c:if test="${startNum+4<lastNum}">
						<a href="?p=${startNum+5}&searchKeywordType=&searchKeyword="
							class="next">&nbsp&nbsp▶</a>
					</c:if> <c:if test="${startNum+4>=lastNum}">
						<span class="next" onclick="alert('다음 페이지가 없습니다.');">&nbsp&nbsp▶</span>
					</c:if>
				</span>
			</div>


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