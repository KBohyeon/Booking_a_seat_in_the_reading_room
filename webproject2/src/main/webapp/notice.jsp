<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<title>notice</title>
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
				<img src="img5.jpg" width="100%" height="100%" alt"...">
		    </div>
		    
		    <div id = "senter_box2">
				<div class="card" style="width: 100%;  height:100%; background-color:Gainsboro; align-items: center">
  					<div class="card-body">
    					<h1 class="card-title">열람실 금지사항</h1>
						    <pre class="card-text" align="left">1  열람실내 휴대전화 통화, 전자기기 사용에 따른 소음, 잠담,
   혼잣말 등
2  음료 및 기타 음식물을 반입하거나 섭취하는 행위
3  지정된 장소 이외의 장소에서 담배를 피우는 행위
4  음주, 소란, 악취 및 고성 등으로 이용 분위기 저해하는 행위
5  과도한 출입의 반복이나 주변을 배회하는 행위
6  타인(가족 포함)의 아이디(ID)를 양도 및 도용하는 행위
7  타인에 대한 불필요한 신체접촉, 스토킹, 지속적인 응시,
   부적절한 촬영 등으로 불안감 및 불쾌감 조성하는 행위
8  절도, 폭력, 기물파괴, 흉기난동 또는 공무집행 방해 등 
   법령(형법 등) 위반행위
9  기타 공중도덕 위반행위
							</pre>
  					</div>
				</div>
		    </div>
		    
		    <div id = "senter_box3">
				<div class="card" style="width: 100%;  height:100%; background-color:Gainsboro; align-items: center">
					<div class="card-body">
						<p> </p>
						<p> </p>
						<p> </p>
					    <h1 align="right" class="card-title">Reading Room Prohibition</h1>
						    <pre class="card-text" align="left">1  Mobile phone calls in the reading room, noise caused by
   the use of electronic devices, silence, talking to oneself, etc
2  Bringing in or consuming beverages and other food
3  Smoking in places other than designated places
4  Acts that hinder the atmosphere of use by drinking,
   disturbance, odor, loudness, etc
5  Repeated excessive access or wandering around
6  Transferring and stealing the ID of another person
   (including family)
7  Unnecessary physical contact with others, stalking,
   constant gaze, An act of creating anxiety and discomfort
   through inappropriate filming, etc
8  Theft, violence, destruction of property, armed disorder,
   obstruction of the execution of official duties, etc
   an act of violating laws (criminal law, etc.)
9  Other Public Moral Violations
							</pre>
					</div>
				</div>
		    </div>
		    
		    <div id = "senter_box4">
				<img src="img4.jpg" width="100%" height="100%" alt"...">
		    </div>	       	        	    
	    </div>
    
</body>
</html>