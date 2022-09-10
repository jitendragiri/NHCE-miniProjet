


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
/**
 * Servlet implementation class signup
 * 
 * 
 */

@WebServlet("/addDetails")
public class addDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
	
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String service = request.getParameter("service");
		String size = request.getParameter("size");
		
		out.print(name+"<br>");
		out.print(email+"<br>");
		out.print(phone+"<br>");
		out.print(address+"<br>");
		out.print(service+"<br>");
		out.print(size+"<br>");
	
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/home","root","");
			java.sql.Statement stmt = con.createStatement();
			
			
			
			
			//inserting data into database
			String q1 = String.format("INSERT INTO `details` (`id`, `Name`, `Phone`, `Email`, `Address`, `Service`, `Size`) VALUES (NULL, '%s', '%s', '%s', '%s', '%s', '%s');"
																	,name,phone,email,address,service,size);
			int x = stmt.executeUpdate(q1);

			
			
			
//			
			if (x>0)   
			{
				  out.print("Successfully Inserted"); 
				 response.sendRedirect("http://localhost:8080/mybigproject/home%20improvement%20services/services.jsp?send=success");
			}
	          
	        else  
	        {
	        	 out.print("Insert Failed");
	        	response.sendRedirect("http://localhost:8080/mybigproject/home%20improvement%20services/services.jsp");
	        }
////	            
             
            con.close();
						 
		} catch(Exception e)
        {
            System.out.println(e);
        }

	
	}



}
