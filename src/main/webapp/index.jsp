<%@page import="com.crud.UserDaw.UserDaw"%>
<%@page import="com.crud.UserModel.UserModel"%>
<%@page import="java.util.List"%>
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
List<UserModel> list = UserDaw.getdata();
%>
<div>

<div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-xs-12 col-sm-8 col-md-6 col-lg-5">
                <div class="card">
                    <div class="card-header">
                        <h1 class="card-title">Registration Form</h1>
                    </div>
                    <div class="card-body">
                        <form method="post" action="action.jsp">
                            <div class="form-group">
                                <label for="">Name</label>
                                <input type="text" class="form-control" name="name">
                            </div>
                            <div class="form-group">
                                <label for="">Fater's name</label>
                                <input type="text" class="form-control" name="fname">
                            </div>
                            <div class="form-group">
                                <label for="">email</label>
                                <input type="email" class="form-control" name="email">
                            </div>
                            <div class="form-group">
                                <label for="">Address</label>
                                <input type="text" class="form-control" name="address">
                            </div>
                            <div>
                                <button class="btn btn-success form-control mt-4" name="btn" type="submit" value="addregistration">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
            		<table class="table table-responsive table-bordered border-dark text-center text-capital">
                <tr class="table-dark table-active text-uppercase text-white ">
                    <th>SNo</th>
                    <th>Name</th>
                    <th>Father's Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Address</th>
                    <th>Action</th>
                </tr>
                <tbody>
                <% int i=0; for(UserModel u : list) { i++; %>
                  <tr>
                    <td><%=i %></td>
                    <td><%=u.getName() %></td>
                    <td><%=u.getFname() %></td>
                    <td><%=u.getEmail() %></td>
                    <td><%=u.getMobile() %></td>
                    <td><%=u.getAddress() %></td>
                    <td>
                    <a href="editdata.jsp?id=<%= u.getId() %>" class="btn btn-sm btn-success">Edit</a>
                    <a href="action.jsp?id=<%= u.getId() %>&btn=deleteregistration" class="btn btn-sm btn-danger">Delete</a>  
                    </td>
                </tr>
                <%} %>
                </tbody>
            </table>
            
            </div>
        </div>
      </div>
      
      <hr>
      


</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>