<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		String content = request.getParameter("content");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판내용</title>
</head>
<body>
		<h1>내용확인</h1>
		
		닉네임 : <%=name%><br>
		내용 : <%=content %><br>
		
</body>
</html>