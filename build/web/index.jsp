<%-- 
    Document   : index
    Created on : May 16, 2021, 5:18:06 PM
    Author     : Muhammad bilal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
        <!--css-->
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link href="css/myStyle.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .banner-background{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 93%, 66% 100%, 31% 93%, 0 100%, 0 0);
        }
        
        
    </style>
    </head>
    <body>
        <!--navigation-->
        <%@include file="normal_navbar.jsp" %>        
        
        <div class="container-fluid p-0 m-0">
            
            <div class="jumbotron primary-background text-white banner-background" >
                <div class="container">
                    <h3 class="display-3">Welcome to AyazAli Official</h3>
                <p> Welcome to World of Mathematics Beginning in the 6th century BC with the Pythagoreans, with Greek mathematics the Ancient Greeks began a systematic </p>
                <p>study of mathematics as a subject in its own right. Around 300 BC, Euclid introduced the axiomatic method still used in mathematics today, consisting of definition, axiom, theorem, and proof.</p>
                <button class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span>Start its free</button>
                <a href="LoginPage.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle fa-spin"></span>Login</a>
                </div>
            </div>
            
            
        
        </div>
    <!-- card-->
    <div class="container mb-2">
        
        <div class="row">
            <div class="col-md-4">
                <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Ecat</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
                <br>
                
            </div>
              <div class="col-md-4">
                <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Css</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
                  <br>
            </div>
              <div class="col-md-4">
                <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Inter</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
            </div>
        </div>
           <div class="row">
            <div class="col-md-4">
                <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Matric</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
            </div>
              <div class="col-md-4">
                <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">First Year</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
            </div>
              <div class="col-md-4">
                <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">8th Class</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
            </div>
        </div> 
        
    </div>
    <!--Footer--->
    
    <br>
    <br>
    <div class="container  "  style="max-width:100%;background-color:lightgray">
    <%@include file="Footer.jsp" %>
    </div>
    
    <!--JavaScript-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
    </body>
</html>
