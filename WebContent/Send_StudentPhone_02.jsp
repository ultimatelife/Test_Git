<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "jebal.DatabaseForm" %>

<%
	String[] checked_Id = request.getParameterValues("checkbox");
	out.println();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Send_StudentPhone_03.jsp" method = "post">
	<table border = "1" width = "1200">
		<tr>
			<th>time_Location_Checking</th>
			<th>start_Time</th>
			<th>end_Time</th>
			<th>day_Sum</th>
			<th>location_Name</th>
			<th>location_Address_Name</th>
			<th>longitude</th>
			<th>latitude</th>
			<th>diameter</th>			
			<th>wifi_Checking</th>
			<th>sound_Checking</th>
			<th>on_Off_Selecting</th>
		</tr>
		
		<tr>
			<td><input type = "text" name = "time_Location_Checking"/></td>
			<td><input type = "text" name = "start_Time"/></td>
			<td><input type = "text" name = "end_Time"/></td>
			<td><input type = "text" name = "day_Sum"/></td>
			<td><input type = "text" name = "location_Name"/></td>
			<td><input type = "text" name = "location_Address_Name"/></td>
			<td><input type = "text" name = "longitude"/></td>
			<td><input type = "text" name = "latitude"/></td>
			<td><input type = "text" name = "diameter"/></td>
			<td><input type = "text" name = "wifi_Checking"/></td>
			<td><input type = "text" name = "sound_Checking"/></td>
			<td><input type = "text" name = "on_Off_Selecting"/></td>
		</tr>
	</table>
	<%
		for(int i = 0 ; i < checked_Id.length ; i++){
			out.println("<input type = \"hidden\" name = \"checkbox\" value = " + checked_Id[i] + ">" );					
		}
	%>
	<input type = "submit" value = "Submint"/>
	</form>
</body>
</html>