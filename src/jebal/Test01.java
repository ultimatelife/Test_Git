//package jebal;
//
//import java.sql.Connection;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//
//import javax.sql.DataSource;
//
//public class Test01 {
// 
//    public static void main(String[] args) {
//         
//        testDataSource("mysql");
//        System.out.println("**********");
// 
//    }
// 
//    private static void testDataSource(String dbType) {
//        DataSource ds = null;
//        if("mysql".equals(dbType)){
//        }else if("oracle".equals(dbType)){
//        }else{
//            System.out.println("invalid db type");
//            return;
//        }
//         
//        Connection con = null;
//        Statement stmt = null;
//        ResultSet rs = null;
//        
//        try {
//            con = ds.getConnection();
//            stmt = con.createStatement();
//            rs = stmt.executeQuery("select * from teacher_info where id = 'ultimatelife';");
//            while(rs.next()){
//            	System.out.println(rs.getInt(1));
//            	System.out.println(rs.getString(5));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }finally{
//                try {
//                    if(rs != null) rs.close();
//                    if(stmt != null) stmt.close();
//                    if(con != null) con.close();
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                }
//        }
//    }
// 
//}