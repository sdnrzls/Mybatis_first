<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
$(document).ready(function (){
	$("#searchBtn").click(function (){
		$.getJSON("searchAction.amy",
				{"field":$("#field").val(), "word":$("#word").val()},
				function(data){
					fsuccess(data);
				}
				);//getJSON
	})//SearchBtn
	
	fsuccess = function(data){
		$("#count").html("총 게시물 수 :"+data.count);
		var htmlStr="";
		$.each(data.arr, function(key,val){
			htmlStr+="<tr>";
			htmlStr+="<td>"+val.num+"</td>";
			htmlStr+="<td>"+val.name+"</td>";
			htmlStr+="<td>"+val.zipcode+"</td>";
			htmlStr+="<td>"+val.addr+"</td>";
			htmlStr+="<td>"+val.tel+"</td>";
			htmlStr+="<td onclick='fdelete("+val.num+")'>삭제</td>";
			htmlStr+="</tr>";
		});
			$("table tbody").html(htmlStr);
	}
	
}); //document
function fdelete(num) {
	alert("정말 삭제 하시겠습니까?")
	$.getJSON("deleteAjaxAction.amy?num="+num,
			function(data){
		fsuccess(data);
	}
	);
}
</script>

</head>
<body>
<div align="left">
	회원수 : ${count}

</div>
<div align="left" id="count"> 총 게시물 수 : ${count }</div>
<table>
	<thead>
	<tr>
		<td>번호</td>
		<td>이름</td>
		<td>우편번호</td>
		<td>주소</td>
		<td>전화번호</td>
		<td>삭제</td>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${arr}" var="arr" varStatus="st">
	<tr>
		<td>${arr.num}</td>
		<td><a href="veiwAction.amy?num=${arr.num}">${arr.name}</a></td>
		<td>${arr.zipcode }</td>
		<td>${arr.addr}</td>
		<td>${arr.tel}</td>
		<td onclick="fdelete(${arr.num})">삭제</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<div align="center">
<form name="search" id="search">
<select name="field" id="field">
<option value="name">이름</option>
<option value="tel">전화</option>
</select>
<input type="text" name="word" id="word">
<input type="button" value="검색" id="searchBtn">
</form>
</div>

</body>
</html>