<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="kr.co.seoRak.repository.domain.Point" %>
<%@ page import="java.util.*" %>
<%
	List<Point> list = (List<Point>)request.getAttribute("list");
	int index = 0;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>body {
	font-family: 'Lato', Arial, sans-serif;
	color: #555353;
}

.container > header {
	margin: 0 auto;
	padding: 1em;
	text-align: center;
}

.container > header h1 {
  font-weight: 600;
	font-size: 3em;
	margin: 0;
}

.wrapper {
	line-height: 1.5em;
	margin: 0 auto;
	padding: 2em 0 3em;
	width: 60%;
	max-width: 2000px;
	overflow: hidden;
}

table {
    border-collapse: collapse;
    width: 100%;
    background: #fff;
}

th {
    background-color: #326295;
    font-weight: bold;
    color: #fff;
    white-space: nowrap;
}

td, th {
    padding: 1em 1.5em;
    text-align: left;
}

tbody th {
	background-color: #2ea879;
}
tbody tr:nth-child(2n-1) {
    background-color: #f5f5f5;
    transition: all .125s ease-in-out;
}
tbody tr:hover {
    background-color: rgba(50,98,149,.3);
}

td.rank {
	text-transform: capitalize;
}

p{
  width:90%;
  margin:40px auto;
  text-align:center;
}

</style>

<body>
<%@include file="../includeBar/topList.jsp" %>
  <!-- 포인트 랭킹  -->
 <div class="container">
        <h1>보낸 포인트함</h1>
        <hr>
        <center>
			<p id="button">
				<form id="sForm">
					<input name="refresh" type='button' value='Refresh' />
					<input name="checkSendPoint" type='button' value='보낸 포인트 확인하기' />
					<input name="pointRanking" type='button' value='포인트 랭킹' />
				</form>
			</p>
		</center>
        <div class="wrapper">
            <table>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>보낸 포인트 함</th>
                        <th>Points</th>
                        <th>날짜</th>
                    </tr>
                </thead>
                <tbody>
                <%
                	for(Point p : list){
                		index++;
                %>
		          <tr>
		            <td class="rank"><%= index %></td>
		            <td class="team"><%= p.getPointExchangeId() %></td>
		            <td class="points"><%= p.getPointUpDown() %></td>
		            <td class="up-down"><%= p.getRegDate() %></td>
		          </tr> 
                <%		
                	};
                %>
                </tbody>
            </table>
        </div>
    </div>
<script>
/* 받은 포인트함 가기 */
	var checkSendPoint = document.querySelector("input[name=checkSendPoint]");
	checkSendPoint.onclick = function checkPoint(){
		location.replace("/seoRak/sendPointBox.do");
	}
	/* 포인트 보내기 */
	function openSendPop(){
		window.open(
			/* http://localhost:8000/seoRak/jsp/sendPoint.jsp */
			"/seoRak/sendPointForm.do", "포인트 보내기", "width=700px,height=500px"	
		)
	}
	
	/* 포인트 랭킹 */
	var pointRanking = document.querySelector("input[name=pointRanking]");
	pointRanking.onclick = function pointRank(){
		location.replace("/seoRak/pointRank.do");
	}
</script>
</body>
</html>