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

<body style="overflow: hidden;">

	<p style="font-size: 20px; padding-left: 50px;">
		<b>배송지 수정</b>
	</p>
	<table class="ad_table">
		<tbody>
			<tr>
				<th>수령인</th>
				<td><input type="text" class="inquiry_input" value="조승달"></td>
			</tr>
			<tr>
				<th>배송지명(선택)</th>
				<td><input type="text" class="ad_input" value="집"></td>
			</tr>
			<tr>
				<th>휴대전화</th>
				<td><input type="text" class="ad_input" value="01012345678"></td>
			</tr>
			<tr>
				<th>배송지 주소</th>
				<td><input type="text" class="ad_input"></td>
			</tr>
			<tr>
				<th></th>
				<td style="padding-top: 0px;"><input type="text"
					class="ad_input"></td>
			</tr>
		</tbody>
	</table>
	<br>
	<br>

	<span class="ad_b"> <input type="button" value="수정완료">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</span>
	<span class="ad_b2">
		<button type="button" onclick="window.close()">취소</button>
	</span>

</body>

</html>

