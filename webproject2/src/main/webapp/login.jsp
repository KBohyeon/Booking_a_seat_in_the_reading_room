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
<title>로그인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
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
    <button class="header-button btn btn-primary"><img src="logo2.png" width="90px" height="70px" alt=""onClick="location.href='NewFile.jsp'"></button>
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
                    <a href="#" onClick="location.href='login.jsp'">로그인</a></p>
                    <a href="#" onClick="location.href='newmember.jsp'">회원가입</a></p>
                </div>
            </div>
            
           <%} else if (login_ok > 0) {%>
                <div class="dropdown">
                <button class="header-button btn btn-primary">회원란▽</button>
                <div class="dropdown-content">
                    <a href="#" onClick = "location.href = 'logout.jsp'">로그아웃</a></p>              
                </div>
            </div>
             <%};%>
    </div>
</head>
<body>

<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">로그인</h5>
            <form method="post" action="loginProc.jsp">
              <div class="form-label-group">
                <input type="text" name="userID" class="form-control" placeholder="아이디"
                	required>
              </div><br>

              <div class="form-label-group">
                <input type="password" name="userPassword" class="form-control"
                	placeholder="비밀번호" required>
              </div>
              
              <hr>
              
              <div class="form-label-group">
              <c:if test="${check == 1 }">
                <label>${message }</label>
              </c:if>
              </div>

              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" >로그인</button>
              <hr class="my-4">
              
              <button class="btn btn-lg btn-secondary btn-block text-uppercase" onclick="location.href='newmember.jsp'">회원가입</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

<div class="col-lg-4"></div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>


</body>
</html>