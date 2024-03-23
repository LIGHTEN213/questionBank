
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>User Login</title>

</head>
<body>



<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h2 class="display-5 text-center">Login Here</h2>
  </div>
</div>


<div class="container">


<div class="row justify-content-center">

 
    <div class="col-sm-6 col-md-6">
         
         
    
        <div class="card">
        
          <div class="card-body">
          
             <form action="/userlogin" method="post">
             
                
                 <div class="form-group">
                
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Enter Email address" required="required">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" placeholder="Enter password" required="required">
                
                </div>
                
                
            
                  <p class="text-danger font-weight-bold" id="error">${message}</p>
            
                
                
                 <div class="form-group">
                
                   <button type="submit" class="btn btn-success">Login</button>
                
                </div>
             
             </form>
          
          </div>
        
        </div>
    
    </div>


</div>


</div>




</body>
</html>