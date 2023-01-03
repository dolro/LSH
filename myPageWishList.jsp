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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/team.css">
<script src="js/main.js?ver=123"></script>
<script src="js/jquery-3.6.0.min.js"></script>
<style>
table {
	width: 100%;
	border-top: 1px solid #222222;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid #222222;
	padding: 10px;
}

.table_boldline {
	border-bottom: 2px solid #222222;
	border-top: 2px solid #222222;
}

.table_boldline2 {
	border-bottom: 2px solid #222222;
}
</style>
</head>
<body>
	<!--헤더영역-->
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
	<!--___________________여기서부터________________________________-->
	<div class="wrapper wrapper2">
		<div class="parent" style="flex: 1; background: white; display: flex; position: relative;">
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
			<div class="child" style="width: 70%; text-align: center;">
				<!--WISH-->
				<div class="text">
					<h3 class="ProductOverview" style="font-size: 2rem; color: #222222; font-family: 'Rajdhani', sans-serif;">
						<br> <br> WISH <br> <br>
					</h3>
				</div>
				<!--WISH 테이블영역-->
				<div class="cart">
					<table class="table table-bordered" id="tbl-product">
						<colgroup>
							<col style="width: 5%;" />
							<col style="width: 20%" />
							<col style="width: 20%" />
							<col style="width: 10%" />
							<col style="width: 10%" />
							<col style="width: 10%" />
							<col style="width: 20%" />
						</colgroup>
						<tr class="table_boldline">
							<th>&nbsp;</th>
							<th>상품</th>
							<th>품목</th>
							<th>옵션</th>
							<th>수량</th>
							<th>가격</th>
							<th>선택</th>
						</tr>
						<tr>
							<td>
								<input type="checkbox" name="fruit">
							</td>
							<td>
								<div class="img">
									<img src="./images/pexels-photo-4890733.jpeg" style="width: 50%;">
							</td>
							</div>
							<td>top</td>
							<td>옵션</td>
							<td>
								<input type="number" class="edt-qty" value="1" min="0" style="width: 60%;">
							</td>
							<td>28,000</td>
							<td>
								<div style="text-align: center; margin: 10px;">
									<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px; background-color: #E0E0E0;" onclick="location.href='index_pay2.html' ">주문하기</button>
									<br>
									<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px;">장바구니담기</button>
									<br>
									<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px;">삭제</button>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<input type="checkbox" name="fruit">
							</td>
							<td>
								<div class="img">
									<img src="./images/pexels-photo-4890733.jpeg" style="width: 50%;">
							</td>
							</div>
							<td>pants</td>
							<td>옵션</td>
							<td>
								<input type="number" class="edt-qty" value="1" min="0" style="width: 60%;">
							</td>
							<td>28,000</td>
							<td>
								<div style="text-align: center; margin: 10px;">
									<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px; background-color: #E0E0E0;" onclick="location.href='index_pay2.html' ">주문하기</button>
									<br>
									<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px;">장바구니담기</button>
									<br>
									<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px;">삭제</button>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<input type="checkbox" name="fruit">
							</td>
							<td>
								<div class="img">
									<img src="./images/pexels-photo-4890733.jpeg" style="width: 50%;">
							</td>
							</div>
							<td>outer</td>
							<td>옵션</td>
							<td>
								<input type="number" class="edt-qty" value="1" min="0" style="width: 60%;">
							</td>
							<td>28,000</td>
							<td>
								<div style="text-align: center; margin: 10px;">
									<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px; background-color: #E0E0E0;" onclick="location.href='index_pay2.html' ">주문하기</button>
									<br>
									<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px;">장바구니담기</button>
									<br>
									<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px;">삭제</button>
								</div>
							</td>
						</tr>
					</table>
					<!--합계 테이블영역-->
					<table class="table table-bordered" id="tbl-total">
						<thead>
							<tr class="table_boldline2" style="text-align: right">
								<td>합계 :</td>
								<td>
									<input type="number" readonly="readonly" id="total-amt" value="0">
								</td>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
					<br>
					<!--선택상품삭제, 비우기, 장바구니담기-->
					<div style="text-align: center; margin-bottom: 20px;">
						<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px;">선택상품삭제</button>
						<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px;">비우기</button>
						<button type="button" class="btn btn-primary" id="btn-delete" style="width: 7rem; margin: 2px;">장바구니담기</button>
					</div>
				</div>
				<div style="background-color: white; height: 150px">
					<!--단락여백 -->
				</div>
			</div>
			<!--최근 본상품-->
			<div class="child" style="width: 15%;">
				<div class="gray_box" style="background-color: #E0E0E0; padding: 2rem; margin: 2rem; margin-top: 3rem;">
					<br> <br>
					<h1 style="font-size: 1rem;">
						<strong>최근 본 상품</strong>
					</h1>
					<br> <br>
					<div class="img">
						<img src="./images/pexels-photo-4890733.jpeg" style="width: 70%;">
					</div>
					<h3 style="font-size: 0.7rem;">상품1</h3>
					<br>
					<div class="img">
						<img src="./images/pexels-photo-4890733.jpeg" style="width: 70%;">
					</div>
					<h3 style="font-size: 0.7rem;">상품2</h3>
					<br>
					<div class="img">
						<img src="./images/pexels-photo-4890733.jpeg" style="width: 70%;">
					</div>
					<h3 style="font-size: 0.7rem;">상품3</h3>
					<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
				</div>
			</div>
			<div style="background-color: white; height: 150px">
				<!--바닥여백-->
			</div>
		</div>
		<!--___________________여기까지________________________________-->
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