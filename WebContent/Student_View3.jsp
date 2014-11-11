<%@page import="jebal.DatabaseForm"%>
<%@page import="jebal.Setting"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String[] num = request.getParameterValues("num");
	String[] name = request.getParameterValues("name");
	String[] student_number = request
			.getParameterValues("student_number");
	String[] time_Location_Checking = request
			.getParameterValues("time_Location_Checking");
	String[] start_Time = request.getParameterValues("start_Time");
	String[] end_Time = request.getParameterValues("end_Time");
	String[] day_Sum = request.getParameterValues("day_Sum");
	String[] location_Name = request
			.getParameterValues("location_Name");
	String[] location_Address_Name = request
			.getParameterValues("location_Address_Name");
	String[] longitude = request.getParameterValues("longitude");
	String[] latitude = request.getParameterValues("latitude");
	String[] diameter = request.getParameterValues("diameter");
	String[] wifi_Checking = request
			.getParameterValues("wifi_Checking");
	String[] sound_Checking = request
			.getParameterValues("sound_Checking");
	String[] on_Off_Selecting = request
			.getParameterValues("on_Off_Selecting");
	String[] receive_Check = request
			.getParameterValues("receive_Check");
	
	Setting temp_setting;
	
	for(int i = 0 ; i < num.length ; i++){
		temp_setting = new Setting();
		
		temp_setting.setNum(Integer.parseInt(num[i]));
		temp_setting.setName(name[i]);
		temp_setting.setStudent_number(Integer.parseInt(student_number[i]));
		temp_setting.setTime_Location_Checking(Integer.parseInt(time_Location_Checking[i]));
		temp_setting.setStart_Time(start_Time[i]);
		temp_setting.setEnd_Time(end_Time[i]);
		temp_setting.setDay_Sum(day_Sum[i]);
		temp_setting.setLocation_Name(location_Name[i]);
		temp_setting.setLocation_Address_Name(location_Address_Name[i]);
		temp_setting.setLongitude(longitude[i]);
		temp_setting.setLatitude(latitude[i]);
		temp_setting.setDiameter(diameter[i]);
		temp_setting.setWifi_Checking(Integer.parseInt(wifi_Checking[i]));
		temp_setting.setSound_Checking(Integer.parseInt(sound_Checking[i]));
		temp_setting.isOn_Off_Selecting();
		temp_setting.setReceive_Check(2);
		
		DatabaseForm.Update_Setting(temp_setting);
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 	response.sendRedirect("Select.jsp");
 %>
</body>
</html>