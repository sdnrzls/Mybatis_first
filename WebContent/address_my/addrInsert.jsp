<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function zipfinder(){
	window.open("zipAction.amy","","width=700 height=400");
}
</script>
</head>
<body>
<a href="insertAction.amy">전체보기</a>
<form action="insertAction.amy" method="post" name="frm"> 
<table>
		<tr>
				<td colspan="2">주소록 등록하기</td>
		</tr>
		<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
		</tr>
		<tr>
				<td>우편번호</td>
				<td><input type="text" name="zipcode" id="zipcode"size=7>
						<input type="button" value="검색"  onclick="zipfinder()">
				</td>
		</tr>
		<tr>
				<td>주소</td>
				<td><input type="text" name="addr" id="addr" size=50></td>
		</tr>
		<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel"></td>
		</tr>
		<tr>
		<td colspan="2">
				<input type="submit" value="등록">
				<input type="reset" value="취소">
		</td>
		</tr>
</table>

</form>

</body>
</html>