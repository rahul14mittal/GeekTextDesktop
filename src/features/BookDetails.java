package features;

import java.sql.*;
import main.MySQLConnect;

public class BookDetails {
	
	private Connection connect;
	private Statement statement;
	private ResultSet resultSet;
	private final MySQLConnect sql;
	
	public BookDetails(MySQLConnect sql)
	{
		this.sql = sql;
	}
	
    public void runFeature() throws Exception
    {
    	getBookDetails("0189");
    }
	
	public void createBook(int bookNum, String title, String description, double price, 
			String author, String genre, String publisher, int year, int copiesSold) 
	{
		
		
	}
	
	public void createAuthor(String firstName, String lastName, String bio, String pub) 
	{
		
	}
	
	public void getBookDetails(String bookNum) throws Exception 
	{
	    connect = sql.getConnect();
	    statement = connect.createStatement();
		resultSet = statement.executeQuery("select * from BookDetails where bookCode = " + bookNum);
		ResultSetMetaData metaData = resultSet.getMetaData();
		sql.getInfo(resultSet);
	}
}
