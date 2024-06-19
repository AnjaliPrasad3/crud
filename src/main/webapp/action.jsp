<%@page import="com.crud.UserDaw.UserDaw"%>
<%@page import="com.crud.UserModel.UserModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String btn = request.getParameter("btn");
if(btn.equals("addregistration")){
	String name = request.getParameter("name");
	String fname = request.getParameter("fname");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");



	UserModel u = new UserModel();
	u.setName(name);
	u.setFname(fname);
	u.setEmail(email);
	u.setMobile(mobile);
	u.setAddress(address);

	int i = UserDaw.savedata(u);
	if(i>0){
		response.sendRedirect("success.jsp");
	} 
	else {
		response.sendRedirect("failure.jsp");
	}
}
if(btn.equals("updateregistration")){
	int id= Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String fname = request.getParameter("fname");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");



	UserModel u = new UserModel();
	u.setName(name);
	u.setFname(fname);
	u.setEmail(email);
	u.setMobile(mobile);
	u.setAddress(address);
	u.setId(id);
	
	int status = UserDaw.updatedata(u);
	if(status>0){
		response.sendRedirect("success.jsp");
	} 
	else {
		response.sendRedirect("failure.jsp");
	}
}
if(btn.equals("deleteregistration")){
	int id = Integer.parseInt(request.getParameter("id"));
	int status = UserDaw.deletereg(id);
	if(status>0){
		response.sendRedirect("index.jsp");
	}else{
		response.sendRedirect("index.jsp");
	}
}
%>