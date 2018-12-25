<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="cn.zbzy.jdbc.DButils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	查询用户信息


	<%
	Connection conn = null;
	Statement stat = null;
	ResultSet res = null;

	try {

		conn = DButils.getConnection();
		String sql = "SELECT `id`,`username`,`password`,`phone_number`,`address`,`reg_date` FROM users WHERE id=2";
		stat = conn.createStatement();
		res = stat.executeQuery(sql);

		if (res.next()) {
			int id = res.getInt("id");
			String username = res.getString("username");
			String password = res.getString("username");
			int phone_number = res.getInt("phone_number");
			String address = res.getString("address");
			String reg_date = res.getString("reg_date");
			out.println(id + "-------" + username + "-------" + password + "-------" + phone_number + "-------"
					+ address + "-------" + reg_date);

		}

	} catch (Exception e) {

		e.printStackTrace();

	} finally {

		
	}
%>

</body>
</html>