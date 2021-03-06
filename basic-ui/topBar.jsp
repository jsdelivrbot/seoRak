<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	* {
  box-sizing: border-box;
}
@font-face {
  font-family: 'PT Sans';
  font-style: normal;
  font-weight: 400;
  src: local('PT Sans'), local('PTSans-Regular'), url(https://fonts.gstatic.com/s/ptsans/v9/jizaRExUiTo99u79D0KEwA.ttf) format('truetype');
}
html,
body {
  margin: 0;
  padding: 0;
}
body {
  font-family: "PT Sans", Arial, Verdana;
  background-color: #eee;
}
h1 {
  text-align: center;
  font-size: 48px;
  text-transform: uppercase;
  letter-spacing: 3px;
  color: #222;
}
.menu {
  list-style: none;
  margin: 0;
  padding: 0;
  width: 100%;
  height: 50px;
  margin: auto;
  position: relative;
  background-color: #2c3e50;
  z-index: 7;
}
.menu li {
  float: left;
  width: 20%;
  height: 100%;
  margin: 0;
  padding: 0;
}
.menu a {
  display: flex;
  width: 100%;
  height: 100%;
  justify-content: center;
  align-items: center;
  color: #fff;
  text-decoration: none;
  position: relative;
  font-size: 18px;
  z-index: 9;
}
a.active {
  background-color: #e74c3c;
  pointer-events: none;
}
li.slider {
  width: 20%;
  height: 100%;
  position: absolute;
  left: 0;
  top: 0;
  background-color: #e74c3c;
  z-index: 8;
  transition: left 0.4s, background-color 0.4s;
}
.menu li:nth-child(1):hover ~ .slider,
.menu li:nth-child(1):focus ~ .slider,
.menu li:nth-child(1):active ~ .slider {
  left: 0;
  background-color: #3498db;
}
.menu li:nth-child(2):hover ~ .slider,
.menu li:nth-child(2):focus ~ .slider,
.menu li:nth-child(2):active ~ .slider {
  left: 20%;
  background-color: #9b59b6;
}
.menu li:nth-child(3):hover ~ .slider,
.menu li:nth-child(3):focus ~ .slider,
.menu li:nth-child(3):active ~ .slider {
  left: 40%;
  background-color: #e67e22;
}
.menu li:nth-child(4):hover ~ .slider,
.menu li:nth-child(4):focus ~ .slider,
.menu li:nth-child(4):active ~ .slider {
  left: 60%;
  background-color: #16a085;
}
.menu li:nth-child(5):hover ~ .slider,
.menu li:nth-child(5):focus ~ .slider,
.menu li:nth-child(5):active ~ .slider {
  left: 80%;
  background-color: #16a085;
}
</style>
</head>
<body>


<h1>Responsive Menu Effect
hover on menu items!
</h1>

<ul class="menu">
  <li><a href="#" class="active">Home</a></li>
  <li><a href="#">About</a></li>
  <li><a href="#">Portfolio</a></li>
  <li><a href="#">Contact</a></li>
  <li><a href="#"><input type="text"/></a></li>
  <li class="slider"></li>
</ul>
</body>
</html>