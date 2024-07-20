<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>

<%
String mID = request.getParameter("id");
String password = request.getParameter("pwd");
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String age = request.getParameter("age");
String job = request.getParameter("job");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = null;
PreparedStatement pstmt = null;
String sql;

try {
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webprojectdb", "root", "1234");
	sql = "INSERT INTO membert (memberId, password, name, phone, age, job)";
	sql = sql + "VALUES (?, ?, ?, ?, ?, ?)";

	pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, mID);
	pstmt.setString(2, password);
	pstmt.setString(3, name);
	pstmt.setString(4, phone);
	pstmt.setString(5, age);
	pstmt.setString(6, job);

	pstmt.executeUpdate();
	response.sendRedirect("NewFile.jsp");
} catch (SQLException sqlExceprtion) {
	System.out.println("sql exception");
} catch (Exception exception) {
	System.out.println("exception");
}
%>
