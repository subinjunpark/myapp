<%@ page contentType="text/html;charset=UTF-8"%>
<h1>If-else Example</h1>
<%!
      String msg;
%>
<%
	 request.setCharacterEncoding("UTF-8");
     String name = request.getParameter("name");
     String color = request.getParameter("color");
 
 	/* if-else 코딩 시작, 색깔 4가지(파란색, 붉은색, 오렌지색, 기타), 기타는 배경화면 하얀색으로 */
 
     
%>
<body bgcolor="<%=color%>">
<b><%=name%></b>님이 좋아하는 색깔은 <b><%=msg%></b>입니다. 
</body>