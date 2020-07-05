package main;

import java.sql.*;

public class MySQLConnect {

	final private String host = "localhost"; // default host is localhost
	private String user, passwd;
	final private String db = "geektext";

	private Connection connect;
	private Statement statement;
	private ResultSet resultSet;

	public MySQLConnect(String user, String passwd)
	{
		this.user = user;
		this.passwd = passwd;
	}
	
	public void readDatabase() throws Exception {

		// This will load the MySQL driver, each DB has its own driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		// Setup the connection with the DB
		connect = DriverManager.getConnection("jdbc:mysql://" + host + "/"+db+"?" + "user=" + user + "&password=" + passwd );
		   
		// Statements allow to issue SQL queries to the database
		statement = connect.createStatement();
		resultSet = statement.executeQuery("select * from test");
		writeMetaData(resultSet);
	}

	private void writeMetaData(ResultSet resultSet) throws SQLException {
		// Now get some metadata from the database
		// Result set get the result of the SQL query

		System.out.println("The columns in the table are: ");

		System.out.println("Table: " + resultSet.getMetaData().getTableName(1));
		for (int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++) {
			System.out.println("Column " + i + " " + resultSet.getMetaData().getColumnName(i));
		}
	}

}
