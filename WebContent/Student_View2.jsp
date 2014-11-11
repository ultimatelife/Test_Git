<%@page import="jebal.DatabaseForm"%>
<%@page import="jebal.Setting"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int student_number = Integer.parseInt(request
			.getParameter("student_number"));

	ArrayList<Setting> arr_Setting = DatabaseForm.Select_Setting(-1,
			true);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<table border="1" width="1200">
		<tr>
			<th>Name</th>
			<th>Student Number</th>
			<th>Time Location Checking</th>
			<th>Start Time</th>
			<th>End Time</th>
			<th>DaySum</th>
			<th>Location Name</th>
			<th>Location Address Name</th>
			<th>Longitude</th>
			<th>Latitude</th>
			<th>Diameter</th>
			<th>WIFI Checking</th>
			<th>Sound Checking</th>
			<th>On Off Selecting</th>
			<th>Receive Checking</th>
		</tr>
		<form action="Student_View3.jsp" method="post">
			<%
				for (int i = 0; i < arr_Setting.size(); i++) {
					out.println("<input type = \"hidden\"  name = \"num\" value = "
							+ arr_Setting.get(i).getNum() + ">");

					out.println("<tr>");
					out.println("<td><input type = \"text\" name = \"name\" value = "
							+ arr_Setting.get(i).getName() + "></td>");
					out.println("<td><input type = \"text\" name = \"student_number\" value = "
							+ arr_Setting.get(i).getStudent_number() + "></td>");
					out.println("<td><input type = \"text\" name = \"time_Location_Checking\" value = "
							+ arr_Setting.get(i).getTime_Location_Checking()
							+ "></td>");
					out.println("<td><input type = \"text\" name = \"start_Time\" value = "
							+ arr_Setting.get(i).getStart_Time() + "></td>");
					out.println("<td><input type = \"text\" name = \"end_Time\" value = "
							+ arr_Setting.get(i).getEnd_Time() + "></td>");
					out.println("<td><input type = \"text\" name = \"day_Sum\" value = "
							+ arr_Setting.get(i).getDay_Sum() + "></td>");
					out.println("<td><input type = \"text\" name = \"location_Name\" value = "
							+ arr_Setting.get(i).getLocation_Name() + "></td>");
					out.println("<td><input type = \"text\" name = \"location_Address_Name\" value = "
							+ arr_Setting.get(i).getLocation_Address_Name()
							+ "></td>");
					out.println("<td><input type = \"text\" name = \"longitude\" value = "
							+ arr_Setting.get(i).getLongitude() + "></td>");
					out.println("<td><input type = \"text\" name = \"latitude\" value = "
							+ arr_Setting.get(i).getLatitude() + "></td>");
					out.println("<td><input type = \"text\" name = \"diameter\" value = "
							+ arr_Setting.get(i).getDiameter() + "></td>");
					out.println("<td><input type = \"text\" name = \"wifi_Checking\" value = "
							+ arr_Setting.get(i).getWifi_Checking() + "></td>");
					out.println("<td><input type = \"text\" name = \"sound_Checking\" value = "
							+ arr_Setting.get(i).getSound_Checking() + "></td>");
					out.println("<td><input type = \"text\" name = \"on_Off_Selecting\" value = "
							+ arr_Setting.get(i).isOn_Off_Selecting() + "></td>");
					out.println("<td><input type = \"text\" name = \"receive_Check\" value = "
							+ arr_Setting.get(i).getReceive_Check() + "></td>");
					out.println("</tr>");
				}
			%>
			<input type="submit" value="Submit" />
		</form>
</body>
</html>