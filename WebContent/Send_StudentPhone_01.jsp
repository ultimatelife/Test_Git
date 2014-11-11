<%@page import="java.util.ArrayList"%>
<%@page import="jebal.Student_Info"%>
<%@page import="jebal.MakeFrame_Test"%>
<%@ page import = "jebal.DatabaseForm" %>
<%@page import="com.sun.corba.se.spi.ior.MakeImmutable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method= "post" action = "Send_StudentPhone_02.jsp">
	<table width= "5" border = "1">
		<tr>
			<td>Name</td>
			<td>Student_Number</td>
			<td>Check</td>
		</tr>
		
	<%
		ArrayList<Student_Info> arr_si = DatabaseForm.Select_Student_Info("");
		Student_Info temp_si;
		String test ;
		
		for(int i = 0 ; i < arr_si.size() ; i++){
			temp_si = arr_si.get(i);
			test = temp_si.getId();
			out.println("<tr>");
			out.println("<td>" + temp_si.getName() + "</td>");
			out.println("<td>" + temp_si.getStudent_number() + "</td>");
			out.println("<td> ");
			out.println("<input type = \"checkbox\" name = \"checkbox\" value =" + temp_si.getId() + ">");
			out.println("</td>");
			out.println("</tr>");
		}
		out.println();
	%>
	
	</table>
	<input type = "submit" value = "Submit" />
	</form>
</body>
</html>