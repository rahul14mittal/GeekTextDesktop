package features;

import java.sql.*;
import main.MySQLConnect;

public class BookDetails {
	
	private Connection connect;
	private Statement statement;
	private ResultSet resultSet;
	private final MySQLConnect sql;
	
	public BookDetails(MySQLConnect sql) throws Exception
	{
		this.sql = sql;
	    connect = sql.getConnect();
	    statement = connect.createStatement();
	}
	
    public void runFeature() throws Exception
    {
    	getBookDetails("0189");
    	createAuthor(28, "white","walter","bio","hhh");
    }
	
	public void createBook(int bookNum, String title, String description, double price, 
			String author, String genre, String publisher, int year, int copiesSold) 
	{
		
		
	}
	
	public void createAuthor(int authorNum, String firstName, String lastName, String bio, String pub) throws Exception
	{
		statement.executeUpdate("INSERT INTO Author Values ("+authorNum+ ", '" +lastName+ "', '"+ firstName+ "', '" +bio+ "', '" +pub +"');");
	}
	
	public void getBookDetails(String bookNum) throws Exception 
	{
		resultSet = statement.executeQuery("select * from BookDetails where bookCode = " + bookNum);
		ResultSetMetaData metaData = resultSet.getMetaData();
		sql.printResult(resultSet);
	}
}
