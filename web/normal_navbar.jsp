

<%@taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.dao.UserDao" %>
<%@page import="com.tech.blog.helper.ConnectionProvider" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nav_bar</title>
    </head>
    <body>
<nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <a class="navbar-brand  " href="#"><span class="fa fa-asterisk">Math Magician</span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" href="index.jsp"><span class="fa fa-bell-o"></span>Home <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="fa fa-check-square-o"></span>  Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <%
  
    UserDao dao=new UserDao(ConnectionProvider.getConnection());
    
          Vector v=dao.getAllCategories();
          for(int i=1;i<=v.size();i++)
          {
           %>
           <a class="dropdown-item" href="#"><%= v%></a>
            
            <%
          }
%>
          
         
         
        </div>
      </li>
       <li class="nav-item">
           <a class="nav-link" href="#"> <span class="	fa fa-random"></span> Past Year Papers</a>
      </li>
       <li class="nav-item">
           <a class="nav-link" href="contact.jsp"> <span class="	fa fa-address-card-o"></span>Contact</a>
      </li>
      <li class="nav-item">
           <a class="nav-link" href="LoginPage.jsp"> <span class="fa fa-user-circle "></span>Login</a>
      </li>
       <li class="nav-item">
           <a class="nav-link" href="RegisterModel.jsp"> <span class="fa fa-user-plus "></span>Sign Up</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
        
         </body>
</html>