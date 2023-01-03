<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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






	<div style="padding-left: 125px;">
		<p style="font-size: 20px;">
			<b>리뷰쓰기</b>
		</p>
		<br>
	</div>





	<div style="padding-left: 95px;">
		<p style="font-size: 15px;">
			<b>상품은 만족하셨나요?</b>
		</p>
	</div>


	<div style="padding-left: 35px;">
		<form name="myform" id="myform" method="post" action="./save">
			<fieldset>
				<input type="radio" name="rating" value="5" id="rate1"><label
					for="rate1">⭐</label> <input type="radio" name="rating" value="4"
					id="rate2"><label for="rate2">⭐</label> <input type="radio"
					name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
				<input type="radio" name="rating" value="2" id="rate4"><label
					for="rate4">⭐</label> <input type="radio" name="rating" value="1"
					id="rate5"><label for="rate5">⭐</label>
			</fieldset>
		</form>

		<style>
#myform fieldset {
	display: inline-block;
	/* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
	direction: rtl;
	/* 이모지 순서 반전 */
	border: 0;
	/* 필드셋 테두리 제거 */
}

#myform fieldset legend {
	text-align: left;
}

#myform input[type=radio] {
	display: none;
	/* 라디오박스 감춤 */
}

#myform label {
	font-size: 2em;
	/* 이모지 크기 */
	color: transparent;
	/* 기존 이모지 컬러 제거 */
	text-shadow: 0 0 0 #f0f0f0;
	/* 새 이모지 색상 부여 */
}

#myform label:hover {
	text-shadow: 0 0 0 #a00;
	/* 마우스 호버 */
}

#myform label:hover ~label {
	text-shadow: 0 0 0 #a00;
	/* 마우스 호버 뒤에오는 이모지들 */
}

#myform input[type=radio]:checked ~label {
	text-shadow: 0 0 0 #a00;
	/* 마우스 클릭 체크 */
}
</style>
	</div>

	<br>

	<div style="padding-left: 90px;">
		<p style="font-size: 15px;">
			<b>상품평을 작성해주세요.</b>
		</p>
	</div>



	<div style="padding-left: 30px;">
		<textarea rows="7" cols="35" class="DOC_TEXT" name="DOC_TEXT"
			placeholder="최소한 10자 이상 입력해주세요.">
</textarea>
		<br /> <span class="picture"> <input type="button" value="사진">&nbsp;&nbsp;
		</span> <span class="film"> <input type="button" value="동영상">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span> <span style="color: #aaa; font-size: 12px;" id="counter">(0 /
			최대 200자)</span>

	</div>





	<script>
		//서류사항 textarea 체크
		$('.DOC_TEXT').keyup(function(e) {
			var content = $(this).val();
			$('#counter').html("(" + content.length + " / 최대 200자)"); //글자수 실시간 카운팅

			if (content.length > 200) {
				alert("최대 200자까지 입력 가능합니다.");
				$(this).val(content.substring(0, 200));
				$('#counter').html("(200 / 최대 200자)");
			}
		});
	</script>










	<br>
	<br>

	<div>
		<span class="wi_b"> <input type="button" value="등록">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span> <span class="wi_b2">
			<button type="button" onclick="window.close()">취소</button>
		</span>
	</div>




</body>

</html>
