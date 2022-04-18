<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
 <%
	String id = request.getParameter("id");
 %>
 
 
<%
	// 1. jdbc driver를 로드한다.
	Class.forName("org.mariadb.jdbc.Driver");
	
	
	// 2. db와의 연결(connection)을 생성한다.
	String url = "jdbc:mariadb://localhost:3333/sooyoondb";
	String user = "sooyoon";
	String pwd = "1111";
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	
	// 3. 연결 후 그 통로를 통해 sql문을 실행한다.
	String sql = "select * from login2 where id=?";
	PreparedStatement ptmt=con.prepareStatement(sql);
	ptmt.setString(1, id);
	
	// 4. SQL 실행
	ResultSet rs = ptmt.executeQuery();
	
	String name = "";
	String gender = "";
	String id2 = "";
	String pwd2 = "";
	String email = "";
	String area = "";
	String signUp = "";
	
	//5. 반환된 데이터 출력
		while(rs.next()){
			name = rs.getString("name");
			gender = rs.getString("gender");
			id2 = rs.getString("id");
			pwd2 = rs.getString("pwd");
			email = rs.getString("email");
			area = rs.getString("area");
			signUp = rs.getString("signUp");
		}
			
		// 6. 객체 해지
		rs.close();
		ptmt.close();
		con.close();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
</head>
<body>
<h2>개인정보 수정</h2>
	<form name="login2" action="Sign_updatePro.jsp" method="post">
	이름 : <input type="text" name="name" value=<%=name %>><br>
	성별 :<input type="radio" class="form-check-input" name="gender" value=<%=gender %> value="남" checked>남
			<input type="radio" class="form-check-input" name="gender" value=<%=gender %> value="여">여<br>
	
	
	아이디 : <input type="text" name="id" value=<%=id2 %>><br>
	비밀번호 : <input type="password" name="pwd" value=<%=pwd2 %>><br>
	이메일 : <input type="email" name="email" value<%=email %>><br>
	거주지역 : <select class="form-control" name="area" size="1"  value=<%=area %>>
					    <option>서울</option>
					    <option>부산</option>
					    <option>인천</option>
					    <option>경기</option>
					    <option>기타</option>
				  </select><br>
	가입계기 : 	<input type="checkbox" class="form-check-input" name="signUp" value=<%=signUp %> value="웹검색">웹검색
					<input type="checkbox" class="form-check-input" name="signUp" value=<%=signUp %> value="지인소개">지인소개
					<input type="checkbox" class="form-check-input" name="signUp" value=<%=signUp %> value="문자수신">문자수신
					<input type="checkbox" class="form-check-input" name="signUp" value=<%=signUp %> value="SNS">SNS<br><br>
	<input type="submit"  value="변경저장">
	<button type="button" onclick="location.href='Sign_list.jsp'">목록조회</button>
	<button type="button" onclick="location.href='delete.jsp?id=<%=name%>'">삭제</button>
	</form>
</body>
</html>