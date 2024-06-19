<%@page import="com.crud.UserDaw.UserDaw"%>
<%@page import="com.crud.UserModel.UserModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("id"));
   UserModel u = UserDaw.getdatabyid(id);
%>
<div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-xs-12 col-sm-8 col-md-6 col-lg-5">
                <div class="card">
                    <div class="card-header">
                        <h1 class="card-title">Registration Update Form</h1>
                    </div>
                    <div class="card-body">
                        <form method="post" action="action.jsp">
                        <input type="hidden" name="id" value="<%= u.getId() %>">
                            <div class="form-group">
                                <label for="">Name</label>
                                <input type="text" class="form-control" name="name"  value="<%= u.getName() %>">
                            </div>
                            <div class="form-group">
                                <label for="">Fater's name</label>
                                <input type="text" class="form-control" name="fname" value="<%=  u.getFname() %>">
                            </div>
                            <div class="form-group">
                                <label for="">email</label>
                                <input type="email" class="form-control" name="email" value="<%=  u.getEmail()%>">
                            </div>
                            <div class="form-group">
                                <label for="">Address</label>
                                <input type="text" class="form-control" name="address" value="<%=  u.getAddress()%>">
                            </div>
                            <div>
                                <button class="btn btn-success form-control mt-4" name="btn" value="updateregistration">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>  
    </div>  
</body>

</html>