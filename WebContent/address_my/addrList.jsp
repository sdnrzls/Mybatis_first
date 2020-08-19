<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<body>
<div align="right">
	회원수 : <span id="count">${count}</span>
</div>
<table>
	<thead>
	<tr>
		<td>번호</td>
		<td>이름</td>
		<td>우편번호</td>
		<td>주소</td>
		<td>전화번호</td>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${arr}" var="arr" >
	<tr>
		<td>${arr.num}</td>
		<td><a href="#">${arr.name}</a></td>
		<td>${arr.zipcode }</td>
		<td>${arr.addr}</td>
		<td>${arr.tel}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>



</body>
</html>