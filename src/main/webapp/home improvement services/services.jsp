<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                
                <td id="nav-item"><a href="service.jsp">Services</a></td>
                
                <td id="nav-item"><a href="contat.html">Contact</a></td>
                
                <td id="nav-item"><a href="login.html">Login</a></td>
                
                <td id="nav-item"><a href="signup.html">Sign up</a></td>
        
            </tr>
        
        
        </table>
    </nav>

<div class="container">
	
	<div class="row">
		<div class="col-sm-12">
		
		<div class="row">
		
			<div class="card mt-4" style="width: 18rem;">
			  <img src="images/kitchen.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">Kichen</h5>
			    <p class="card-text">Crockery storage all in the one place, a larder, one or two ovens, recycling bins,  a larder fridge, space for small electrical appliance storage, baking tins where to store these, wine glass storage - how many of these items can apply for space on your wish list</p>
				  <!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
				  Book Now!!
				</button>
			   </div>
			</div>
			
			<div class="card mt-4 ms-5" style="width: 18rem;">
			  <img src="images/bedroom.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">Bed Room</h5>
			    <p class="card-text">In many ways the bedroom is the most important space in the house. With the demands that the digital world places on our time, the need for good quality sleep is ever more apparent. we provide best design.</p>
			    <!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
				  Book Now!!
				</button>
			  </div>
			</div>
			
			
			
			<div class="card mt-4 ms-5" style="width: 18rem;">
			  <img src="images/bathroom.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">Bathroom</h5>
			    <p class="card-text">Great Bathroom Design Can Showcase Your Personality.Bathrooms that are well-designed often go beyond aesthetic appeal. a stylish bathroom can be a great investment </p>
			    <!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
				  Book Now!!
				</button>
			  </div>
			</div>
			
			
			
			
			<div class="card mt-4 ms-5" style="width: 18rem;">
			  <img src="images/bg.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">Hall</h5>
			    <p class="card-text">Your hall is the face of your home and it is the first thing that your visitors lay eyes on when they step in. Therefore, you need to ensure that it makes a lasting and positive first impression. contact us for best design</p>
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
				  Book Now!!
				</button>
			  </div>
			</div>
			
			</div>
			
			
		
		</div>
	
	</div>
	



</div>




<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Fill All Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        		<form action="../addDetails">
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Name</label>
				    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				   
				   <div class="mb-3 mt-3">
				    <label for="exampleInputEmail1" class="form-label">Email address</label>
				    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
				  </div>
				   <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Phone</label>
				    <input type="number" name="phone" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp">
				 
				  </div>
				   <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Address</label>
				    <input type="text" name="address" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				   
				  </div>
					<div>
					    <label for="exampleInputEmail1" class="form-label">Service</label>
					
					<select class="form-select" name="service" aria-label="Default select example">
					  <option selected>Service</option>
					  <option value="Kitchen">Kitchen</option>
					  <option value="Hall">Hall</option>
					  <option value="Bedroom">Bedroom</option>
					  <option value="Bathroom">Bathroom</option>
					</select>
					
					</div>
				  <div class="mb-3 mt-3">
				    <label for="exampleInputPassword1" class="form-label">Size</label>
				    <input type="text" name="size" placeholder="feet/square" class="form-control" id="exampleInputPassword1">
				  </div>
				
				  <button type="submit" class="btn btn-primary">Submit</button>
				</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

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