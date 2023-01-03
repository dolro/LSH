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
						<select class="category-box" name="searchKeywordType">
							<option ${(param.searchKeywordType =="1")?"selected":"" } value="1">전체</option>
						</select>
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
			<br>
			<br>
			<br>

			<nav id="content_box">
				<div class="box1">
					<h2 align="center">전체 상품</h2>
				</div>
			</nav>
			<br>

			<div class="box2">
				<span onclick="location.href='productListAll.do'">전체</span>&nbsp|&nbsp
				<span onclick="location.href='productListAllDESC.do'">높은가격순</span>&nbsp|&nbsp
				<span onclick="location.href='productListAllASC.do'">낮은가격순</span>&nbsp|&nbsp
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
				<c:set var="startNum" value="${page-(page-1)%5}" /> <%-- ex) page=1->1, page=3->1, page=6->6, 여기서 startNum은 1, 6이 끝 --%>
				<c:set var="lastNum" value="${fn:substringBefore(count/12, '.')}" /> <%-- substringBefore 사용하여 . 앞에 것 반환 --%>

				<span> 
					<c:if test="${startNum>1}">	<%-- startNum이 6 일때 ◀ 사용 가능하다는 것  --%>
						<a href="?p=${startNum-1}&searchKeywordType=&searchKeyword=" class="prev">◀&nbsp&nbsp</a>
					</c:if> 
					<c:if test="${startNum<=1}">
						<span class="next" onclick="alert('이전 페이지가 없습니다.');">◀&nbsp&nbsp</span>
					</c:if>
				</span>

				<div class="pageNum">
					<ul>
						<c:forEach var="i" begin="0" end="4">	<%-- 인데스 기반 0~4 5번 반복 --%>
							<c:if test="${(startNum+i) <= 6}">
								<li><a style="color:${(page==(startNum+i))?'red':''}" <%-- 삼항연산자 사용, 현재 page 빨간색 적용 --%>
									href="?p=${startNum+i}&searchKeywordType=${param.searchKeywordType}&searchKeyword=${param.searchKeyword}">${startNum+i}</a></li>
							</c:if>
						</c:forEach>
					</ul>
				</div>

				<span> 
					<c:if test="${startNum+4<lastNum}">	<%-- startNum은 1, 6 이고 lastNum은 6 고정. ▶ 클릭시 6page 이동 --%>
						<a href="?p=${startNum+5}&searchKeywordType=&searchKeyword=" class="next">&nbsp&nbsp▶</a>
					</c:if> 
					<c:if test="${startNum+4>=lastNum}">
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

