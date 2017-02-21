package com.cug;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateConnection {
	Connection conn = null;
	static {
		try {
			Class.forName("net.sourceforge.jtds.jdbc.Driver");
			System.out.println("��ݿ�����سɹ���");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	public Connection getConn(){
		String url = "jdbc:jtds:sqlserver://yuyang:1433;DatabaseName=BAOMING";
		String userName = "sa";
		String passWord = "2016";
		try {
			conn = DriverManager.getConnection(url,userName,passWord);
			if(conn!=null){
				System.out.println("��ݿ����ӳɹ�");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return conn;
		
	}
	/*
	public static void main(String[] args) {
		CreateConnection login = new CreateConnection();
		Connection conn = login.getConn();
		try {
			Statement statement = conn.createStatement();
			ResultSet res = statement.executeQuery("select * from dbo.Table_1");
			while(res.next()){
				String email = res.getString(1);
				String password = res.getString(2);
				System.out.println("����Ϊ"+email+",����Ϊ"+password+"\n");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	*/
}
