package vagaService.vagas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 

public class ConectaDB {
    private static Connection conn = null;
    private static ConectaDB conectaBD = null;
    
    String url = "jdbc:mysql://localhost:3306/senai";
    String username = "root";
    String password = "h27041998";
    String driver = "com.mysql.jdbc.Driver";
    
	private void ConectaDB() {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    public static ConectaDB getInstance() {
        if (conectaBD == null) {
            conectaBD = new ConectaDB();
        }
        return conectaBD;
    }
    
    public Connection getConnection() {
            try {
                if(conn == null || conn.isClosed()) {
                    conn = DriverManager.getConnection(url, username, password);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            
            return conn;
    }
    
    public void finalizar() {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
 
