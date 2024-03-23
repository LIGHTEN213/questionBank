<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<%-- <jsp:include page="css.jsp"/> --%>
</head>
<body>

<%-- <jsp:include page="navbar.jsp"/> --%>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h2 class="display-5 text-center">Create an account</h2>
  </div>
</div>


<div class="container">


<div class="row justify-content-center">

 
    <div class="col-sm-6 col-md-6">
    
        <div class="card">
        
          <div class="card-body">
          
             <form action="/register" method="post">
             
                <div class="form-group">
                
                    <label class="form-label">Firstname</label>
                    <input type="text" name="firstname" class="form-control" placeholder="Enter Firstname" required="required">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Lastname</label>
                    <input type="text" name="lastname" class="form-control" placeholder="Enter Lastname" required="required">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">email</label>
                    <input type="text" name="email" class="form-control" placeholder="Enter Email address" required="required">
                    <small id="emailHelp" class="form-text text-danger font-weight-bold">${errorMessage}</small>
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">password</label>
                    <input type="password" name="password" class="form-control" placeholder="Create password" required="required">
                
                </div>
                
                
                 <div class="form-group">
                
                   <button type="submit" class="btn btn-primary">Register</button>
                
                </div>
             
             </form>
          
          </div>
        
        </div>
    
    </div>


</div>


</div>


</body>
</html>