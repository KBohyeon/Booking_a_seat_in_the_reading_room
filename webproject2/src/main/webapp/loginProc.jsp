<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="java.io.PrintWriter"%>
<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webprojectdb", "root", "1234");

		String id = request.getParameter("userID");
		String pwd = request.getParameter("userPassword");

		String SQL = "SELECT password, name FROM membert WHERE memberID = ?";
		int result = -2; // Initialize result to handle all cases

		pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			if (rs.getString(1).equals(pwd))
				result = 1;
			else
				result = 0;
		} else {
			result = -1;
		}

		if (result == 1) {
			session.setAttribute("userID", id);
			session.setAttribute("login_ok", 1);
			String redirectUrl = "NewFile.jsp";
			response.sendRedirect(redirectUrl);
		} else if (result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.');");
			script.println("history.back();");
			script.println("</script>");
		} else if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.');");
			script.println("history.back();");
			script.println("</script>");
		} else if (result == -2) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류가 발생했습니다.');");
			script.println("history.back();");
			script.println("</script>");
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (rs != null)
		rs.close();
			if (pstmt != null)
		pstmt.close();
			if (conn != null)
		conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	%>
</body>
</html>
