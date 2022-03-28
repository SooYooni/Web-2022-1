<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	프로토콜 : <%=request.getProtocol() %>
	<%
		response.sendRedirect("4-6.html");
	%>
</body>
</html>