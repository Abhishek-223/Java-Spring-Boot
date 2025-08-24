<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Head of Dept is ${hod } sir </h1>
<h1>Tpo of Dept is ${top } sir </h1>
<h1>Co-ordinator of Dept is ${coodr } sir </h1>

<%
	String s = (String) request.getAttribute("coodr");
%>
<h1><%=s %> </h1>  <!-- special lang in code js -->
</body>
</html> 