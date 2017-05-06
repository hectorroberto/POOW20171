package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	public static Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(
            		"jdbc:mysql://localhost/agenda", "root", "root");
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
	}

}
