<%@page import="jebal.DatabaseForm"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jebal.Student_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	ArrayList<Student_Info> arr_si = DatabaseForm
			.Select_Student_Info("");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		out.println("<table border = \"1\"  width = \"1200\" >");
		out.println("<tr>");
		out.println("<th>Num</th>");
		out.println("<th>Grade</th>");
		out.println("<th>Class</th>");
		out.println("<th>Student_Number</th>");
		out.println("<th>Name</th>");
		out.println("<th>Id</th>");
		out.println("<th>Password</th>");
		out.println("<th>Adjust</th>");
		out.println("</tr>");

		for (int i = 0; i < arr_si.size(); i++) {
			out.println("<tr>");
			
			out.println("<td>" + arr_si.get(i).getNum() + "</td>");
			out.println("<td>" + arr_si.get(i).getGrade() + "</td>");
			out.println("<td>" + arr_si.get(i).getClass_number() + "</td>");
			out.println("<td>" + arr_si.get(i).getStudent_number() + "</td>");
			out.println("<td>" + arr_si.get(i).getName() + "</td>");
			out.println("<td>" + arr_si.get(i).getId() + "</td>");
			out.println("<td>" + arr_si.get(i).getPassword() + "</td>");
			out.println("<form action=\"Student_View2.jsp\" method = \"post\"><td>"
					+ "<input type = \"submit\" value = \"Adjust\" /></td>");			
			out.println("</tr>");
			
			out.println("<input type = \"hidden\" name = \"student_number\" value = "
					+ arr_si.get(i).getStudent_number() + "></form>");
			
			int x = arr_si.get(i).getStudent_number();
		}

		out.println("</table>");
	%>

</body>
</html>