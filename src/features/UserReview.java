package features;

import main.MySQLConnect;

public class UserReview {
	private MySQLConnect sql;
	public UserReview(MySQLConnect sql) {
		this.sql = sql;
	}
	public void Hi(){
		System.out.println("Hello World");
	}

}
