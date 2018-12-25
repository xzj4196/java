<%@page import="cn.zbzy.jdbc.DButils"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>

 <form action="insertuser.jsp" method="post" accept-charset="UTF-8">
  用户名：<input type="text" name="username"></br>
  密码：<input type="password" name="password"></br>
  电话：<input type="text" name="phone"></br>
  住址：<input type="text" name="address"></br>
  <input type="submit" value="提交">
 </form>

</body>
</html>