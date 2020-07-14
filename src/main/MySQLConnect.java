package main;

import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.*;

public class MySQLConnect {

	final private String host = "localhost"; // default host is localhost
	private String user, passwd;
	final private String db = "geektext";

	private Connection connect;
	private Statement statement;
	private ResultSet resultSet;

	public MySQLConnect(String user, String passwd) {
		this.user = user;
		this.passwd = passwd;
	}

	public void connect() throws Exception {
		// This will load the MySQL driver, each DB has its own driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		// Setup the connection with the DB
		connect = DriverManager
				.getConnection("jdbc:mysql://" + host + "/" + db + "?" + "user=" + user + "&password=" + passwd);
	}

	public void readDatabase() throws Exception {
		// Statements allow to issue SQL queries to the database
		statement = connect.createStatement();
		resultSet = statement.executeQuery("select * from BookDetails");
		writeMetaData(resultSet);
	}

	public Connection getConnect() {
		return connect;
	}

	public void writeMetaData(ResultSet resultSet) throws SQLException {
		// Now get some metadata from the database
		// Result set get the result of the SQL query

		System.out.println("The columns in the table are: ");
		System.out.println("Table: " + resultSet.getMetaData().getTableName(1));
		System.out.println(resultSet.getMetaData());

	}

	public void printResult(ResultSet resultSet) throws SQLException {
		ResultSetMetaData metaData = resultSet.getMetaData();
		while (resultSet.next()) {
			for (int col = 1; col <= metaData.getColumnCount(); col++) {

				System.out.println(metaData.getColumnName(col) + ": " + resultSet.getString(col));
			}
			System.out.println("------------");
		}
	}

	public void executeScript(String sqlPath) throws Exception {

		BufferedReader reader = null;
		if (connect == null)
			connect();
		statement = connect.createStatement();
		// initialize file reader
		reader = new BufferedReader(new FileReader(sqlPath));
		String line = null;
		// read script line by line
		while ((line = reader.readLine()) != null) {
			// execute query
			statement.execute(line);
		}

		// close file reader
		if (reader != null) {
			reader.close();
		}

	}
}
