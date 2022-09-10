

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

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		String pass = request.getParameter("pass");
	
	
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/home","root","");
			java.sql.Statement stmt = con.createStatement();
			
			
			String q1 = String.format("SELECT * FROM `signup`");
		
            ResultSet rs = ((java.sql.Statement) stmt).executeQuery(q1); 
            
            boolean flag = false;
            
            while(rs.next()) {
			   	String id = rs.getString("id");
                String name1 = rs.getString("name");  
                String pass1 = rs.getString("pass");  
                
               if(name1.trim().equals(name)) {
            	   if(pass1.trim().equals(pass)) {
            		   flag=true;
            	   }
               }
            }
			
			//inserting data into database
//			String q1 = String.format("");
			
			
			
			
			
			
			if (flag==true)   
			{
				  out.print("Successfully Inserted"); 
				  response.sendRedirect("http://localhost:8080/mybigproject/home%20improvement%20services/services.jsp");
			}
	          
	        else  
	        {
	        	 out.print("Insert Failed");
	        	response.sendRedirect("http://localhost:8080/mybigproject/home%20improvement%20services/login.html?send=fail");
	        }
//	            
             
            con.close();
						 
		} catch(Exception e)
        {
            System.out.println(e);
        }

	
	}



}
