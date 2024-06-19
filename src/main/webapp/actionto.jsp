<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

int maxPostSize = 100 * 1024 * 1024; 
MultipartRequest m = new MultipartRequest(request,"C:/Users/Anjali Prasad/eclipse-workspace/crud/src/main/webapp/upload", maxPostSize);
  String name = m.getParameter("imgVidname");
  String image = m.getOriginalFileName("imgVid");
  out.println(name);
  out.println(image);
%>