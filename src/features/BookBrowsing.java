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
    private ResultSet resultSet;
    private final MySQLConnect sql;

    public BookBrowsing(MySQLConnect sql) throws SQLException
    {
        this.sql = sql;
        connect = sql.getConnect();
        statement = connect.createStatement();
    }
    
    
    public void runFeature() throws SQLException
    {
//    	browseByGenre("FIC");
    	browseTopSellers();

    }
    
    public void browseByGenre(String genre) throws SQLException
    {	    
		resultSet = statement.executeQuery("select * from BookDetails where genre = '" + genre+"'");
		sql.printResult(resultSet);
    }
    
    public void browseTopSellers() throws SQLException
    {
    	resultSet = statement.executeQuery("select copiesSold from BookDetails order by copiesSold DESC LIMIT 10");
		sql.printResult(resultSet);
    }
    }