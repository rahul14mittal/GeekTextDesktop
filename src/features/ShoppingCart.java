package features;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import main.MySQLConnect;

public class ShoppingCart {
	private Connection connect;
	private Statement statement;
	private ResultSet resultSet;
	private final MySQLConnect sql;
	
	public ShoppingCart(MySQLConnect sql) throws Exception{
		this.sql = sql;
	    connect = sql.getConnect();
	    statement = connect.createStatement();
	}
	
	public void runFeatures() throws Exception {
		//createCart(12);
		addToCart(12, 1, 1);
		addToCart(12, 1, 4);
		removeFromCart(12, 1, 2);
		listItems(12);
	}
	
	public void createCart(int user) throws Exception { //userID int PRIMARY KEY, bookCode int,quantity int
		//statement.executeUpdate("INSERT INTO ShoppingCart Values (" + user + ", NULL, NULL);");
	}
	
	public void addToCart(int user, int bookCode, int quantity) throws Exception {
		String columnLabel1 = "bookCode";
		String columnLabel2 = "quantity";
		int bc = 0;
		int q = 0;
		resultSet = statement.executeQuery("select bookCode from ShoppingCart where userID = " + user + " and bookCode = " + bookCode);
		if(resultSet.next())
			bc = resultSet.getInt(columnLabel1);
		
		resultSet = statement.executeQuery("select quantity from ShoppingCart where userID = " + user + " and bookCode = " + bookCode);
		if(resultSet.next())
			q = resultSet.getInt(columnLabel2);
			
		if(bc == bookCode) {
			quantity = quantity + q;
			statement.executeUpdate("update ShoppingCart set quantity = " + quantity + " where userID = " + user + " and bookCode = " + bookCode);
		}
		else 
			statement.executeUpdate("INSERT INTO ShoppingCart Values("+user+", "+bookCode+","+quantity+");");
	}
	
	public void removeFromCart(int user, int bookCode, int quantity) throws Exception {
		String columnLabel = "quantity";
		int remaining = 0;
		resultSet = statement.executeQuery("select quantity from ShoppingCart where userID = " + user + " and bookCode = " + bookCode);
		if(resultSet.next())
			remaining = resultSet.getInt(columnLabel);
				
		if (remaining > quantity) {
			quantity = remaining - quantity;
			statement.executeUpdate("update ShoppingCart set quantity = " + quantity + " where userID = " + user + " and bookCode = " + bookCode);
		}
		else if (quantity == remaining) {
			statement.executeUpdate("delete from ShoppingCart where userID = " + user + " and bookCode= " + bookCode);
		}
		else {
			System.out.println("Error: Trying to remove too many items!");
		}
	}
	
	public void listItems(int user) throws Exception{
		resultSet = statement.executeQuery("select bookCode, quantity from ShoppingCart where userID = " + user);
		System.out.println("Items in user " + user + "'s cart:");
		System.out.println("----------------------");
		sql.printResult(resultSet);
	}
}
