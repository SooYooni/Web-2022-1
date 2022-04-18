<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
    
<%
	// 한글 처리
	request.setCharacterEncoding("utf-8");

	//웹 브라우저에서 전달된 정보
	String id = request.getParameter("id");

	
	// 1. 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	
	// 2. 커넥션 연결
	String url = "jdbc:mariadb://localhost:3333/sooyoondb";
	String user = "sooyoon";
	String passwd = "1111";
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	// 3. SQL문 준비
	String sql = "DELETE FROM board WHERE ID=?";
	
	// 5. SQL 실행
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	
	int i = pstmt.executeUpdate();
	
	// 6. 객체 해제
	pstmt.close();
	con.close();
	
	
	response.sendRedirect("Board_list.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>