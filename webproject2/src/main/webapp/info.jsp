<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%
int login_ok;

//Session을 받을때는 값이 null로 올때를 생각해 조건문 사용 login_ok가 0이면 로그인X 0이 아니면 로그인 된 상태
if (session.getAttribute("login_ok") != null) {
  //세션의 값을 가져오기
  login_ok = (int)session.getAttribute("login_ok");
}else{
	login_ok = 0;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
         session.setMaxInactiveInterval(1 * 60);
         %>
           
                <div class="dropdown">
                <button class="header-button btn btn-primary"><%=name%>님</button>
                <div class="dropdown-content">
                    <a href="logout.jsp">로그아웃</a></p>              
                </div>
            </div>
             <%};%>
    </div>
    
		<div id = "senter">
			<div id = "senter_box1">
				<img src="book2.jpg" width="100%" height="100%" alt"...">
		    </div>
		    
		    <div id = "senter_box2">
				<div class="card" style="width: 100%;  height:100%; background-color:Gainsboro; align-items: center">
  					<div class="card-body">
    					<h1 class="card-title">BRANDSTORY</h1>
						    <pre class="card-text" align="left">'마음의양식을짓는공간'
지은은그런모든이들의
마음의양식을기르기위해지어졌습니다.
							</pre>
    						<a href="#"class="btn btn-outline-secondary btn-lg float-left"  >자세히보기</a>
  					</div>
				</div>
		    </div>
		    
		    <div id = "senter_box3">
				<div class="card" style="width: 100%;  height:100%; background-color:Gainsboro; align-items: center">
					<div class="card-body">
						<p> </p>
						<p> </p>
						<p> </p>
					    <h1 align="right" class="card-title">SERVICE</h1>
					    <h1 align="right">PERFECTSERVICE</h1>
						    <pre class="card-text" align="right">업계1위의모든교육컨텐츠를
무료로수강하실수있습니다.
학습과취업에필요한콘텐츠를제공하는
작심의특별한서비스를누리세요!
							</pre>
					    <a href="#" class="btn btn-outline-secondary btn-lg float-right">자세히보기</a>
					</div>
				</div>
		    </div>
		    
		    <div id = "senter_box4">
				<img src="book1.jpg" width="100%" height="100%" alt"...">
		    </div>	       	        	    
	    </div>
    
</body>
</html>