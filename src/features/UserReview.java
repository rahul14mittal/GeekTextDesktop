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
	
	public void runFeature() throws SQLException {
		createReview("0189", "3333", "Book was great", "HOR", "3.0", "02/01/1998");
	}
	
	public void createReview(String bookCode, String userID, String userComment, String genre, String rating, String date) throws SQLException {
		statement.executeUpdate("INSERT INTO BookRatings Values('"+bookCode+"', '" +userID+"', '" +userComment+"', '" +genre+"', " +
	rating+", " +date+");");
	}
	
	

}
