

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
/**
 * Servlet implementation class signup
 * 
 * 
 */

@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
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
		
	
		
		String name = request.getParameter("username");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String address = request.getParameter("address");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/home","root","");
			java.sql.Statement stmt = con.createStatement();
			
			
			
			
			//inserting data into database
			String q1 = String.format("INSERT INTO `signup` (`id`, `name`, `email`, `pass`, `address`) VALUES (NULL, '%s', '%s', '%s', '%s');",name,email,pass,address);
			int x = stmt.executeUpdate(q1);
			if (x > 0)   
			{
				  out.print("Successfully Inserted"); 
				  response.sendRedirect("http://localhost:8080/mybigproject/home%20improvement%20services/login.html?send=success");
			}
	          
	        else  
	        {
	        	 out.print("Insert Failed");
	        	response.sendRedirect("http://localhost:8080/mybigproject/home%20improvement%20services/login.html");
	        }
//	            
             
            con.close();
						 
		} catch(Exception e)
        {
            System.out.println(e);
        }

	
	}



}
