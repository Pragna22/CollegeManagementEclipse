package Database;
import java.sql.*;
public class jdbcutil {

	 private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	    private static final String URL = "jdbc:mysql://127.0.0.1:3306/college_project";
	    private static final String USERNAME = "root";
	    private static final String PASSWORD = "Pragna@05";

	    private static Connection conn = null;

	    public static Connection getConnection() throws SQLException, ClassNotFoundException {
	    	try
	    	{
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
           
        } catch (SQLException e) {
            e.printStackTrace();
        }
	    	return conn;
      
    }
}
