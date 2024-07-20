<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>

<%
String inputId = request.getParameter("id");

// 중복 검사를 위한 DB 연결 및 쿼리 실행
String url = "jdbc:mysql://localhost:3306/webprojectdb";
String dbUsername = "root";
String dbPassword = "1234";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, dbUsername, dbPassword);

    String query = "SELECT COUNT(*) AS count FROM membert WHERE memberID = ?";
    pstmt = conn.prepareStatement(query);
    pstmt.setString(1, inputId);
    rs = pstmt.executeQuery();

    if (rs.next()) {
        int count = rs.getInt("count");
        if (count > 0) {
            %>
            <div class="container">
		<div class="row">
			<div class="col-lg-10 col-xl-9 mx-auto">
				<div class="card card-signin flex-row my-5">
					<div class="card-img-left d-none d-md-flex">
					</div>
					<div class="card-body">
						<h1 class="card-title text-center">중복되는 아이디입니다.</h1>
						</div>
					</div>
				</div>
			</div>
			</div>
            <%
        } else {
        	 %>
            <div class="container">
		<div class="row">
			<div class="col-lg-10 col-xl-9 mx-auto">
				<div class="card card-signin flex-row my-5">
					<div class="card-img-left d-none d-md-flex">
					</div>
					<div class="card-body">
						<h1 class="card-title text-center">사용 가능한 아이디입니다.</h1>
						</div>
					</div>
				</div>
			</div>
			</div>
            <%
        }
    } else {
        out.print("false");
    }
} catch (ClassNotFoundException e) {
    e.printStackTrace();
} catch (SQLException e) {
    e.printStackTrace();
} finally {
    if (rs != null) {
        try {
            rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	if (pstmt != null) {
		try {
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	if (conn != null) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}%>

</body>
</html>