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
		
		/* Adam's Feature Object
		UserReview myRev = new UserReview(sql);
		*/
		
		//BookBrowsing bb = new BookBrowsing(sql);
        //bb.runFeature();

        //BookDetails bd = new BookDetails(sql);
        //bd.runFeature();

        /*everyone should add their own feature class and
		create a runFeature method, which is basically your main method*/
	}
	
	

}
