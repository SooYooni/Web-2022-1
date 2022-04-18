<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
    
<%
	// 한글 처리
	request.setCharacterEncoding("utf-8");

	// 웹 브라우저에서 전달된 정보
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	String area = request.getParameter("area");
	String signUp = request.getParameter("signUp");
	
	// 1. 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	
	// 2. 커넥션 연결
	String url = "jdbc:mariadb://localhost:3333/sooyoondb";
	String user = "sooyoon";
	String passwd = "1111";
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	// 3. SQL문 준비
	//String sql = "insert into login(id, pwd) values('" + id + "','" + pwd + "')";
// 	String sql = "insert into login(id, name, pwd) values(?, ?, ?)";
	String sql = "insert into login2(name, gender, id, pw, email, area, signUp) values(?, ?, ?, ?, ?, ?, ?)";
	
	// 4. SQL문 실행
	//Statement stmt = con.createStatement();
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, gender);
	pstmt.setString(3, id);
	pstmt.setString(4, pw);
	pstmt.setString(5, email);
	pstmt.setString(6, area);
	pstmt.setString(7, signUp);
	
	//int i = stmt.executeUpdate(sql);
	int i = pstmt.executeUpdate();
	
	// 5. 객체 해제
	//stmt.close();
	pstmt.close();
	con.close();
	
	response.sendRedirect("Sign_list.jsp");
	
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