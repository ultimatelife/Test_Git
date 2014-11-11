package jebal;

import java.awt.GridLayout;
import java.util.ArrayList;

import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextArea;

class MakeFrame extends JFrame{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ArrayList<JPanel> arr_Panel = new ArrayList<JPanel>();
	ArrayList<JTextArea> arr_Name = new ArrayList<JTextArea>();
	ArrayList<JTextArea> arr_Student_Number = new ArrayList<JTextArea>();
	ArrayList<JCheckBox> arr_Check = new ArrayList<JCheckBox>();
	
	JPanel temp_Panel;
	JTextArea temp_Name;
	JTextArea temp_Student_Number;
	JCheckBox temp_CheckBox;
	
	GridLayout gl_1 = new GridLayout(1,3,1,1);
	
	public MakeFrame() {
		ArrayList<Student_Info> si = DatabaseForm.Select_Student_Info("");
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(600, 600);
		
		for(int i = 0 ; i < si.size() ; i++){
			temp_Panel = new JPanel();
			temp_Name = new JTextArea();
			temp_Student_Number = new JTextArea();
			temp_CheckBox = new JCheckBox();
			
			temp_Panel.setLayout(gl_1);
			temp_Name.setText(si.get(i).getName());
			temp_Student_Number.setText("" + (si.get(i).getStudent_number()));
			
			System.out.println(si.get(i).getName());
			System.out.println((si.get(i).getStudent_number()));
			
			temp_Panel.add(temp_Name);
			temp_Panel.add(temp_Student_Number);
			temp_Panel.add(temp_CheckBox);
			
			this.add(temp_Panel);
			arr_Panel.add(temp_Panel);
		}
		
		setVisible(true);
		
	}
}