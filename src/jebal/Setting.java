package jebal;

import java.io.Serializable;

public class Setting implements Serializable {
	
	int num;
	
	String name;
	int student_number;
	
	int time_Location_Checking;
	
	String start_Time;
	String end_Time; 
	String day_Sum;
	
	String location_Name;
	String location_Address_Name;
	String longitude ;
	String latitude ;
	String diameter ;

	int wifi_Checking ;
	int sound_Checking ;
	boolean on_Off_Selecting = true;
	int receive_Check = 1;				// 0 : 잘받았다	1 : 추가해야한다	2 : 업데이트 해야한다
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStudent_number() {
		return student_number;
	}
	public void setStudent_number(int student_number) {
		this.student_number = student_number;
	}

	
	public int getTime_Location_Checking() {
		return time_Location_Checking;
	}
	public void setTime_Location_Checking(int time_Location_Checking) {
		this.time_Location_Checking = time_Location_Checking;
	}
	public String getStart_Time() {
		return start_Time;
	}
	public void setStart_Time(String start_Time) {
		this.start_Time = start_Time;
	}
	public String getEnd_Time() {
		return end_Time;
	}
	public void setEnd_Time(String end_Time) {
		this.end_Time = end_Time;
	}
	public String getDay_Sum() {
		return day_Sum;
	}
	public void setDay_Sum(String day_Sum) {
		this.day_Sum = day_Sum;
	}
	public String getLocation_Name() {
		return location_Name;
	}
	public void setLocation_Name(String location_Name) {
		this.location_Name = location_Name;
	}
	public String getLocation_Address_Name() {
		return location_Address_Name;
	}
	public void setLocation_Address_Name(String location_Address_Name) {
		this.location_Address_Name = location_Address_Name;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getDiameter() {
		return diameter;
	}
	public void setDiameter(String diameter) {
		this.diameter = diameter;
	}
	public int getWifi_Checking() {
		return wifi_Checking;
	}
	public void setWifi_Checking(int wifi_Checking) {
		this.wifi_Checking = wifi_Checking;
	}
	public int getSound_Checking() {
		return sound_Checking;
	}
	public void setSound_Checking(int sound_Checking) {
		this.sound_Checking = sound_Checking;
	}
	public boolean isOn_Off_Selecting() {
		return on_Off_Selecting;
	}
	public void setOn_Off_Selecting(boolean on_Off_Selecting) {
		this.on_Off_Selecting = on_Off_Selecting;
	}
	public int getReceive_Check() {
		return receive_Check;
	}
	public void setReceive_Check(int receive_Check) {
		this.receive_Check = receive_Check;
	}
}
