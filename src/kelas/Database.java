package kelas;

public class Database {
	static String user = "root";
	static String pass = "root";
	
	public static String getUser() {
		return Database.user;
	}
	public static void setUser(String user) {
		Database.user = user;
	}
	public static String getPass() {
		return pass;
	}
	public static void setPass(String pass) {
		Database.pass = pass;
	}
}