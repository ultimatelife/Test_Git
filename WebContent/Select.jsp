<%@page import="jebal.Teacher_Info"%>
<%@page import="jebal.DatabaseForm"%>
<%
	
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<table border="1" width="1298" align="center">
		    <tr>
		        <td width="1288">
		            <form name="form1" method = "get" action = "Student_View.jsp">
		                <p align="center"  ><input type="submit" value = "Student" ></p>
		            </form>
		        </td>
		    </tr>
		    <tr>
		        <td width="1288">
		            <form name="form2" method = "get" action = "Send_StudentPhone_01.jsp">
		                <p align="center"><input type="submit" value = "ADD""></p>
		            </form>
		        </td>
		    </tr>
		</table>
	</center>
</body>
</html>