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
					<span style="font-size: 25px;"><a href="customerCenterQuestion.jsp"><b>자주 묻는 질문</b></a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<span style="font-size: 20px;"><a href="customerCenter1To1.jsp">1:1 문의</a></span>
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
								<span class="cs_td5_1"> <a href="javascript:doDisplay5();" class="cs_td5_1_1"><b>Q.</b>&nbsp;회원 탈퇴를 취소하고 싶습니다.</a>
									<div id=dodis5 style="display: none;">
										<p>----------------------------------------------------------------------------------</p>
										<h4>안녕하세요. 고객님</h4>
										<p>취소는 불가능하며 탈퇴 후 7일 이후 재가입이 가능합니다.</p>
									</div>
								</span>
							</td>
							<td style="width: 200px;">2021.05.05</td>
						</tr>
						<tr>
							<td style="width: 100px;">4</td>
							<td class="cs_td4" style="text-align: left; padding-left: 100px;">
								<span class="cs_td4_1"> <a href="javascript:doDisplay4();" class="cs_td4_1_1"><b>Q.</b>&nbsp;주문한 상품과 다른 상품이 배송되었어요.</a>
									<div id=dodis4 style="display: none;">
										<p>----------------------------------------------------------------------------------</p>
										<h4>안녕하세요. 고객님</h4>
										<p>오배송이 된 경우, 고객센터 > 1:1문의에서 글을 남겨주시면 처리 해드리겠습니다.</p>
									</div>
								</span>
							</td>
							<td style="width: 200px;">2021.05.05</td>
						</tr>
						<tr>
							<td style="width: 100px;">3</td>
							<td class="cs_td3" style="text-align: left; padding-left: 100px;">
								<span class="cs_td3_1"> <a href="javascript:doDisplay3();" class="cs_td3_1_1"><b>Q.</b>&nbsp;해외에 거주하고 있습니다. 해외 배송이 가능한가요?</a>
									<div id=dodis3 style="display: none;">
										<p>----------------------------------------------------------------------------------</p>
										<h4>안녕하세요. 고객님</h4>
										<p>죄송합니다. 현재 해외 배송은 불가능합니다.</p>
									</div>
								</span>
							</td>
							<td style="width: 200px;">2021.05.05</td>
						</tr>
						<tr>
							<td style="width: 100px;">2</td>
							<td class="cs_td2" style="text-align: left; padding-left: 100px;">
								<span class="cs_td2_1"> <a href="javascript:doDisplay2();" class="cs_td2_1_1"><b>Q.</b>&nbsp;상품이 불량인 것을 착용하고나서 알았어요.</a>
									<div id=dodis2 style="display: none;">
										<p>----------------------------------------------------------------------------------</p>
										<h4>안녕하세요. 고객님</h4>
										<p>착용 후에는 원칙적으로 교환 및 환불이 불가능합니다.</p>
										<p>상품 수령 시, 상품의 불량 여부를 확인해 주시기 바랍니다.</p>
										<p>미 착용 상태에서 불량 확인 시, 무상으로 환불 및 교환 처리가 가능합니다.</p>
									</div>
								</span>
							</td>
							<td style="width: 200px;">2021.05.05</td>
						</tr>
						<tr>
							<td style="width: 100px;">1</td>
							<td class="cs_td1" style="text-align: left; padding-left: 100px;">
								<span class="cs_td1_1"> <a href="javascript:doDisplay();" class="cs_td1_1_1"><b>Q.</b>&nbsp;취소/반품했는데, 언제 환불되나요?</a>
									<div id=dodis style="display: none;">
										<p>----------------------------------------------------------------------------------</p>
										<h4>안녕하세요. 고객님</h4>
										<p>상품을 취소/반품할 경우, 환불은 판매자가 '취소/반품완료' 승인 후 처리됩니다.</p>
										<p>환불 소요기한은 평일 기준으로 토/일/공휴일은 제외되며 약 3~5영업일 입니다</p>
									</div>
								</span>
							</td>
							<td style="width: 200px;">2021.05.05</td>
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