<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>데이터 형</h3>
	${iVal } <!-- requestScop.iVal 이것을 표현하는것.-->
	<br>
	${fVal } 
	<br>
	${sVal } 
	<br>
	${bVal } 
	<br>
	-----         ${nullVal }       ----
	<br>
	${vo.no} : ${vo.email} :${vo.name}  
	<br>
	
</body>
</html>