package main;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) throws Exception {
		
		Scanner sc= new Scanner(System.in);
		System.out.println("MySQL Connect\nEnter username: ");
		String user = sc.nextLine();
		System.out.println("\nEnter password: ");
		String passwd = sc.nextLine();
		
		MySQLConnect sql = new MySQLConnect(user, passwd);
		sql.readDatabase();

	}

}
