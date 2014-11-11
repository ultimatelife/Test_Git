<%@page import="jebal.Setting"%>
<%@page import="jebal.DatabaseForm"%>
<%@page import="jebal.Student_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] student_Id = request.getParameterValues("checkbox");
		
	Setting temp_setting;

	Student_Info temp_si;
	String name;
	int student_number;
	
	String temp = request.getParameter("time_Location_Checking");
	
	int time_Location_Checking = Integer.parseInt(request.getParameter("time_Location_Checking"));
	String start_Time = request.getParameter("start_Time");
	String end_Time = request.getParameter("end_Time");
	String day_Sum = request.getParameter("day_Sum");
	String location_Name = request.getParameter("location_Name");
	String location_Address_Name = request.getParameter("location_Address_Name");
	String longitude = request.getParameter("longitude");
	String latitude = request.getParameter("latitude");
	String diameter = request.getParameter("diameter");
	int wifi_Checking = Integer.parseInt(request.getParameter("wifi_Checking")) ;
	int sound_Checking = Integer.parseInt(request.getParameter("sound_Checking"));
	int on_Off_Selecting = Integer.parseInt(request.getParameter("on_Off_Selecting"));
	
	for(int i = 0 ; i < student_Id.length ; i++){
		temp_setting = new Setting();
		temp_si = DatabaseForm.Select_Student_Info(student_Id[i]).get(0);

		name  = temp_si.getName();
		student_number = temp_si.getStudent_number();
		
		temp_setting.setName(name);
		temp_setting.setStudent_number(student_number);
		temp_setting.setTime_Location_Checking(time_Location_Checking);
		temp_setting.setStart_Time(start_Time);
		temp_setting.setEnd_Time(end_Time);
		temp_setting.setDay_Sum(day_Sum);
		temp_setting.setLocation_Name(location_Name);
		temp_setting.setLocation_Address_Name(location_Address_Name);
		temp_setting.setLongitude(longitude);
		temp_setting.setLatitude(latitude);
		temp_setting.setDiameter(diameter);
		temp_setting.setWifi_Checking(wifi_Checking);
		temp_setting.setSound_Checking(sound_Checking);
		temp_setting.isOn_Off_Selecting();
		
		DatabaseForm.Insert_Setting(temp_setting);
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