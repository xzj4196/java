<%@page import="java.sql.*"%>
<%@page import="cn.zbzy.jdbc.DButils"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<%
Connection conn = DButils.getInstance().getConnection();
%>

<%=conn %>

</body>
</html>