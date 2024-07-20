<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Join</title>
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
                <div class="dropdown">
                <button class="header-button btn btn-primary">회원▽</button>
                
                <div class="dropdown-content">
                    <a href="login.jsp">로그인</a></p>
                    <a href="newmember.jsp">회원가입</a></p>
                </div>
            </div>
    </div>

<style>
:root { -
	-input-padding-x: 1.5rem; -
	-input-padding-y: .75rem;
}

body {
	background-color: white;
}

.card-signin {
	border: 0;
	border-radius: 1rem;
	box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
	overflow: hidden;
}

.card-signin .card-title {
	margin-bottom: 2rem;
	font-weight: 300;
	font-size: 1.5rem;
}

.card-signin .card-img-left {
	width: 45%;
	background: scroll center
		url('https://i.pinimg.com/originals/d2/cf/56/d2cf56811c4a96727d4f1494ba0914d9.jpg');
	background-size: cover;
}

.card-signin .card-body {
	padding: 2rem;
}

.form-signin {
	width: 100%;
}

.form-signin .btn {
	font-size: 80%;
	border-radius: 5rem;
	letter-spacing: .1rem;
	font-weight: bold;
	padding: 1rem;
	transition: all 0.2s;
}

.form-label-group {
	position: relative;
	margin-bottom: 1rem;
}

.form-label-group input {
	height: auto;
	border-radius: 2rem;
}

.form-label-group>input, .form-label-group>label {
	padding: var(- -input-padding-y) var(- -input-padding-x);
}

.form-label-group>label {
	position: absolute;
	top: 0;
	left: 0;
	display: inline_block;
	width: 100%;
	margin-bottom: 0;
	/* Override default `<label>` margin */
	line-height: 1.5;
	color: #495057;
	border: 1px solid transparent;
	border-radius: .25rem;
	transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
	color: transparent;
}

.form-label-group input:-ms-input-placeholder {
	color: transparent;
}

.form-label-group input::-ms-input-placeholder {
	color: transparent;
}

.form-label-group input::-moz-placeholder {
	color: transparent;
}

.form-label-group input::placeholder {
	color: transparent;
}

.form-label-group input:not(:placeholder-shown) {
	padding-top: calc(var(- -input-padding-y)+ var(- -input-padding-y)* (2/3));
	padding-bottom: calc(var(- -input-padding-y)/3);
}

.form-label-group input:not(:placeholder-shown) ~label {
	padding-top: calc(var(- -input-padding-y)/3);
	padding-bottom: calc(var(- -input-padding-y)/3);
	font-size: 12px;
	color: #777;
}
</style>

<script>
	function idcheck() {
		if (document.joinform.id.value == "") {
			alert("아이디를 입력해주세요.");
			document.joinform.id.focus();
			return false;
		}

		var url = "id_check_form?id=" + document.joinform.id.value;

		window.open(url, "_blank_1",
						"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=300");
	}
</script>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-lg-10 col-xl-9 mx-auto">
				<div class="card card-signin flex-row my-5">
					<div class="card-img-left d-none d-md-flex">
					</div>
					<div class="card-body">
						<h5 class="card-title text-center">회원가입</h5>
						<form name="regFrm" method="post" action="memberProc.jsp">
							<div class="form-label-group">
								<input type="text" id="id" name="id" class="form-control" placeholder="아이디"
									required autofocus value="${id}"> 
							</div>

							<div class="form-label-group">
								<button
									class="btn btn-lg btn-secondary btn-block text-uppercase"
									type="button" onclick="idcheck()">아이디 중복 확인</button>
							</div>
							
							<script>
        function idcheck() {
            if (document.regFrm.id.value == "") {
                alert("아이디를 입력해주세요.");
                document.regFrm.id.focus();
                return false;
            }

            var url = "id_check.jsp?id=" + document.regFrm.id.value;
            window.open(url, "_blank",
                "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=300, height=100");
        }
    </script>

							<div class="form-label-group">
								<input type="password" id="pwd" name="pwd" class="form-control"
									placeholder="Password" required> <label for="pwd">비밀번호</label>
							</div>

							<div class="form-label-group">
								<input type="password" id="pwdcheck" name="pwdcheck" class="form-control"
									placeholder="Confirm Password" required> <label
									for="pwdcheck">비밀번호 확인</label>
							</div>

							<hr>

							<div class="form-label-group">
								<input type="text" id="name" name="name" class="form-control" placeholder="name" required>
								<label for="name">이름</label>
							</div>
							
							<div class="form-label-group">
								<input type="text" id="phone" name="phone" class="form-control" placeholder="phone" required>
								<label for="phone">전화번호</label>
							</div>
							
							<div class="form-label-group">
								<input type="text" id="age" name="age" class="form-control" placeholder="age" required>
								<label for="age">나이</label>
							</div>
							
							<div class="form-label-group">
								<select id="job" name="job" class="form-control" placeholder="job" required>
								<option value="0" selected>직업을 선택하세요.
										<option value="학생">학생
										<option value="직장인">직장인
										<option value="고시생">고시생
										<option value="공무원">공무원
										<option value="주부">주부
										<option value="무직">무직
										<option value="기타">기타
								</select>
							</div>
							
							<hr class="my-4">
							
							<input type="submit"
								class="btn btn-lg btn-primary btn-block text-uppercase"
								value="회원가입"> &nbsp; &nbsp;
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
