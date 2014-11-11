package jebal;

import java.util.ArrayList;

public class DBtest {
	public static void main(String arg[]){
		ArrayList<Student_Info> arr_si = DatabaseForm.Select_Student_Info("ultimatelife");
		for(int i = 0 ; i < arr_si.size() ; i++){
			System.out.println(arr_si.get(0).getId());
		}
	}
}
