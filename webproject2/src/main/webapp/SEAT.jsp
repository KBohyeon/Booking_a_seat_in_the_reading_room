<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.sql.*"%>
    
    <%
int login_ok;

//Session을 받을때는 값이 null로 올때를 생각해 조건문 사용 login_ok가 0이면 로그인X 0이 아니면 로그인 된 상태
if (session.getAttribute("login_ok") != null) {
  //세션의 값을 가져오기
  login_ok = (int)session.getAttribute("login_ok");
} else {
	login_ok = 0;
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>

        .header {
            background-color: #f8f9fa;
            padding: 20px;
            margin-bottom: 30px;
            display: flex;
            justify-content: center;
        }
   
        .header-button { 
            margin-right: 40px;   /* 글자 간격 */
            background-color: transparent;
            border-color: transparent;
            color: black;
            font-size: 18px;
            transition: transform 0.2s;
        }

        .header-button:hover {
            font-size: 20px;
            transform: scale(1.1);
            background-color: transparent;
            border-color: transparent;
            color: black;
        }
        
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            padding: 12px 16px;
            z-index: 1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
        
        .body {
    		height: 100vh;
    		background: url(ll.jpg) no-repeat center;
    		background-size: cover;
		}
		
		div#side_left{
			width:1903px;
			height:1000px;
			background-image:url('bg.png');
			float:left;
		}
		
		#side_left_box1{
			width:30%;
			height:43%;
			background-color:;
			float:left;
			margin:42px;   
			margin-top:13%;  
		}
		
		#side_left_box2{
			width:30%;
			height:43%;
			background-color:;
			float:left;
			margin:26px;   
			margin-top:13%;  
		}
		
		#side_left_box3{
			width:30%;
			height:43%;
			background-color:;
			float:left;
			margin:26px;   
			margin-top:13%;  
		}
		
		div#senter{
			width:1903px;
			height:1000px;
			background-color:Gainsboro;
			float:left;
		}
		
		#senter_box1{
			width:50%;
			height:50%;
			background-color:red;
			float:left;
		}
		
		#senter_box2{
			width:50%;
			height:50%;
			background-color:Gainsboro;
			float:left;
		}
		
		#senter_box3{
			width:50%;
			height:50%;
			background-color:Gainsboro;
			float:left;
		}
		
		#senter_box4{
			width:50%;
			height:50%;
			background-color:gary;
			float:left;
		}
		
		
		
    </style>
