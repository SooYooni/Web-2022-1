<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String area = request.getParameter("area");
		String signUp = request.getParameter("signUp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>

<body>

		<h1>회원정보</h1>
	
		이름 : <%=name %><br>
		성별 : <%=gender %><br>
		아이디 : <%=id %><br>
		비밀번호 : <%=pwd %><br>
		이메일 : <%=email %><br>
		거주지역 : <%=area %><br>
		가입계기 : <%=signUp %><br>
		
</body>
</html>