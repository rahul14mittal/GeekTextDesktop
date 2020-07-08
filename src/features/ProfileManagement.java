package features;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import main.MySQLConnect;


public class ProfileManagement {

    private Connection connect;
    private Statement statement;
    private ResultSet resultSet;
    private final MySQLConnect sql;

    public ProfileManagement(MySQLConnect sql)
    {
        this.sql = sql;
    }

    public void runFeature()
    {

    }

}