package com.crud.UserDaw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.crud.UserModel.UserModel;

public class UserDaw {
 public static Connection getConnection() {
	 Connection con = null;
	 try {
		 Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_crud","root","");
	 }catch(Exception e) {
		 System.out.print(e);
	 }
	 return con;
 }
 public static int savedata(UserModel u) {
	 int status = 0;
	 try {
		 Connection con = getConnection();
		 PreparedStatement ps = con.prepareStatement("insert into tb_registration(name,fname,email,address)values(?,?,?,?)");
		 ps.setString(1, u.getName());
		 ps.setString(2, u.getFname());
		 ps.setString(3, u.getEmail());
		 ps.setString(4, u.getAddress());
		 status = ps.executeUpdate();
	 }catch(Exception e) {
		 System.out.print(e);
	 }
	 return status;
 }
 
 public static List<UserModel> getdata(){
	 List<UserModel> list = new ArrayList<UserModel>();
	 try {
		 Connection con = getConnection();
		 PreparedStatement ps = con.prepareStatement("select * from tb_registration");
		 ResultSet rs = ps.executeQuery();
		 while(rs.next())
		 {
			 UserModel u = new UserModel();
			 u.setId(rs.getInt("id"));
			 u.setName(rs.getString("name"));
			 u.setFname(rs.getString("fname"));
			 u.setEmail(rs.getString("email"));
			 u.setAddress(rs.getString("address"));
			 list.add(u);
		 }
	 }catch(Exception e) {
		 System.out.print(e);
	 }
	 return list;
}
 
 public static UserModel getdatabyid(int id) {
	 UserModel u = null;
	 try {
		 Connection con = getConnection();
		 PreparedStatement ps = con.prepareStatement("select * from tb_registration where id=?");
		 ps.setInt(1, id);
		 ResultSet rs = ps.executeQuery();
		 while(rs.next())
		 {
			 u=new UserModel();
			 u.setId(rs.getInt("id"));
			 u.setName(rs.getString("name"));
			 u.setFname(rs.getString("fname"));
			 u.setEmail(rs.getString("email"));
			 u.setAddress(rs.getString("address"));
	 }
	 }catch (Exception e) {
		 System.out.print(e);
	}
	 return u;
 }
 
 public static int updatedata(UserModel u) {
	 int status=0;
	 try {
		 Connection con = getConnection();
		 PreparedStatement ps = con.prepareStatement("update tb_registration set name=?, fname=?, email=?, address=? where id=?");
		
			 ps.setString(1, u.getName());
			 ps.setString(2, u.getFname());
			 ps.setString(3, u.getEmail());
			 ps.setString(4, u.getAddress());
			 ps.setInt(5, u.getId());
			 
			 status = ps.executeUpdate();
		
		 
	 }
	 catch (Exception e) {
		 System.out.print(e);
	}
	 return status;
 }
 
 public static int deletereg(int id) {
	 int status = 0;
	 try {
		 Connection con = getConnection();
		 PreparedStatement ps = con.prepareStatement("delete from tb_registration where id=?");
		 ps.setInt(1, id);
		 status = ps.executeUpdate();
	 }catch (Exception e) {
		 System.out.print(e);
	}
	 return status;
 }
}
