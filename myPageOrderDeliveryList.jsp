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
			<!--마이페이지-->
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
				<!--주문내역조회 타이틀-->
				<div class="text">
					<h3 class="ProductOverview" style="font-size: 2rem; color: #222222; font-family: 'Rajdhani', sans-serif;">
						<br> <br> 주문내역조회 <br> <br>
					</h3>
				</div>
				<!--라인-->
				<h4 class="line" style="font-size: 0.8rem; color: #222222; font-family: 'Rajdhani', sans-serif; border-top-style: solid; border-top-width: 0.5px; border-top-color: #222222; padding-top: 10px; text-align: right;">
					<div class="parent" style="flex: 1; background: white; display: flex; align-items: center; text-align: center; margin: 10px">
						<!--검색바-->
						<!--주문처리상태 드롭다운-->
						<div class="child" style="width: 30%;">
							<select style="margin-left: 0px;">
								<option value="1">전체주문처리상태</option>
								<option value="2">배송중</option>
								<option value="3">배송완료</option>
								<option value="4">취소내역</option>
								<option value="5">교환/반품내역</option>
							</select>
						</div>
						<!--오늘 1개월 3개월-->
						<div class="child" style="width: 30%;">
							<div style="text-align: center;">
								<button type="button" class="btn btn-primary" id="btn-delete" style="width: 48px; margin: 1px; padding: 0;">오늘</button>
								<button type="button" class="btn btn-primary" id="btn-delete" style="width: 48px; margin: 1px; padding: 0;">1개월</button>
								<button type="button" class="btn btn-primary" id="btn-delete" style="width: 48px; margin: 1px; padding: 0;">3개월</button>
							</div>
						</div>
						<!--날짜 검색-->
						<div class="child" style="width: 40%;">
							<form>
								<input type="date">
								<input type="date">
								<input type="submit" value="Submit">
							</form>
						</div>
					</div>
					<div>
						<!--라인-->
						<h4 class="line" style="font-size: 0.8rem; color: #222222; font-family: 'Rajdhani', sans-serif; border-top-style: solid; border-top-width: 0.5px; border-top-color: #222222; padding-top: 10px; text-align: right;">
							<br> <br> <br> <br>
							<div class="cart" style="text-align: center;">
								<!--주문내역1-->
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
	background-color: #E0E0E0;
}

.table_boldline2 {
	border-bottom: 2px solid #222222;
}
</style>
								<table class="table table-bordered">
									<colgroup>
										<col style="width: 15%;" />
										<col style="width: 15%" />
										<col style="width: 20%" />
										<col style="width: 10%" />
										<col style="width: 10%" />
										<col style="width: 5%" />
										<col style="width: 5%" />
										<col style="width: 15%" />
									</colgroup>
									<tr class="table_boldline">
										<th>주문일자</th>
										<th>상품</th>
										<th>상품정보</th>
										<th>수량</th>
										<th>가격</th>
										<th>배송조회</th>
										<th>리뷰</th>
										<th>결제금액</th>
									</tr>
									<tr>
										<td rowspan="3">
											2021-11-10 <br>(123456789)
										</td>
										<td>
											<div class="img">
												<img src="./images/pexels-photo-4890733.jpeg" style="width: 50%;">
										</td>
										</div>
										<td>
											top<br>옵션
										</td>
										<td>1</td>
										<td>28,000</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="location.href='myPageDeliveryDetail.jsp' ">배송조회</button>
												<br>
											</div>
										</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="showPopup3();">리뷰쓰기</button>
												<br>
											</div>
										</td>
										<td rowspan="3">84,000</td>
									</tr>
									<tr>
										<!--<td>1</td>-->
										<td>
											<div class="img">
												<img src="./images/pexels-photo-4890733.jpeg" style="width: 50%;">
										</td>
										</div>
										<td>
											pants<br>옵션
										</td>
										<td>1</td>
										<td>28,000</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="location.href='myPageDeliveryDetail.jsp' ">배송조회</button>
												<br>
											</div>
										</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="showPopup3();">리뷰쓰기</button>
												<br>
											</div>
										</td>
										<!--<td>1</td>-->
									</tr>
									<tr>
										<!--<td>1</td>-->
										<td>
											<div class="img">
												<img src="./images/pexels-photo-4890733.jpeg" style="width: 50%;">
										</td>
										</div>
										<td>
											outer<br>옵션
										</td>
										<td>1</td>
										<td>28,000</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="location.href='myPageDeliveryDetail.jsp' ">배송조회</button>
												<br>
											</div>
										</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="showPopup3();">리뷰쓰기</button>
												<br>
											</div>
										</td>
										<!--<td>1</td>-->
									</tr>
								</table>
								<br> <br> <br>
								<!--주문내역2-->
								<table class="table table-bordered">
									<colgroup>
										<col style="width: 15%;" />
										<col style="width: 15%" />
										<col style="width: 20%" />
										<col style="width: 10%" />
										<col style="width: 10%" />
										<col style="width: 5%" />
										<col style="width: 5%" />
										<col style="width: 15%" />
									</colgroup>
									<tr class="table_boldline">
										<th>주문일자</th>
										<th>상품</th>
										<th>상품정보</th>
										<th>수량</th>
										<th>가격</th>
										<th>배송조회</th>
										<th>리뷰</th>
										<th>결제금액</th>
									</tr>
									<tr>
										<td rowspan="3">
											2021-11-10 <br>(123456789)
										</td>
										<td>
											<div class="img">
												<img src="./images/pexels-photo-4890733.jpeg" style="width: 50%;">
										</td>
										</div>
										<td>
											top<br>옵션
										</td>
										<td>1</td>
										<td>28,000</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="location.href='myPageDeliveryDetail.jsp' ">배송조회</button>
												<br>
											</div>
										</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="showPopup3();">리뷰쓰기</button>
												<br>
											</div>
										</td>
										<td rowspan="3">84,000</td>
									</tr>
									<tr>
										<!--<td>1</td>-->
										<td>
											<div class="img">
												<img src="./images/pexels-photo-4890733.jpeg" style="width: 50%;">
										</td>
										</div>
										<td>
											pants<br>옵션
										</td>
										<td>1</td>
										<td>28,000</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="location.href='myPageDeliveryDetail.jsp' ">배송조회</button>
												<br>
											</div>
										</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="showPopup3();">리뷰쓰기</button>
												<br>
											</div>
										</td>
										<!--<td>1</td>-->
									</tr>
									<tr>
										<!--<td>1</td>-->
										<td>
											<div class="img">
												<img src="./images/pexels-photo-4890733.jpeg" style="width: 50%;">
										</td>
										</div>
										<td>
											outer<br>옵션
										</td>
										<td>1</td>
										<td>28,000</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px" onclick="location.href='myPageDeliveryDetail.jsp' ">배송조회</button>
												<br>
											</div>
										</td>
										<td>
											<div style="text-align: center; margin: 10px;">
												<button type="button" class="btn btn-primary" id="btn-delete" style="width: 5rem; margin: 2px;" onclick="showPopup3();">리뷰쓰기</button>
												<br>
											</div>
										</td>
										<!--<td>1</td>-->
									</tr>
								</table>
							</div>
							<div style="background-color: white; height: 150px">
								<!--단락여백-->
							</div>
					</div>
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