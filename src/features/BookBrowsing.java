package features;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import main.MySQLConnect;


public class BookBrowsing {

    private Connection connect;
    private Statement statement;
//    private ResultSet resultSet;
    private final MySQLConnect sql;

    public BookBrowsing(MySQLConnect sql)
    {
        this.sql = sql;
        connect = sql.getConnect();
    }
    
    
    public void runFeature() throws SQLException
    {
    	browseByGenre("fiction");

    }
    
    public void browseByGenre(String genre) throws SQLException
    {
	    statement = connect.createStatement();
		ResultSet resultSet = statement.executeQuery("select * from BookDetails where genre = " + genre);
		sql.getInfo(resultSet);
    }

}