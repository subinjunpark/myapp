<%@ page contentType="text/html;charset=UTF-8"
	import="java.sql.*, ch11.*"%>
<%
request.setCharacterEncoding("UTF-8");
String searchKeyword = request.getParameter("searchKeyword");
DBConnectionMgr pool = DBConnectionMgr.getInstance();

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
int counter = 0;

int BOOK_ID = 0;
String TITLE = null;
String PUBS = null;
String PUB_DATE = null;
String AUTHOR_NAME = null;

try {
	conn = pool.getConnection();
	String sql = " SELECT A.BOOK_ID,A.TITLE,A.PUBS,A.PUB_DATE ,B.AUTHOR_NAME\n" + " FROM BOOK A\n"
	+ " INNER JOIN AUTHOR B\n" + " ON B.AUTHOR_ID =A.AUTHOR_ID\n"
	+ " WHERE B.AUTHOR_NAME || A.TITLE || A.PUBS  LIKE ?\n" + " ORDER BY a.book_id";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, "%" + searchKeyword + "%"); // 바인딩

	rs = pstmt.executeQuery();
%>
<html>
<head>
<title>JSP에서 데이터베이스 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<h2>JSP 스크립틀릿에서 Connection Pool을 이용한 데이터베이스 연동 예제</h2>
	<br />
	<h3>회원정보</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>BOOK_ID</strong></td>
			<td><strong>TITLE</strong></td>
			<td><strong>PUBS</strong></td>
			<td><strong>PUB_DATE</strong></td>
			<td><strong>AUTHOR_NAME</strong></td>
		</tr>
		<%
		if (rs != null) {
			while (rs.next()) {
				BOOK_ID = rs.getInt("BOOK_ID");
				TITLE = rs.getString("TITLE");
				PUBS = rs.getString("PUBS");
				PUB_DATE = rs.getString("PUB_DATE");
				AUTHOR_NAME = rs.getString("AUTHOR_NAME");
		%>
		<tr>
			<td><%=BOOK_ID%></td>
			<td><%=TITLE%></td>
			<td><%=PUBS%></td>
			<td><%=PUB_DATE%></td>
			<td><%=AUTHOR_NAME%></td>
		</tr>
		<%
		counter++;
		} //end while
		} //end if
		%>
	</table>
	<br /> total records :
	<%=counter%>
	<%
	} catch (SQLException sqlException) {
	System.out.println("sql exception");
	} catch (Exception exception) {
	System.out.println("exception");
	} finally {
	if (rs != null)
		try {
			rs.close();
		} catch (SQLException ex) {
		}
	if (pstmt != null)
		try {
			pstmt.close();
		} catch (SQLException ex) {
		}
	if (conn != null)
		try {
			pool.freeConnection(conn);
		} catch (Exception ex) {
		}
	}
	%>