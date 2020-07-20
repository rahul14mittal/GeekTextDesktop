package features;
import java.sql.*;
import main.MySQLConnect;

public class UserReview {
	private MySQLConnect sql;
	
	private Connection connect;
	private Statement statement;
	private ResultSet resultSet;
	public UserReview(MySQLConnect sql) throws SQLException {
		this.sql = sql;
		connect = sql.getConnect();
		statement = connect.createStatement();
	}
	
	public void runFeature() throws Exception {
		createReview(1, 3, "Book was great", "3.0", "'1998-02-01'");
		createReview(1, 2, "Good read", "2.0", "'2005-03-02'");
		createReview(1, 4, "Not the best", "1.5", "'1994-06-02'");
		createReview(2, 1, "My favorite", "5.0", "'2003-08-02'");
		createReview(2, 3, "Would recommend", "4.5", "'2011-12-02'");
		listByRating(1);
	}
	
	public void createReview(int bookCode, int userID, String userComment, String rating, String date) throws Exception {
		statement.executeUpdate("INSERT INTO BookRatings Values("+bookCode+", " +userID+", '" +userComment+"', " +
	rating+", " +date+");");
	pullAvg(bookCode);
	}
	
	public void pullAvg(int bookCode) throws Exception 
	{
		resultSet = statement.executeQuery("SELECT AVG(rating) FROM bookratings WHERE bookCode = " + bookCode + ";");
		sql.printResult(resultSet);
		System.out.println(resultSet);
	}
	public void listByRating(int bookCode) throws Exception 
	{
		resultSet = statement.executeQuery("SELECT rating, usercomment FROM bookratings WHERE bookCode = " + bookCode + " "
				+ "ORDER BY rating;");
		sql.printResult(resultSet);
		System.out.println(resultSet);
	}

}
