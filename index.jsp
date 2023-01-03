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
<script src="./js/jquery-3.6.0.min.js"></script>
</head>
<body>
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
		<div class="top-section">
			<img src="./images/1.jpg">
			<div class="top-text">
			  <h1>MZ세대를 위한 패션 아이템</h1>
			  <p>나를 위한 합리적인 플렉스</p>
			  <p>패션의 완성은 LogoName</p>
			</div>
		</div>
		
		<br><br><br>
		<main>
			<div class="product-top-area">
				<h1>지금 가장 핫한 상품</h1>
			</div>
			<div class="product-area">
				<div class="product" id=product_01>
					<a href="#"> <img class="product-images" src="./images/outer/LV 카툰 자카드 집 스루 블루종 1,900,000.jpg">LV 카툰 자카드 집 스루 블루종<br>₩1,900,000
					</a>
				</div>
				<div class="product" id=product_02>
					<a href="#"> <img class="product-images" src="./images/outer/모노그램 재킷 3,290,000.jpg">모노그램 재킷<br>₩3,290,000
					</a>
				</div>
				<div class="product" id=product_03>
					<a href="#"> <img class="product-images" src="./images/outer/더블 브레스티드 재킷 4,550,000.jpg">더블 브레스티드 재킷<br>₩4,550,000
					</a>
				</div>
				<div class="product" id=product_04>
					<a href="#"> <img class="product-images" src="./images/outer/엑스트라 라지 재킷 5,050,000.jpg">엑스트라 라지 재킷<br>₩5,050,000
					</a>
				</div>
				<div class="product" id=product_05>
					<a href="#"> <img class="product-images" src="./images/outer/퀼티드 다미에 블루종 4,010,000.jpg">퀼티드 다미에 블루종<br>₩4,010,000
					</a>
				</div>
			</div>
			<div class="product-area">
				<div class="product" id=product_06>
					<a href="#"> <img class="product-images" src="./images/top/NBA 멀티 로고 티셔츠 1,380,000.jpg">NBA 멀티 로고 티셔츠<br>₩1,380,000
					</a>
				</div>
				<div class="product" id=product_07>
					<a href="#"> <img class="product-images" src="./images/top/마블 셔츠 1,730,000.jpg">마블 셔츠<br>₩1,730,000
					</a>
				</div>
				<div class="product" id=product_08>
					<a href="#"> <img class="product-images" src="./images/top/솔트 프린트 티셔츠 850,000.jpg">솔트 프린트 티셔츠<br>₩850,000
					</a>
				</div>
				<div class="product" id=product_09>
					<a href="#"> <img class="product-images" src="./images/top/엔드 골 티 890,000.jpg">엔드 골 티<br>₩890,000
					</a>
				</div>
				<div class="product" id=product_10>
					<a href="#"> <img class="product-images" src="./images/top/워터컬러 모노그램 폴로 1,020,000.jpg">워터컬러 모노그램 폴로<br>₩1,020,000
					</a>
				</div>
			</div>
			<div class="product-area">
				<div class="product" id=product_11>
					<a href="#"> <img class="product-images" src="./images/pants/이브닝 팬츠 1,310,000.jpg">이브닝 팬츠<br>₩1,310,000
					</a>
				</div>
				<div class="product" id=product_12>
					<a href="#"> <img class="product-images" src="./images/pants/파자마 팬츠 1,370,000.jpg">파자마 팬츠<br>₩1,370,000
					</a>
				</div>
				<div class="product" id=product_13>
					<a href="#"> <img class="product-images" src="./images/pants/플레어 팬츠 1,470,000.jpg">플레어 팬츠<br>₩1,470,000
					</a>
				</div>
				<div class="product" id=product_14>
					<a href="#"> <img class="product-images" src="./images/pants/트래버틴 클래식 팬츠 1,380,000.jpg">트래버틴 클래식 팬츠<br>₩1,380,000
					</a>
				</div>
				<div class="product" id=product_15>
					<a href="#"> <img class="product-images" src="./images/pants/다미에 시가렛 팬츠 1,550,000.jpg">다미에 시가렛 팬츠<br>₩1,550,000
					</a>
				</div>
			</div>
			<div class="product-bottom-area">
				<img src="./images/5.jpg">
			</div>
		</main>
		
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
