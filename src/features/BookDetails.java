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
    	//createAuthor(28, "white","walter","bio","hhh");
    	//createBook("2525","25", "Harry Potter","BAN", "20.35", "FIC", "2018", "20", "desc", "default");
    	findBookByAuthor("schrader");
    }
	
	public void createBook(String bookCode, String authorNum,String title, String description, String price, 
			String genre, String pubCode, String year, String copiesSold, String averageRating) throws Exception
	{
		statement.executeUpdate("INSERT INTO BookDetails Values ("+bookCode+ ", " +authorNum+ ", '"+title+ "', '" +pubCode+ "', " +price 
				+", '" +  genre + "', " + year + ", " + copiesSold + ", '" + description+ "', " + averageRating+");");
	}
	
	public void createAuthor(int authorNum, String firstName, String lastName, String bio, String pub) throws Exception
	{
		statement.executeUpdate("INSERT INTO Author Values ("+authorNum+ ", '" +lastName+ "', '"+ firstName+ "', '" +bio+ "', '" +pub +"');");
	}
	
	public void getBookDetails(String bookNum) throws Exception 
	{
		resultSet = statement.executeQuery("select * from BookDetails where bookCode = " + bookNum);
		sql.printResult(resultSet);
	}
	
	public void findBookByAuthor(String authorLast) throws Exception
	{
		resultSet = statement.executeQuery("select * from BookDetails where authorNum in (select authorNum from Author where authorLast = '" + authorLast +"')");
		sql.printResult(resultSet);
	}
}

