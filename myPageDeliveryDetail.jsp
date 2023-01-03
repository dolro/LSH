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
		<div class="parent"
			style="flex: 1; background: white; display: flex; position: relative;">



			<!--마이페이지-->
			<div class="my_page_left">
				<br>
				<br>
				<br>
				<br>
				<p style="font-size: 25px;">
					<b>마이페이지</b>
				</p>
				<br>
				<br>
				<br>
				<br>
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


				<!--배송조회 타이틀-->
				<div class="text">
					<h3 class="ProductOverview"
						style="font-size: 2rem; color: #222222; font-family: 'Rajdhani', sans-serif;">
						<br> <br> 배송조회 <br> <br>
					</h3>
				</div>





				<div class="cart" style="text-align: left;">


					<!--주문자정보-->
					<style>
table {
	width: 100%;
	border-top: 1px solid #222222;
	border-collapse: collapse;
}

.table_boldline {
	border-bottom: 2px solid #222222;
	border-top: 2px solid #222222;
}

th, td {
	border-bottom: 0.0px solid #222222;
	padding: 10px;
	padding-left: 30px;
}

.talbe_row {
	background-color: #E0E0E0;
}
</style>
					<h2
						style="padding-left: 2rem; padding-bottom: 0.5rem; font-size: 1rem;">
						<strong>주문자 정보</strong>
					</h2>


					<table class="table_boldline" style="width: 100%;">
						<colgroup>
							<col style="width: 20%;" />
							<col style="width: 40%" />
							<col style="width: 40%" />
						</colgroup>
						<tr>
							<td class="talbe_row">주문번호</td>
							<td><u><a href="product-detail.html">2111032161</a></u></td>
							<td>
								<div style="text-align: center;">
									<button type="button" class="btn btn-primary" id="btn-delete"
										style="width: 8rem; margin: 2px;"
										onclick="location.href='myPageOrderDetail.jsp'">주문상세확인</button>
									<br>
								</div>
							</td>
						</tr>
					</table>

					<br> <br> <br>


					<!--배송지정보-->
					<h2
						style="padding-left: 2rem; padding-bottom: 0.5rem; font-size: 1rem;">
						<strong>배송지 정보</strong>
					</h2>

					<table class="table_boldline" style="width: 100%;">
						<colgroup>
							<col style="width: 20%;" />
							<col style="width: 80%" />
						</colgroup>
						<tr>
							<td class="talbe_row">송장번호</td>
							<td><u><a href="#">2111032161</a></u></td>
						</tr>
						<tr>
							<td class="talbe_row">배송업체</td>
							<td><u><a href="#">쿠팡택배</a></u></td>
						</tr>
					</table>

					<br> <br> <br>


					<!--배송조회-->

					<h2
						style="padding-left: 2rem; padding-bottom: 0.5rem; font-size: 1rem;">
						<strong>배송조회</strong>
					</h2>
					<table class="table_boldline" style="width: 100%;">
						<colgroup>
							<col style="width: 20%;" />
							<col style="width: 40%" />
							<col style="width: 40%" />
						</colgroup>
						<tr class="talbe_row" style="text-align: center;">
							<td>배송</td>
							<td>위치</td>
							<td>상황</td>
						</tr>
						<tr>
							<td>결제방법</td>
							<td>파주</td>
							<td>배송완료</td>
						</tr>
						<tr>
							<td>결제방법</td>
							<td>파주</td>
							<td>배달기사</td>
						</tr>
						<tr>
							<td>결제방법</td>
							<td>고양</td>
							<td>집하장</td>
						</tr>
						<tr>
							<td>결제방법</td>
							<td>고양</td>
							<td>물류센터도착</td>
						</tr>
						<tr>
							<td>결제방법</td>
							<td>하남</td>
							<td>물류센터출발</td>
						</tr>
					</table>



					<br> <br> <br>

				</div>


				<div style="background-color: white; height: 150px">
					<!--바닥여백-->
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


	<script>
    $(document).ready(function() {

      // check box 눌렀을 경우 정보 담아주는 변수
      var cart = {
        buyList: [],
        init: function() {
          //buyList 초기화
          this.buyList = [];
        },
        getBuyList: function(obj) {
          return this.buyList;
        },
        getFindIndex: function(cd) {
          //배열 중복 검색
          var fIdx = -1;
          this.buyList.forEach(function(item, idx, ary) {
            if (item.code == cd) {
              fIdx = idx;
            }
          });
          return fIdx;
        },
        addBuyList: function(obj) {
          var fIdx = this.getFindIndex(obj.code);
          if (fIdx == -1) {
            this.buyList.push(obj);
          } else {
            this.buyList[fIdx] = obj;
          }
          this.render();
        },
        deleteBuyList: function(cd) {
          this.buyList.splice(this.getFindIndex(cd), 1);
          this.render();
        },
        getTotalPay: function() {
          //총 결제금액 계산
          var totalQty = 0;
          var totalPrice = 0;

          this.buyList.forEach(function(item, idx, ary) {
            totalQty += Number(item.qty);
            totalPrice += Number(item.price) * Number(item.qty);
          });
          return {
            totalQty: totalQty,
            totalPrice: totalPrice
          };
        },
        render: function() {
          // 주문 table 그리기
          var order = $('#tbl-order tbody');
          if (this.buyList.length > 0) {
            var html = [];
            this.buyList.forEach(function(item, idx, ary) {
              html.push([
                '<tr data-cd="', item.cd, '">',
                '<td>', item.title, '</td>',
                '<td>', item.price, '</td>',
                '<td>', item.qty, '</td>',
                '<td>', Number(item.price) * Number(item.qty), '</td>',
                '</tr>'
              ].join(''));
            });
            order.html(html);

            // 총 결제금액&수량 table 그리기
            var total = this.getTotalPay();
            $('#total-qty').val(total.totalQty);
            $('#total-amt').val(total.totalPrice);
            $('#tbl-order').show();

          } else {
            // 주문내역 table 숨기기
            $('#tbl-order').hide();

            // 주문내역 지우기
            order.empty();

            // 총 결제정보 지우기
            $('#total-qty').val(0);
            $('#total-amt').val(0);
          }
        }
      };

      // 수량 클릭 시
      $('.edt-qty').on('change', function() {
        var tr = $(this).closest('tr');
        var code = tr.children('td:eq(1)').text();
        var title = tr.children('td:eq(2)').text();
        var price = Number(tr.children('td:eq(3)').text());
        var qty = Number(tr.children('td:eq(4)').find('input').val());

        // 수량이 0 초과하는 경우 buyList에 추가
        // 수량이 0 이하인 경우 buyList에서 삭제
        if (qty > 0) {
          var obj = {
            code: code,
            title: title,
            price: price,
            qty: qty
          }
          cart.addBuyList(obj);
        } else {
          cart.deleteBuyList(code);
        }
        console.log(cart.getBuyList());
      });

      // 삭제 버튼 클릭 시
      $('#btn-delete').on('click', function() {

        var chkList = $('input[name="fruit"]:checked');
        var cd;

        // chcekd 된 product row 삭제
        // order row 삭제
        for (var i = chkList.length - 1; i > -1; i--) {
          cd = chkList.eq(i).closest('tr').find('td:eq(1)').text();
          chkList.eq(i).closest('tr').remove();
          cart.deleteBuyList(cd);
        }
      });

    }); //end document ready

    $.fn.serializeObject = function() {
      "use strict";

      var result = {};
      var extend = function(i, element) {
        var node = result[element.name];

        if ('undefined' !== typeof node && node !== null) {
          if ($.isArray(node)) {
            node.push(element.value);
          } else {
            result[element.name] = [node, element.value];
          }
        } else {
          result[element.name] = element.value;
        }
      };

      $.each(this.serializeArray(), extend);
      return result;
    };
  </script>
</body>



</html>