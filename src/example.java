import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class example {
	private static final String CREATE_TABLE_SQL="CREATE TABLE dibyanshu.users ("
            + "UID INT NOT NULL,"
            + "NAME VARCHAR(45) NOT NULL,"
            + "DOB DATE NOT NULL,"
            + "EMAIL VARCHAR(45) NOT NULL,"
            + "PRIMARY KEY (UID))";

public static void main(String[] args) {
String jdbcUrl = "jdbc:mysql://localhost:3306/dibyanshu";
String username = "root";
String password = "root";
final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 

Connection conn = null;
Statement stmt = null;

try {
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(jdbcUrl, username, password);
stmt = conn.createStatement();

stmt.executeUpdate(CREATE_TABLE_SQL);

System.out.println("Table created");

} catch (SQLException e) {
e.printStackTrace();
}
catch(Exception e)
{
	e.printStackTrace();
}
finally {
try {
// Close connection
if (stmt != null) {
  stmt.close();
}
if (conn != null) {
  conn.close();
}
} catch (Exception e) {
e.printStackTrace();
}
}
}
}
