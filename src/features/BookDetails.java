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
	
	public void getBookDetails(String bookNum) throws Exception 
	{
	    connect = sql.getConnect();
	    statement = connect.createStatement();
		resultSet = statement.executeQuery("select * from BookDetails where bookCode = " + bookNum);
		ResultSetMetaData metaData = resultSet.getMetaData();
		int size = 7;
		//resultSet.getArray(1);
		while(resultSet.next())
		{
			for(int col = 1; col <= metaData.getColumnCount(); col ++)
			{

				System.out.println(metaData.getColumnName(col) + ": " + resultSet.getString(col));
			}
		}
		/*while(resultSet.next())
		{
			System.out.println("here");
			System.out.println(resultSet.getString(1));
			
		}*/
	}
	
	

}
