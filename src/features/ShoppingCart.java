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
}
