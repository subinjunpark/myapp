<%@ page contentType="text/html;charset=UTF-8"%>
<h1>While Example</h1>
<%
//1. 입력값 한글 안 깨지도록 인코딩 /힌트 : request.
request.setCharacterEncoding("UTF-8");

//2. msg를 입력한 횟수만큼 반복하는 while 문 쓰기 /힌트 : 변수 선언(입력값 2개 + 임의값 1개)
String msg = request.getParameter("msg");
int number = Integer.parseInt(request.getParameter("number"));
int i = 0;

while (i<number){
%>
	<%=msg%>;
<%
	i++;
}


%>