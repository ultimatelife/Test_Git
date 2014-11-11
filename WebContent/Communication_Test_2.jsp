<%@page import="java.util.StringTokenizer"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="jebal.DatabaseForm"%>
<%@page import="jebal.Setting"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
	StringTokenizer token = new StringTokenizer(num, ",");
	String student_number_str = request.getParameter("student_number");
	int student_number = Integer.parseInt(student_number_str);
	/*Test*/;

	int temp_num;
	ArrayList<Setting> arr_Setting = DatabaseForm.Select_Setting(
			student_number, false);

	while (token.hasMoreTokens()) {
		temp_num = Integer.parseInt(token.nextToken());

		for (int j = 0; j < arr_Setting.size(); j++) {

			if (temp_num == arr_Setting.get(j).getNum()) {

				switch (arr_Setting.get(j).getReceive_Check()) {
				case 1:
					arr_Setting.get(j).setReceive_Check(0);
					DatabaseForm.Update_Setting(arr_Setting.get(j));
					break;

				case 2:
					arr_Setting.get(j).setReceive_Check(0);
					DatabaseForm.Update_Setting(arr_Setting.get(j));
					break;

				case 3:
					DatabaseForm.Delete_Setting(temp_num);
					break;
				}
			}
		}
	}
%>
