package com.cglia.db;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp.BasicDataSource;

public class DbUtil {
	private static BasicDataSource dataSource;

    static {
    	 dataSource = new BasicDataSource();
         dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
         dataSource.setUrl("jdbc:mysql://localhost:3306/projectmanagement");
         dataSource.setUsername("root");
         dataSource.setPassword("Aratisahu@668");
     }


    public static Connection getConnection() throws SQLException {
        Connection connection = dataSource.getConnection();
        return connection;
    }

}
