<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.util.*"%>
<%@page session="true"%>
<%@page buffer="16kb"%>
<%@page autoFlush="true"%>
<%@page isThreadSafe="true"%>
<% Date date = new Date(); %>
<h1>trim Before</h1>
현재의 날짜와 시간은?<p/>
<%=date.toLocaleString()%>