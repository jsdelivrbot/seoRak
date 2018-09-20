<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<style>
  *, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  background: rgb(195, 210, 180);
  font-family: 'Nunito', sans-serif;
}

form {
  border: 5px rgb(180, 180, 235) solid;
  width: 100%;
  max-width: 800px;
  margin: 10px auto;
  margin-top: 30px;
  padding: 10px 20px;
  background: rgb(170, 200, 150);
  border-radius: 20px;
}

h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

input[type="text"],
input[type="password"],
input[type="date"],
input[type="datetime"],
input[type="email"],
input[type="number"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
textarea,
select {
  background: rgba(255,255,255,1);
  font-size: 16px;
  height: 30px;
  margin: 0;
  outline: 0;
  padding: 15px;
  width: 100%;
  background-color:#fff;
  color: rgb(80, 80, 80);
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 30px;
  
  }

input[type="radio"],
input[type="checkbox"] {
  margin: 0 4px 8px 0;
}

select {
  padding: 6px;
  height: 32px;
  border-radius: 2px;
}

#submit {
  padding: 19px 39px 18px 39px;
  color: rgb(80, 80, 80);
  background-color: rgb(180, 180, 235);
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 100%;
  border: 1px solid rgb(135, 135, 231);
  border-width: 1px 1px 3px;
  box-shadow: -3px -3px 3px rgb(99, 99, 126) inset;
  margin-bottom: 10px;
}

#submit:focus {
  box-shadow: 5px 5px 3px rgb(99, 99, 126) inset;

}

fieldset {
  margin-bottom: 30px;
  border: none;
}

legend {
  font-size: 1.4em;
  margin-bottom: 10px;
}

label {
  display: block;
  margin-bottom: 8px;
  color: rgb(80, 80, 80)
}

label.light {
  font-weight: 300;
  display: inline;
}

@media screen and (min-width: 480px) {

  form {
    max-width: 40%;
  }

}
h1{
  height: 70px;
  line-height: 70px;
  border-radius: 8px;
  margin-top: 20px;
  margin-bottom: 20px;
  color : rgb(80, 80, 80)
}
  </style>
</head>
<body>
	<form action="#" method=post>
		<h1>회원가입</h1>
		<div id="title"></div>
		<fieldset>
			<label for="name">이름</label> <input type="text" id="name" name="name" />
			<label for="nickName">닉네임</label> <input type="text" id="nickName" name="nickName" />
			<label for="id">아이디(E-mail)</label> <input type="email" id="id" name="id" style="width: 85%" />
			<button>중복체크</button>
			<label for="password">비밀번호</label> <input type="password" id="pass" name="pass" /> 
			<label for="checkPassword">비밀번호 확인</label> <input type="password" id="checkPassword" name="checkPassword" /> 
			<label for="checkHuman">자동가입 방지</label> <input type="text" id="checkHuman" name="checkHuman" style="width: 50%" />
			<img src="../img/captcha.jpg" style="margin-left: 10px; width: 45%;" />
		</fieldset>
		<button id="submit">회원가입</button>
	</form>
</body>
</html>