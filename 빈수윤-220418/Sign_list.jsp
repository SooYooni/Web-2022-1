<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
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
// 	String sql = "insert * from login2";
	String sql = "select * from login2";
	Statement stmt = con.createStatement();
	
	
	// 4. SQL 실행
	ResultSet rs = stmt.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>

<table class="table">
	<tr>
		<th>name</th>
		<th>gender</th>
		<th>id</th>
		<th>pw</th>
		<th>email</th>
		<th>area</th>
		<th>signUp</th>
	</tr>
	<tr>
	
<%
	//5. 반환된 데이터 출력
	while(rs.next()){
		String name = rs.getString("name");
		String gender = rs.getString("gender");
		String id = rs.getString("id");
		String pw = rs.getString("pw");
		String email = rs.getString("email");
		String area = rs.getString("area");
		String signUp = rs.getString("signUp");
%>

			<td><a href='Sign_updateForm.jsp?id=<%=name%>'><%=name %></a></td>
			<td><%=gender %></td>
			<td><%=id %></td>
			<td><%=pw %></td>
			<td><%=email %></td>
			<td><%=area %></td>
			<td><%=signUp %></td>
	</tr>
	<%	}%>	
</table>
<% 	
	// 6. 객체 해지
	rs.close();
	stmt.close();
	con.close();
%>
	
</body>
</html>