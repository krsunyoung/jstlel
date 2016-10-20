<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MemberVo vo = new MemberVo();
	vo.setName("둘리");
	
	pageContext.setAttribute("memberVo", vo);
	//pagecontext를 쓰면 그전에 불러온 멤버 vo가 사라진다. 
	//안사라지게 할려면 request scope방시긍로 다 써줘야 한다.
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>객체 접근</h3>
	${memberVo.no }
	<br>
	${memberVo.email }
	<br>
	${memberVo.name }
	<br>
	============== scope test01 =====================
	<br>
	page scope :${pageScope.memberVo.name } <!--  page 안에서 만 쓰임 servlet으로 전달하지 못함  -->
	<br>
	request scope :${requestScope.memberVo.name }
	<br>
	session scope :${sessionScope.memberVo.name }
	<br>
	application scope :${applicationScope.memberVo.name }
	<br/>
	<br/>
	============== scope test02 =====================
	<br>
	<!-- memberVo가 어디에 저장되어있는지 찾기 시작해서 작은것부터 그래서 바로 출력해서 둘리가 출력된다. --> 
	<!--  같은 이름으로 저장해서 뒤에것을 저장하면 앞에 작은 것을 출력한다. 그래서 원하지 않는 것이 출력될 수가 있다. 이름을 다르게 하는것이 좋음.  -->
	page scope :${memberVo.name } 
	<br>
	request scope :${memberVo2.name }
	<br>
	session scope :${memberVo3.name }
	<br>
	application scope :${memberVo4.name }
	<br>
	
</body>
</html>