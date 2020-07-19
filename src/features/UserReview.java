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
		createReview(1, 3, "Book was great", "HOR", "3.0", "02/01/1998");
	}
	
	public void createReview(int bookCode, int userID, String userComment, String genre, String rating, String date) throws Exception {
		statement.executeUpdate("INSERT INTO BookRatings Values("+bookCode+", " +userID+", '" +userComment+"', '" +genre+"', " +
	rating+", " +date+");");
	pullRatings(bookCode);
	}
	
	public void pullRatings(int bookCode) throws Exception 
	{
		resultSet = statement.executeQuery("SELECT AVG(rating) FROM bookratings WHERE bookCode = " + bookCode + ";");
		sql.printResult(resultSet);
		System.out.println(resultSet);
	}

}
