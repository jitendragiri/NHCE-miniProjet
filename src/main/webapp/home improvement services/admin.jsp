<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="style/style.css">
    <title>Services </title>
  </head>
  <body>
  <nav>
    
        <h1 id="domain-name-logo">HOME IMPROVEMENT SERVICES</h1>
        
        <table id="navbar" align="center" cellspacing="10px">
            <tr>
                <td id="nav-item"><a href="index.html">Home</a></td>
                
                <td id="nav-item"><a href="#">Services</a></td>
                
                <td id="nav-item"><a href="#">Contact</a></td>
                
                <td id="nav-item"><a href="login.html">Login</a></td>
                
                <td id="nav-item"><a href="signup.html">Sign up</a></td>
        
            </tr>
        
        
        </table>
    </nav>

<div class="container">
	
	<div class="row">
		<div class="col-sm-12">
		
		
			<%
								try{
								
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection(  
									"jdbc:mysql://localhost:3306/home","root","");
								
								
								    Statement stmt1 = con.createStatement();  
						            ResultSet rs = stmt1.executeQuery("SELECT * FROM `details`"); 
						            
						            Boolean bool = false; %>
	
<table class="table mt-5 shadow rounded">
  <thead>
    <tr>
      <th scope="col">S.No</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Address</th>
      <th scope="col">Service</th>
      <th scope="col">Size</th>
    </tr>
  </thead>
  <tbody>		
		
		
<%

int x=1;
while(rs.next()){
	
	
	
   	String name = rs.getString("Name");
   	String email = rs.getString("Email");
   	String phone = rs.getString("Phone");
   	String address = rs.getString("Address");
   	String service = rs.getString("Service");
   	String size = rs.getString("Size");
   	
   	
   	
%>

    <tr>
      <th scope="row"><% out.print(x); %></th>
      <td><%   	out.print(name); %></td>
      <td><%   	out.print(email); %></td>
      <td><%   	out.print(phone); %></td>
       <td><%   	out.print(address); %></td>
      <td><%   	out.print(service); %></td>
      <td><%   	out.print(size); %></td>
    </tr>

<%

  x++; 	
}



%>


   
    
  </tbody>
</table>


<%
								}
			
			catch(Exception e){
				
			}


	



%>
		
			
			
			
		
			

			
		
		</div>
	
	</div>
	



</div>




<!-- Modal -->


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>