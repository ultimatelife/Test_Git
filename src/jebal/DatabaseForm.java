package jebal;

import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.Array;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.NClob;
import java.sql.ParameterMetaData;
import java.sql.PreparedStatement;
import java.sql.Ref;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.RowId;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.SQLXML;
import java.sql.Statement;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DatabaseForm {

	static Context context;
	static DataSource ds;
	static Connection conn;

	public static void Construct_Database() {
		try {
			ds = DatasourceFactory.getMySQLDataSource();
			conn = ds.getConnection();
		} catch (Exception e) {
			System.out.println();
		}
	}

	public static ArrayList<Teacher_Info> Select_Techer_Info(String id) {
		Construct_Database();
		
		Teacher_Info ti;
		ArrayList<Teacher_Info> arr_ti = new ArrayList<Teacher_Info>();

		ResultSet rs = null;
		String query_1 = "select * from teacher_info ";
		String query_2 = " where id = ";

		try {
			Statement state = conn.createStatement();

			if (id == "") {
				rs = state.executeQuery(query_1);
			} else {
				rs = state.executeQuery(query_1 + query_2 + "'" + id + "'");
			}

			while (rs.next()) {
				ti = new Teacher_Info();
				ti.setNum(rs.getInt(1));
				ti.setGrade(rs.getInt(2));	
				ti.setClass_number(rs.getInt(3));
				ti.setName(rs.getString(4));
				ti.setId(rs.getString(5));
				ti.setPassword(rs.getString(6));
				arr_ti.add(ti); // add Teacher_Info Instance
			}

			state.close();
		} catch (Exception e) {
			System.out.println();
		}

		return arr_ti;
	}

	public static ArrayList<Student_Info> Select_Student_Info(String id) {
		ArrayList<Student_Info> arr_si = new ArrayList<Student_Info>();
		Student_Info si;
		ResultSet rs = null;
		String query_1 = "select * from student_info";
		String query_2 = " where id = ";

		try {
			Construct_Database();
			Statement state = conn.createStatement();

			if (id == "") {
				rs = state.executeQuery(query_1);
			} else {
				rs = state.executeQuery(query_1 + query_2 + "'" + id + "'");
			}

			while (rs.next()) {
				si = new Student_Info();

				si.setNum(rs.getInt(1));
				si.setGrade(rs.getInt(2));
				si.setClass_number(rs.getInt(3));
				si.setStudent_number(rs.getInt(4));
				si.setName(rs.getString(5));
				si.setId(rs.getString(6));
				si.setPassword(rs.getString(7));

				arr_si.add(si);
			}

			state.close();
		} catch (Exception e) {
			System.out.println();
		}

		return arr_si;
	}

	public static void Update_Studnet_Info(String id, String ip,
			boolean receive_check) {
		String query = "update student_info set ip_address = ?, receive_check  = ? where id = ?";
		PreparedStatement p_state;
		Construct_Database();
		try {
			p_state = conn.prepareStatement(query);
			p_state.setString(1, ip);
			p_state.setBoolean(2, receive_check);
			p_state.setString(3, id);
			p_state.executeUpdate();

			p_state.close();
		} catch (Exception e) {
			System.out.println();
		}
	}

	public static ArrayList<Setting> Select_Setting(int student_number,
			boolean all_or_one) {
		ArrayList<Setting> arr_se = new ArrayList<Setting>();
		Setting se;

		ResultSet rs = null;
		String query_1 = "select * from setting ";
		String query_2 = " where student_number = ";
		String query_3 = " receive_Check != ";

		try {
			Construct_Database();
			Statement state = conn.createStatement();

			if (student_number < 0) {
				rs = state.executeQuery(query_1);
			} else if (all_or_one == true) {
				rs = state.executeQuery(query_1 + query_2 + "'"
						+ student_number + "'");
			} else {
				rs = state.executeQuery(query_1 + query_2 + "'"
						+ student_number + "' and " + query_3 + "'" + 0 + "'");
			}

			while (rs.next()) {
				se = new Setting();

				se.setNum(rs.getInt("num"));
				se.setName(rs.getString("name"));
				se.setStudent_number(rs.getInt("student_number"));
				se.setTime_Location_Checking(rs
						.getInt("time_Location_Checking"));
				se.setStart_Time(rs.getString("start_Time"));
				se.setEnd_Time(rs.getString("end_Time"));
				se.setDay_Sum(rs.getString("day_Sum"));
				se.setLocation_Name(rs.getString("location_Name"));
				se.setLocation_Address_Name(rs
						.getString("location_Address_Name"));
				se.setLongitude(rs.getString("longitude"));
				se.setLatitude(rs.getString("latitude"));
				se.setDiameter(rs.getString("diameter"));
				se.setWifi_Checking(rs.getInt("wifi_Checking"));
				se.setSound_Checking(rs.getInt("sound_Checking"));
				se.setOn_Off_Selecting(rs.getBoolean("on_Off_Selecting"));
				se.setReceive_Check(rs.getInt("receive_Check"));

				arr_se.add(se);
			}

			state.close();

		} catch (Exception e) {
			System.out.println();
		}

		return arr_se;
	}

	public static void Insert_Setting(Setting se) {
		Construct_Database();
		String query = "insert into setting values (null, ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement p_state = conn.prepareStatement(query);

			p_state.setString(1, se.getName());
			p_state.setInt(2, se.getStudent_number());
			p_state.setInt(3, se.getTime_Location_Checking());
			p_state.setString(4, se.getStart_Time());
			p_state.setString(5, se.getEnd_Time());
			p_state.setString(6, se.getDay_Sum());
			p_state.setString(7, se.getLocation_Name());
			p_state.setString(8, se.getLocation_Address_Name());
			p_state.setString(9, se.getLongitude());
			p_state.setString(10, se.getLatitude());
			p_state.setString(11, se.getDiameter());
			p_state.setInt(12, se.getWifi_Checking());
			p_state.setInt(13, se.getSound_Checking());
			p_state.setBoolean(14, se.isOn_Off_Selecting());
			p_state.setInt(15, se.getReceive_Check());

			p_state.executeUpdate();
			p_state.close();

		} catch (Exception e) {
			System.out.println();
		}
	}

	public static void Update_Setting(Setting se) {

		String query_1 = "update setting set name = ?" + ", student_number = ?"
				+ ", time_Location_Checking  = ?" + ", start_Time = ? "
				+ ", end_Time =? " + ", day_Sum  = ?" + ", location_Name = ?"
				+ ", location_Address_Name = ?" + ", longitude = ?"
				+ ", latitude = ? " + ", diameter = ?" + ", wifi_Checking = ? "
				+ ", sound_Checking = ? " + ", on_Off_Selecting = ?"
				+ ", receive_Check = ?";

		String query_2 = " where num = " + "'" + se.getNum() + "'";

		try {
			Construct_Database();
			PreparedStatement p_state = conn
					.prepareStatement(query_1 + query_2);

			p_state.setString(1, se.getName());
			p_state.setInt(2, se.getStudent_number());
			p_state.setInt(3, se.getTime_Location_Checking());
			p_state.setString(4, se.getStart_Time());
			p_state.setString(5, se.getEnd_Time());
			p_state.setString(6, se.getDay_Sum());
			p_state.setString(7, se.getLocation_Name());
			p_state.setString(8, se.getLocation_Address_Name());
			p_state.setString(9, se.getLongitude());
			p_state.setString(10, se.getLatitude());
			p_state.setString(11, se.getDiameter());
			p_state.setInt(12, se.getWifi_Checking());
			p_state.setInt(13, se.getSound_Checking());
			p_state.setBoolean(14, se.isOn_Off_Selecting());
			p_state.setInt(15, se.getReceive_Check());

			p_state.executeUpdate();
			p_state.close();

		} catch (Exception e) {
			System.out.println();
		}
	}

	public static void Delete_Setting(int num) {

		String query = "delete from setting where num = ?";

		try {
			Construct_Database();
			PreparedStatement p_state = conn.prepareStatement(query);

			p_state.setInt(1, num);

			p_state.executeUpdate();
			p_state.close();

		} catch (Exception e) {
			System.out.println();
		}
	}
}
