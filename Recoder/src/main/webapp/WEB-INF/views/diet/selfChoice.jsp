<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="/Recoder/resources/css/styles.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon"
	rel="stylesheet">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	
</script>

<script type="text/javascript">
	var pkcalSum = 0;
	var ckcalSum = 0;
	
	var pName = "<tr><th>단백질</th></tr>";
	var cName = "<tr><th>탄수화물</th></tr>";;
	$(document).ready(function() {
		$('.pkcal').click(function() {

			var kcal = $(this).html();
			
			
			pkcalSum = parseInt(pkcalSum) + parseInt(kcal);
			$('#pSum').html(pkcalSum);
			
			var name ="<tr><td>" + $(this).closest('tr').children('td').html() + "</td></tr>";
			
			pName = pName + name;
			
// 			alert(name);
			$('#protein').html(pName);
		})
		$('.ckcal').click(function() {

			var kcal = $(this).html();
			
			
			ckcalSum = parseInt(ckcalSum) + parseInt(kcal);
			$('#cSum').html(ckcalSum);
			
			var name ="<tr><td>" + $(this).closest('tr').children('td').html() + "</td></tr>";
			
			cName = cName + name;
			
// 			alert(name);
			$('#carbohydrate').html(cName);
		})

	})
</script>
<style type="text/css">
a {
	text-decoration: none;
	color: #198556;
}
th {
   background-color: #59d393;
   color: black;
}
</style>
<title>식단 고르기</title>
</head>
<body>

	<jsp:include page="../common/header.jsp" />
	<table>
		<tr>
			<td>
				<table>
					<tr>
						<td>단백질</td>
					</tr>
					<c:forEach var="pList" items="${pList}">
						<tr>
							<td>${pList.dietName}</td>
							<td style="text-align: right;"><a class="pkcal">${pList.dietCal}</a>
								kcal</td>

						</tr>
					</c:forEach>
				</table>
			</td>
			<td>
				<table>
					<tr>
						<td>
							탄수화물
						</td>
					</tr>
					<c:forEach var="cList" items="${cList}">
						<tr>
							<td>${cList.dietName}</td>
							<td style="text-align: right;"><a class="ckcal">${cList.dietCal}</a>
								kcal</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
	</table>
	<div>
		<a>단백질 칼로리 : </a>
		<a id="pSum">0</a> kcal</br>
	</div>
	<div>
		<a>탄수화물 칼로리 : </a>
		<a id="cSum">0</a> kcal<br>
	</div>
	<table>
		<tr>
			<td>
				<table id="protein">
					<tr>
						<th>단백질</th>
					</tr>
				</table>
			</td>
			<td>
				<table id="carbohydrate">
					<tr>
						<th>탄수화물</th>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
	
	

</body>
</html>