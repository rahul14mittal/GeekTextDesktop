package main;

import java.util.Scanner;
import features.BookDetails;

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
		BookDetails bd = new BookDetails(sql);
		sql.getInfo(bd.getBookDetails("0189"));
		
	}
	
	

}