</head>
<body>
    <div class="header">
    <button class="header-button btn btn-primary"><img src="logo2.png" width="90px" height="70px" alt="" onClick="location.href='NewFile.jsp'"></button>
        <div class="d-flex justify-content-center">
         	<button class="header-button btn btn-primary"onClick="location.href='info.jsp'">About지은열람</button>
            <button class="header-button btn btn-primary"onClick="location.href='reading_room.jsp'">열람실예약</button>
            <button class="header-button btn btn-primary"onClick="location.href='notice.jsp'">공지사항</button>
            <button class="header-button btn btn-primary"onClick="location.href='map.jsp'">열람실안내</button>
            <button class="header-button btn btn-primary"onClick="location.href='qna.jsp'">열람실문의</button>
        </div>
         <%if (login_ok == 0) {%>
                <div class="dropdown">
                <button class="header-button btn btn-primary">회원란▽</button>
                <div class="dropdown-content">
                    <a href="login.jsp">로그인</a></p>
                    <a href="newmember.jsp">회원가입</a></p>
                </div>
            </div>
            
           <%} else if (login_ok > 0) {%>
           <%
         String name = (String) session.getAttribute("userID");
         session.setMaxInactiveInterval(5 * 60);
         %>
           
                <div class="dropdown">
                <button class="header-button btn btn-primary"><%=name%>님</button>
                <div class="dropdown-content">
                    <a href="logout.jsp">로그아웃</a></p>              
                </div>
            </div>
             <%};%>
    </div>
	<style>
        .blue-cell {
            background-color: blue;
        }
        table {
            border-collapse: collapse;
        }

        td {
            border: 1px solid black;
            width: 50px;
            height: 50px;
            text-align: center;
            cursor: pointer;
        }
        .container {
            display: flex;
            justify-content: flex-start;
        }
        .table-container {
            display: flex;
            flex-wrap: wrap;
        }

        .table-container table {
            margin: 10px;
        }

        .box {
            width: 10px;
            height: 10px;
            border: 1px solid black;
            margin-right: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .white {
            background-color: white;
        }

        .red {
            background-color: red;
        }

        .blue {
            background-color: blue;
        }
        .green{
        	background-color: green;
        }
    </style>
    <script>
        var currentCell = null;

        function changeColor(cell, tableNumber) {
            if (currentCell) {
                currentCell.className = "";
            }

            if (currentCell == cell) {
                currentCell = null;
            } else {
                cell.className = "blue-cell";
                currentCell = cell;
            }

            document.getElementById("selectedTableNumber").value = tableNumber;
        }
        function displayTableNumber() {
            var selectedTableNumber = document.getElementById("selectedTableNumber").value;
            
            if (selectedTableNumber == "") {
                alert("좌석을 선택해주세요!");
            } else {
                 alert(selectedTableNumber + "번 좌석에 입실합니다.");
               
            }
        }
        
        function displayUseTableNumber() {
            var useTableNumber = document.getElementById("useTable").value;
            alert(useTableNumber + "번 좌석에서 퇴실합니다.");
        }
    </script>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
<h1>좌석관리 시스템</h1>
<%
	String stID = (String)session.getAttribute("userID");
	
	int[] use = new int[32];
	
	boolean useSeat = false;
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	int allSeat = 0;
	int remainSeat = 0;
	
	String db_sID = "", db_used = "", db_stID = "";//db컬럼
	
	try{
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webprojectdb", "root", "1234");
		stmt = con.createStatement();
		rs = stmt.executeQuery("select * from seat order by sID asc");
		if(rs != null){
			int i = 0;
			while(rs.next()){
				db_sID = rs.getString("sID");
				db_used = rs.getString("used");
				db_stID = rs.getString("stID");
				if(db_used.equals("o") && db_stID.equals(stID)){
					useSeat = true;
					use[i] = 1;
				}
				else if(db_used.equals("o")){
					use[i] = 2;
				}
				else{
					remainSeat++;
				}
				i++;
				allSeat++;
			}
		} %>
전체 좌석 : <%=allSeat%> 남은 좌석 : <%=remainSeat%><p>
<div class="container">
	빈 좌석<div class= "box white"></div>
	이용중인 좌석<div class= "box red"></div>
	내 좌석<div class= "box green"></div>
	선택 좌석<div class=" box blue"></div>
</div><p>
	<% 	if(useSeat == false){ 
			if(login_ok != 0){%>
			<form action="useSeat.jsp" method="post">
    			<div class="table-container">
    				<% for(int i = 0; i < 4; i++){ %>
    					<table>
    						<% for(int j = 0; j < 4; j++){ %>
    							<tr>
    								<%for(int k = 0; k < 2; k++){ %>
    									<% if(use[(i*8)+(2*j)+k] == 2){ %>
                								<td bgcolor = #FE2E2E><%= (i*8)+(2*j)+k+1 %></td>
                						<%	}else{ %>
                								<td onclick="changeColor(this, <%= (i*8)+(2*j)+k+1 %>);"><%= (i*8)+(2*j)+k+1 %></td>
                						<%	} %>
                					<%} %>
                				</tr>
                			<% } %>
    					</table>
    				<% } %>
    			</div>    			
    			<p>
       			<input type="hidden" id="selectedTableNumber" name="selectedTableNumber" value="">
        		<input type="submit" value="입실" onclick="displayTableNumber()">
			</form>
<% 		
				}else{
					%>
					<script>alert("로그인 후 이용바랍니다.");
					window.location = 'login.jsp';
					</script>
					
					<%
				}
			}else{ %>
			<form action="cancelSeat.jsp" method="post">
				<div class="table-container">
    				<% int useTable = 0; %>
    				<% for(int i = 0; i < 4; i++){ %>
    					<table>
    						<% for(int j = 0; j < 4; j++){ %>
    							<tr>
    								<%for(int k = 0; k < 2; k++){ %>
    									<% if(use[(i*8)+(2*j)+k] == 2){ %>
                								<td bgcolor = #FE2E2E><%= (i*8)+(2*j)+k+1 %></td>
                						<%	}else if(use[(i*8)+(2*j)+k] == 1){ %>
                								<td bgcolor = #31B404><%= (i*8)+(2*j)+k +1%></td>
                								<%useTable = (i*8)+(2*j)+k+1;%>
                						<%	}else{ %>
                								<td><%=(i*8)+(2*j)+k+1 %></td>
                						<%	} %>
                					<%} %>
                				</tr>
                			<% } %>
    					</table>
    				<% } %>
    			</div>   			
				<p>
				<input type="hidden" name="useTable" id="useTable" value="<%=useTable%>">
				<input type="hidden" name="useTable" value="<%=useTable%>">
				<input type="submit" value="퇴실" onclick="displayUseTableNumber()">	
			</form>
<%		}
	} catch( SQLException sqlException ) {
		System.out.println("sql exception");
	} catch( Exception exception ) {
		System.out.println("exception" + exception.toString());
	} finally {
		if( rs != null )
			try { rs.close(); }
			catch( SQLException ex ) {}
		if( stmt != null )
			try { stmt.close(); }
			catch( SQLException ex ) {}
		if( con != null )
			try { con.close(); }
			catch( Exception ex ) {}
	} 
%>


</body>
</html>