<%@page import="org.json.simple.JSONArray"%>
<%@page import="jebal.DatabaseForm"%>
<%@page import="jebal.Setting"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String temp_id = request.getParameter("id");
	int temp_student_number = 201021600;
	/*	
		Integer.parseInt(request
		.getParameter("studnet_number")); 
	 */

	ArrayList<Setting> arr_Setting = DatabaseForm.Select_Setting(
			temp_student_number, false);
	Setting temp_Setting = null;

	JSONObject main_Json = new JSONObject();
	JSONArray arr_Json = new JSONArray();
	JSONObject temp_json = null;

	for (int i = 0; i < arr_Setting.size(); i++) {
		temp_json = new JSONObject();
		temp_Setting = arr_Setting.get(i);
		
		temp_json.put("num", temp_Setting.getNum());
		temp_json.put("name", temp_Setting.getName());
		temp_json.put("student_number",
				temp_Setting.getStudent_number());
		temp_json.put("time_Location_Checking",
				temp_Setting.getTime_Location_Checking());
		temp_json.put("start_Time", temp_Setting.getStart_Time());
		temp_json.put("end_Time", temp_Setting.getEnd_Time());
		temp_json.put("day_Sum", temp_Setting.getDay_Sum());
		temp_json.put("loction_Name", temp_Setting.getLocation_Name());
		temp_json.put("location_Address_Name",
				temp_Setting.getLocation_Address_Name());
		temp_json.put("longitude", temp_Setting.getLongitude());
		temp_json.put("latitude", temp_Setting.getLatitude());
		temp_json.put("diameter", temp_Setting.getDiameter());
		temp_json.put("wifi_Checking", temp_Setting.getWifi_Checking());
		temp_json.put("sound_Checking",
				temp_Setting.getSound_Checking());
		temp_json.put("on_Off_Selecting",
				temp_Setting.isOn_Off_Selecting());
		temp_json.put("receive_Check",
				temp_Setting.getReceive_Check());
		
		arr_Json.add(i, temp_json);
	}

	main_Json.put("arr", arr_Json);

	out.println(main_Json.toJSONString());
	out.flush();
%>
