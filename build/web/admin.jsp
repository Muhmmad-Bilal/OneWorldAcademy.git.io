<%-- 
    Document   : admin
    Created on : May 21, 2021, 4:45:13 PM
    Author     : Muhammad bilal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.entities.User"%>
<%@page import="com.tech.blog.entities.Message"%>
<%@page import="com.tech.blog.dao.UserDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%
    User user=(User)session.getAttribute("currentUser");
    if(user==null)
    {
        Message msg=new Message("You are not Logged in! loggin first","error","alert-danger");
        session.setAttribute("msg",msg);
        response.sendRedirect("LoginPage.jsp");
                return;
    }
    else
    {
        if(user.getUserType().equals("normal"))
        {
        Message msg=new Message("You are not Admin","error","alert-danger");    
         session.setAttribute("msg",msg);
        response.sendRedirect("LoginPage.jsp");
                return;
        }
    }


%>
<% 
                              UserDao dao=new UserDao(ConnectionProvider.getConnection());
                              int  count=dao.countUser();
                              int countCat=dao.countCategory();
                              %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/myStyle.css" rel="stylesheet" type="text/css"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <style>
        .banner-background{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 93%, 66% 100%, 31% 93%, 0 100%, 0 0);
        }
        
        
    </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <a class="navbar-brand" href="index.jsp"><span class="fa fa-asterisk"></span>Math Magician</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" href="#"><span class="fa fa-bell-o"></span>Learn With AyazAli <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="fa fa-check-square-o"></span>  Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">First Year</a>
          <a class="dropdown-item" href="#">Second Year</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Ecat</a>
        </div>
      </li>
       <li class="nav-item">
           <a class="nav-link" href="#"> <span class="	fa fa-address-card-o"></span>Contact</a>
      </li>
      
       
    </ul>
      <ul class="navbar-nav mr-right">
        <li class="nav-item">
            <a class="nav-link" href="profile.jsp" data-toggle="modal" data-target="#profile-modal"> <span class="fa fa-user-circle "></span><%= user.getName()%></a>
      </li> 
          
          <li class="nav-item">
           <a class="nav-link" href="LogoutServlet"> <span class="fa fa-user-plus "></span>Logout</a>
      </li>   
          
      </ul>
  </div>
</nav> 
      
      
      <div class="container admin">
          
          <div class="row mt-5">
              <div class="col-md-4">
                  <div class="card">
                      <div class="card-body text-center">
                          <div class="container">
                              <img  style="max-width:125px" class="img-fluid rounded-circle" src=" img/team.png" alt="user_icon"/>
                          </div>
                          <h1>
                          <%= count %></h1>
                          <h1 class="text-uppercase">User</h1>
                      </div>
                  </div>
                  
              </div>
              
               <div class="col-md-4">
                  <div class="card">
                      <div class="card-body text-center">
                          <div class="container">
                              <img  style="max-width:125px" class="img-fluid " src=" img/list.png" alt="user_icon"/>
                          </div>
                          <h1><%= countCat %></h1>
                          <h1 class="text-uppercase">Categories</h1>
                      </div>
                  </div>
              </div>
              
              
              
               <div class="col-md-4">
                  <div class="card">
                      <div class="card-body  text-center">
                          <div class="container">
                              <img  style="max-width:125px" class="img-fluid " src=" img/note.png" alt="user_icon"/>
                          </div>
                          <h1>2653</h1>
                          <h1 class="text-uppercase">Tests</h1>
                      </div>
                  </div>
              </div>
          </div>
          
          
           <!---- Second Row--->
            <div class="row mt-5">
                
                
               
              <div class="col-md-4 ">
                  <div class="card" data-toggle="modal" data-target="#add-category-modal">
                      <div class="card-body text-center">
                          <div class="container">
                              <img  style="max-width:125px" class="img-fluid " src=" img/category.png" alt="user_icon"/>
                          </div>
                          <h4 class="mt-2">Click here to</h4>
                          <h1 class="text-uppercase">Add Category</h1>
                      </div>
                  </div>
                  
              </div>
              
               <div class="col-md-4">
                  <div class="card">
                      <div class="card-body text-center">
                          <div class="container">
                              <img  style="max-width:125px" class="img-fluid " src=" img/classroom.png" alt="user_icon"/>
                          </div>
                          <h4 class="mt-2">Click here to </h4>
                          <h1 class="text-uppercase">Add Lectures</h1>
                      </div>
                  </div>
              </div>
              
              
              
               <div class="col-md-4">
                  <div class="card">
                      <div class="card-body  text-center">
                          <div class="container">
                              <img  style="max-width:125px" class="img-fluid " src=" img/book.png" alt="user_icon"/>
                          </div>
                          <h4 class="mt-2">Click here to</h4>
                          <h1 class="text-uppercase">Add Tests</h1>
                      </div>
                  </div>
              </div>
          </div>
      </div>
    <!----end cards of admin-->
      
    <!--- add Category--->
 
<!-- Modal -->
<div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill Category Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          
          
          
          <!--AddCategoru Form--->
          <form  id="add-category-form" action="CategoryServlet" method="post">
              <div class="form-group">
                  <input type="text" class="form-control" name="catTitle" placeholder="Enter category title" required="" >
              </div>
              <div class="form-group">
                  <textarea  style="height:250px" placeholder="Enter category discription" class="form-control" required name="catDescription" ></textarea>
              </div>
              
               <br>
                                <br>
                                <div class="container text-center" id="loader" style="display:none">
                                <span class="fa fa-refresh fa-spin fa-4x"></span> 
                                <h4>Please Wait</h4>
                                </div><br>
                                
              <div class="container text-center">
                  <button id="submit-btn" class="btn btn-outline-success">Add Category</button>
                  <button  type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              </div>
             
          </form>
          
          <!--End Category Form--->
          
      </div>
     
    </div>
  </div>
</div>
      
      
      <!---End Category-->
      
      <!------Footer-->
       <br>
    <br>
    <div class="container  "  style="max-width:100%;background-color:lightgray">
    <%@include file="Footer.jsp" %>
    </div>
      
      
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <script>
    $(document).ready(function()
    {
        console.log("loaded")
        $('#add-category-form').on('submit',function(event)
        {
        event.preventDefault();
        let form=new FormData(this);
        $('#submit-btn').hide();
        $('#loader').show();
        $.ajax({
            url:"CategoryServlet",
            type:'POST',
            data:form,
            success: function(data,textStatus,jqXHR){
            console.log(data) 
              $('#submit-btn').show();
        $('#loader').hide();
        
        
        if(data.trim()==='done')
        {
        swal("Category Added Successfully..")
.then((value) => {
  window.location="admin.jsp"
});
        }
        else
        {
            swal(data);
        }
        },
        error:function(jqXHR,textStatus,errorThrown)
        {
               $('#submit-btn').show();
        $('#loader').hide();
                  swal("Something Went Wrong");

        },
        processData:false,
        contentType:false
        
            
        });
        });
        
    });
    
</script>
    
    
    </body>
</html>
