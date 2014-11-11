<%@page import="jebal.DatabaseForm"%>
<%@page import="jebal.Teacher_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	DatabaseForm.Construct_Database();	

	String temp_id = request.getParameter("id");
	String temp_password = request.getParameter("password");

	Teacher_Info ti = DatabaseForm.Select_Techer_Info(temp_id).get(0);
	String id = ti.getId();
	String password = ti.getPassword();
	
	if(temp_id.equals(id)){
		if(temp_password.equals(password)){
			request.setAttribute("class_Number", ti.getClass_number());
			response.sendRedirect("Select.jsp");
		}
	}
	
	/*
	out.println(id);
	out.println(password);
	*/
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>