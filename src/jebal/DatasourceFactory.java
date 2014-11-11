package jebal;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp.BasicDataSource;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
 
public class DatasourceFactory {
 
    public static DataSource getMySQLDataSource() throws SQLException {
        Properties props = new Properties();
        FileInputStream fis = null;
        MysqlDataSource mysqlDs = new MysqlDataSource();
        
        try {
	            fis = new FileInputStream("F:\\Study\\Programing\\JSP\\LocationService\\db.properties");
	            props.load(fis);
	            mysqlDs.setURL(props.getProperty("MYSQL_DB_URL"));
	            mysqlDs.setUser(props.getProperty("MYSQL_DB_USERNAME"));
	            mysqlDs.setPassword(props.getProperty("MYSQL_DB_PASSWORD"));
	        } catch (IOException e) {
	            e.printStackTrace();
	    }
        return mysqlDs;
    }
	}