<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.sql.*"%>
<%
	String Table = request.getParameter("useTable");
	int useTable = Integer.parseInt(Table);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = null;
	PreparedStatement pstmt = null;
	
	String stID = (String)session.getAttribute("userID");
	String sql = "UPDATE seat SET used = 'x', stID = NULL WHERE sID = " + useTable;
	
	try {
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webprojectdb", "root", "1234");
		pstmt = con.prepareStatement(sql);
		pstmt.executeUpdate();
		response.sendRedirect("SEAT.jsp");
	}catch(SQLException e){
	    System.out.println(e);
	}catch(Exception e){
	    System.out.println(e);
	}
%>

</body>
</html>