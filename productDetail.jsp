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
  <link rel="stylesheet" href="./css/main.css">
  <link rel="stylesheet" href="./css/team.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="./css/style.css">
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

  <br><br>
  
  <div style="background-color: white;; height:100%; width:100%; float:left;">
    <div style="display:flex">
      <!-- Section 1-1 ====================================================  -->
      <div class="" style="background-color:white; flex:0.3; margin-left:200px;">

        <div class="prod-main-img" style="background-color:white; margin-left:40px;">
          <!-- 1-1-1 -->
          <img src="${pVo.product_image}" alt="" style="width: 400px; height:300px ">
        </div>
		<br><br>

        <div class="prod-sm-img" style="background-color:white; flex:0.3; display:flex;">
          <!-- 1-1-2 -->
          <div class="row" style="background-color:white; display:flex">
            <div class="column" style="background-color:white; flex:0.3">
              <img src="${pVo.product_image}" alt="list-item 1" style="width: 150px; height:150px">
            </div>
            <div class="column" style="background-color:white; flex:0.3">
              <img src="${pVo.product_image}" alt="list-item 2" style="width: 150px; height:150px">
            </div>
            <div class="column" style="background-color:white; flex:0.3">
              <img src="${pVo.product_image}" alt="list-item 3" style="width: 150px; height:150px">
            </div>
          </div>
        </div>
      </div>

      <div class="" style="background-color:White; flex:0.7;">
        <!-- Section 1-2 -->

        <div class="" style="background-color:white; flex:0.5; display:flex">
          <!-- 1-2-1 -->
          <div class="title" style=" background-color:white; flex:0.5;">
            <h4>${pVo.product_name}</h4>
          </div>
        </div>
        <br>

        <div class="" style="background-color:white; flex:0.5; display:flex">
          <div class="" style="background-color:white; flex:0.5;">
            <!-- 1-2 -->
            <!-- 2개로 나누기 rename to RRODUCT_NUMBER-->
          </div>
          <div class="" style="background-color:white; flex:0.5;">
            <!-- 1-2-(2-2) -> PRODUCT_STAR_RAITING-->

          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star"></span>

          </div>
        </div>

        <div class="" style="background-color:white; flex:0.5;">
          <!-- 1-2-(3-1) PRODUCT_PRICE-->
            <h5> ₩<fmt:formatNumber value="${pVo.product_price}" pattern="#,###" /> </h5>
        </div>
        <div class="" style="background-color:white; flex:0.5;">
          <!-- 1-2-(3-3) PRODUCT_INFORMATION-->
            <h5>${pVo.product_information}  </h5>
        </div>

        <div class="color" style="background-color:white; flex:0.5; display:flex">
          <!-- 1-2-(4-1)  PRODUCT_COLOR -->

          <ul style="list-style:none;">
            <li style=""><label> Color</label>
              <div>
                <input list="color-list" type="text">
                <datalist id="color-list">
                  <option value="Red">
                  <option value="Green">
                  <option value="Blue">
                  <option value="Yellow">
                  <option value="White">
                  <option value="Black">
                  <option value="Purple">
                  <option value="Cyan">
                  <option value="Pink">
                  <option value="LightBlue">
                </datalist>
              </div>
            </li>
          </ul>
          <br>
          <div class="" style="background-color:white; flex:0.5;">
            <!-- 1-2-4  PRODUCT_SIZE-->
            <ul style="list-style:none;">
              <li style=""><label> Size</label>
                <div>
                  <input list="Size-list" type="text">
                  <datalist id="Size-list">
                    <option value="XXl">
                    <option value="Xl">
                    <option value="L">
                    <option value="M">
                    <option value="S">
                  </datalist>
                </div>
              </li>
            </ul>
          </div>
        </div>
        <br>

        <div class="" style="background-color:white; flex:0.5; display:flex">
          <!-- 1-2-5 -->
          <div class="" style="background-color:white; ">
            <form action="/action_page.php">
              <label for="quantity">Quantity:</label>
              <input type="number" id="quantity" name="quantity" min="1" max="10">
            </form>
          </div>

          <div class="" style="background-color:white; margin-left:20px; ">
            <button class="Shop cart" type="button">
              Shop cart
            </button>
          </div>
          <div class="" style="background-color:white; margin-left:20px; ">
            <button class="Order" type="button">
              바로 구매
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <br><br>



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

  <script type="text/javascript" src="./js/temp.js"></script>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>
