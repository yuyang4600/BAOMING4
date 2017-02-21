package com.cug;

import java.sql.*;
import java.util.*;

public class UsersCl {
	private Statement statement;
	private ResultSet result;
	private Connection conn;
	
	private int pageSize = 5;   //每页有多少条记录
	private int rowCount = 0;  //一共有多少条记录
	private int pageCount = 0; //共有多少页
	
	public boolean Edit(String name,String sex,String birth,String place,String grade,String pro,String num,String email,String addre,String post){
		
		        boolean b = false;
		
				try {
					conn = new CreateConnection().getConn();
				    statement = conn.createStatement();
					int c = statement.executeUpdate("insert into Table_2 values ('"+name+"','"+sex+"','"+birth+"','"+place+"','"+grade+"','"+pro+"','"+num+"','"+email+"','"+addre+"','"+post+"')");
					
					if(c == 1){
						b = true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					this.close();
				}
				
				return b;
	}
	
	public boolean Hello(String email,String password) {
		boolean b = false;
		try {
			conn = new CreateConnection().getConn();
			PreparedStatement statement=conn.prepareStatement("insert into Table_5 values (?,?)");
			statement.setString(1,email); //用set方法传入参数
			statement.setString(2, password); 
			int c = statement.executeUpdate();  
			
			if(c==1){
				b = true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		return b;
	}
	
	public int login(String name,String passwd) {
		int c = 0;
		try{
			conn = new CreateConnection().getConn();
		    statement = conn.createStatement();
			Statement statement = conn.createStatement();
			ResultSet res = statement.executeQuery("select * from dbo.Table_5");
			while(res.next()){
				String em = res.getString(2);
				String pass = res.getString(3);
				
				if(name.equals(em)&&passwd.equals(pass)){
					c = 1;
				}else if(name.equals(em)&&!passwd.equals(pass)){
					c = 2;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return c;
		
	}
	
public String AjaxSer(String name){
	String password = null;
	try {
		conn = new CreateConnection().getConn();
		statement = conn.createStatement();
		Statement statement = conn.createStatement();
		ResultSet res = statement.executeQuery("select * from dbo.Table_5");
		while(res.next()){
			String em = res.getString(2);
			String pass = res.getString(3);
			
			if(name.equals(em)){
				password = pass;
			}
		}
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return password;
}
	
public int getPageCount(){
		
		try {
			
	     	conn = new CreateConnection().getConn();
	     	statement = conn.createStatement();
	     	result = statement.executeQuery("select count(*) from Table_5");
	     	
	     	if(result.next()){
	     		rowCount = result.getInt(1);
	     		}
	     		if(rowCount%pageSize == 0){
	     			pageCount = rowCount/pageSize;
	     		}else{
	     			pageCount = (rowCount/pageSize)+1;
	     		}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return pageCount;
	}


public ArrayList getUsersByPage(int pageNow){
	ArrayList al = new ArrayList();
	
	try {
		conn = new CreateConnection().getConn();
		statement = conn.createStatement();
		result = statement.executeQuery("select top "+pageSize
                 +" * from Table_5 where ID not in (select top "+
                 pageSize*(pageNow-1)+" ID from Table_5)");
		
		while(result.next()){
			UserInfo_1 ub = new UserInfo_1();
			ub.setID(result.getInt(1));
			ub.setEmail(result.getString(2));
			
			al.add(ub);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}finally{
		this.close();
	}
	return al;
}

	public boolean delete(String name){
		
		boolean b = false;
		
		try {
			conn = new CreateConnection().getConn();
			statement = conn.createStatement();
			
			int a = statement.executeUpdate("delete from Table_2 where name='"+name+"'");
			if(a == 1){
				b = true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		return b;
	}
	
	public void close(){
		try {
			if(statement!=null){
				statement.close();
				statement = null;
			}
			if(conn!=null){
				conn.close();
				conn = null;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
