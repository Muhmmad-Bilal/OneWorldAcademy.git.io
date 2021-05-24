<%-- 
    Document   : contact
    Created on : May 23, 2021, 12:13:03 AM
    Author     : Muhammad bilal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link href="css/myStyle.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
        <link href="css/contact_css.css" rel="stylesheet" type="text/css"/>
    
 
        </style>
    
    </head>
    <body>
        <%@include file="normal_navbar.jsp" %>
        
       <main  class="  p-5 " style="margin-top: 40px;"  >
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    
                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            <span class=" fa fa-3x 	fa fa-commenting-o"></span><br>
                            Contact Us
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="RegisterServlet" method="post">
                                
                                <div class="form-group">
    <label for="user_name">First Name</label>
    <input name="firstName" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter Fisrt Name">
    
  </div>
                                
                                
  <div class="form-group">
    <label for="exampleInputEmail1">Last  Name</label>
    <input name="lastName" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter LastName">
    <small id="emailHelp" class="form-text text-muted"></small>
  </div>
                                
                                
                                
  <div class="form-group">
    <label for="exampleInputPassword1">Email</label>
   
    <input name="email" type="email" class="form-control" id="exampleInputPassword1" placeholder="Enter Email">
   <small id="emailHelp" class="form-text text-muted"></small>
  </div>
                                
    
   
                                
         <div class="form-group">
    <textarea name="subject" class="form-control" id="" rows="5" placeholder="Subject"></textarea>
                                    
    </div>
                                
                                <br>                      

                                <br>
                                <div class="container text-center" id="loader" style="display:none">
                                <span class="fa fa-refresh fa-spin fa-4x"></span> 
                                <h4>Please Wait</h4>
                                </div><br>
                                <button  id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
</form>
                            
                            
                            
                        </div>
                        <div class="card-footer"></div>
                    </div>
                </div>
                
            </div>
            
            
        </main>
        
       
        <br>
        <br>
          <br>
    <div id ="footer" class="container"  style="max-width:100%;background-color:lightgray">
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
        $('#reg-form').on('submit',function(event)
        {
        event.preventDefault();
        let form=new FormData(this);
        $('#submit-btn').hide();
        $('#loader').show();
        $.ajax({
            url:"ContactServlet",
            type:'POST',
            data:form,
            success: function(data,textStatus,jqXHR){
            console.log(data) 
              $('#submit-btn').show();
        $('#loader').hide();
        
        
        if(data.trim()==='done')
        {
        swal("Subject Successfully..")
.then((value) => {
  window.location="index.jsp"
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
