<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Charter05 Test5</h1>
	
<%
int i, j;
for (i = 1; i < 10; i++) {
	for (j = 1; j < 10; j++) {
%>
<%=(i + "*" + j + "=" + i * j)%><br>
<%
	}
}
%>

</body>
</html>