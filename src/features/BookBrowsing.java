package features;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import main.MySQLConnect;


public class BookBrowsing {

    private Connection connect;
    private Statement statement;
    private ResultSet resultSet;
    private final MySQLConnect sql;

    public BookBrowsing(MySQLConnect sql)
    {
        this.sql = sql;
    }

    public void runFeature()
    {

    }

}