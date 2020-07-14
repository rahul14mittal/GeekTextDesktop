package main;

import java.util.Scanner;
import features.*;

public class Main {

	public static void main(String[] args) throws Exception {
		
		Scanner sc= new Scanner(System.in);
		System.out.println("MySQL Connect\nEnter username: ");
		String user = sc.nextLine();
		System.out.println("\nEnter password: ");
		String passwd = sc.nextLine();
		
		MySQLConnect sql = new MySQLConnect(user, passwd);
		sql.connect();
		System.out.println("Connection successful.");
		
		//This run the script to create the database with empty tables
		sql.executeScript("sql/createTables.sql");
		
//		BookBrowsing bb = new BookBrowsing(sql);
//      bb.runFeature();
        
//      BookDetails bd = new BookDetails(sql);
//      bd.runFeature();
        
//		UserReview myRev = new UserReview(sql);
//		myRev.runFeature();
		
//		ProfileManagement pm = new ProfileManagement(sql);
//		pm.runFeature();
		
	}
	
	

}
