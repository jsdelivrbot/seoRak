<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#n1 {
	text-align: center;
}

#btn1 {
	margin-left: 67%;
}

/*--------------------------이 밑줄부터 휴지통---------------------------------------------------------*/
body {
	font-family: "Helvetica Neue", Helvetica, Arial;
	font-size: 14px;
	line-height: 20px;
	font-weight: 400;
	color: #3b3b3b;
	-webkit-font-smoothing: antialiased;
	font-smoothing: antialiased;
}

@media screen and (max-width: 580px) {
	body {
		font-size: 16px;
		line-height: 22px;
	}
}

.wrapper {
	margin: 0 auto;
	padding: 40px;
	max-width: 800px;
}

.table {
	margin: 0 0 40px 0;
	width: 50%;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
	display: table;
	margin: 0px auto;
}

@media screen and (max-width: 580px) {
	.table {
		display: block;
	}
}

.row {
	display: table-row;
	background: #f6f6f6;
}

.row:nth-of-type(odd) {
	background: #e9e9e9;
}

.row.header {
	font-weight: 900;
	color: #ffffff;
	background: #ea6153;
}

.row.green {
	background: #27ae60;
}

.row.blue {
	background: #2980b9;
}

@media screen and (max-width: 580px) {
	.row {
		padding: 14px 0 7px;
		display: block;
	}
	.row.header {
		padding: 0;
		height: 6px;
	}
	.row.header .cell {
		display: none;
	}
	.row .cell {
		margin-bottom: 10px;
	}
	.row .cell:before {
		margin-bottom: 3px;
		content: attr(data-title);
		min-width: 98px;
		font-size: 10px;
		line-height: 10px;
		font-weight: bold;
		text-transform: uppercase;
		color: #969696;
		display: block;
	}
}

.cell {
	padding: 6px 12px;
	display: table-cell;
}

@media screen and (max-width: 580px) {
	.cell {
		padding: 2px 16px;
		display: block;
	}
}
</style>
</head>
<body>
	<h1 id="n1">휴지통</h1>
	<hr>
	<div class="table">

		<div class="row header green">
			<div class="cell">선택</div>
			<div class="cell">이름</div>
			<div class="cell">내용</div>
			<div>보낸날짜</div>
		</div>

		<div class="row">
			<div class="cell" data-title="Status">
				<input id="f1" type="checkbox" name="del" value="1" />
			</div>
			<div class="cell" data-title="Product">John</div>
			<div class="cell" data-title="Unit Price">탈주</div>
			<div class="cell" data-title="Quantity">2018-09-15</div>
		</div>
		<div class="row">
			<div class="cell" data-title="Status">
				<input id="f1" type="checkbox" name="del" value="1" />
			</div>
			<div class="cell" data-title="Product">John</div>
			<div class="cell" data-title="Unit Price">탈주</div>
			<div class="cell" data-title="Quantity">2018-09-15</div>
		</div>
		<div class="row">
			<div class="cell" data-title="Status">
				<input id="f1" type="checkbox" name="del" value="1" />
			</div>
			<div class="cell" data-title="Product">신득수</div>
			<div class="cell" data-title="Unit Price">zzz..</div>
			<div class="cell" data-title="Quantity">2018-09-15</div>
		</div>
		<div class="row">
			<div class="cell" data-title="Status">
				<input id="f1" type="checkbox" name="del" value="1" />
			</div>
			<div class="cell" data-title="Product">방진웅</div>
			<div class="cell" data-title="Unit Price">노트북 옴</div>
			<div class="cell" data-title="Quantity">2018-09-15</div>
		</div>
		<div class="row">
			<div class="cell" data-title="Status">
				<input id="f1" type="checkbox" name="del" value="1" />
			</div>
			<div class="cell" data-title="Product">최창유</div>
			<div class="cell" data-title="Unit Price">dd</div>
			<div class="cell" data-title="Quantity">2018-09-15</div>
		</div>
	</div>
	<hr>
	<button type="button" id="btn1" name="del">영구삭제</button>
	<button type="button" name="re">쪽지함</button>

</body>
</html>