<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<h1 align="center">회원가입</h1><br>

		<form action="Sign_insertPro.jsp" method="post">
		<div class="container">
			<div class="form-group">
				  <label for="id">이름</label>
				  <input type="text" class="form-control" id="name" name="name">
			</div>
			
			
			<label>성별</label>
			<div class="form-check">
				  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="gender" value="남" checked>남
				  </label>
			</div>
			<div class="form-check">
				  <label class="form-check-label">
 					    <input type="radio" class="form-check-input" name="gender" value="여">여
				  </label>
			</div><br>
			
			
			<div class="form-group">
				  <label for="id">아이디</label>
				  <input type="text" class="form-control" id="id" name="id">
			</div>
			
			
			<div class="form-group">
				  <label for="pwd">비밀번호</label>
				  <input type="password" class="form-control" id="pwd" name="pwd">
			</div>				
			
			
			<div class="form-group">
				  <label for="email">이메일</label>
				  <input type="email" class="form-control" id="email" name="email">
			</div>		


			<div class="form-group">
				  <label>거주지역</label>
				  <select class="form-control" name="area" size="1">
					    <option>서울</option>
					    <option>부산</option>
					    <option>인천</option>
					    <option>경기</option>
					    <option>기타</option>
				  </select>
			</div><br>
			
			<div class="form-group">
				<label>가입계기 (*복수선택 가능)</label>
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="checkbox" class="form-check-input" name="signUp" value="웹검색">웹검색
				  </label>
				</div>
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="checkbox" class="form-check-input" name="signUp" value="지인소개">지인소개
				  </label>
				</div>
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="checkbox" class="form-check-input" name="signUp" value="문자수신">문자수신
				  </label>
				</div>
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="checkbox" class="form-check-input" name="signUp" value="SNS">SNS
				  </label>
				</div>
			</div>
			
			<div class="form-group">
				<input type="submit" value="다음">
<!-- 				<button type="button" onclick="location.href='list.jsp'">다음</button> -->
			</div>
		</div>
</form>


</body>
</html>