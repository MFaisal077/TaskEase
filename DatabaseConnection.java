import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/task_manager";
    private static final String USER = "root"; // Change if necessary
    private static final String PASSWORD = "Faisal@123";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connected to MySQL successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void main(String[] args) {
        getConnection(); // Test connection
    }
}
