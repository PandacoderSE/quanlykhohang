import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.cj.jdbc.DatabaseMetaData;
import com.mysql.cj.jdbc.Driver;

public class JDBCUtil {
	public static Connection getConnection() {
		Connection c= null ; 
		
		try {
			//đăng ký mysql driver 
			DriverManager.registerDriver(new com.mysql.jdbc.Driver() );
			//link 
			//port 
			//databasename
			//passwork 
			String url ="jdbc:mySQL://localhost:3306/nhasach" ; 
			String username = "root";
			String password = "";
			//tạo kết nối 
			c = DriverManager.getConnection(url, username, password) ; 
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return c ; 
	}
	public static void printInfo(Connection c) {
		if(c!=null) {
			try {
				DatabaseMetaData mtdt = (DatabaseMetaData) c.getMetaData();
				System.out.println(mtdt.getDatabaseProductName());
				System.out.println(mtdt.getDatabaseProductVersion());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	//ngắt kết nối 
	public static void closeConnection(Connection c) {
		try {
			if(c!=null) {
				c.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
        public static void main(String[] args) {
                Connection connection = JDBCUtil.getConnection() ; 
		System.out.println(connection);
		JDBCUtil.printInfo(connection);
		
		JDBCUtil.closeConnection(connection);
		//JDBCUtil.printInfo(connection);
    }
}