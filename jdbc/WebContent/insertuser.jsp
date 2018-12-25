
<%@page import="java.sql.Statement"%>
<%@page import="cn.zbzy.jdbc.DButils"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-/W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>

	<%
		// 获取表单提交过来的数据
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String phoneNumber = request.getParameter("phone");
		String address = request.getParameter("address");

		Connection conn = null;
		Statement stat = null;
		int count = 0;

		try {

			conn = DButils.getConnection();
			//String str = "INSERT INTO users(`username`,`password`,`phone_number`,`address`,`reg_date`) VALUES ('"+username+"','"+password+"','"+phoneNumber+"','"+address+"','"+new java.sql.Date(new java.util.Date().getTime())+"');";
			String str = "INSERT INTO users(`username`,`password`,`phone_number`,`address`,`reg_date`) VALUES ('"
					+ username + "','" + password + "','" + phoneNumber + "','" + address + "','"
					+ new java.sql.Date(new java.util.Date().getTime()) + "');";
			System.out.println(str);

			stat = conn.createStatement();
			count = stat.executeUpdate(str);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(stat != null) stat.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(stat != null) conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		if (count > 0) {
			out.println("插入成功");
		}
	%>

</body>
</html>