package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.jdbcutil;
import gettersetter.details;

/**
 * Servlet implementation class DisplayDataServlet
 */
@WebServlet("/DisplayDataServlet")
public class DisplayDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayDataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<details> detailsList = new ArrayList<details>();
        String cookieValue = "";
        try {
        	 
        	  Cookie[] cookies = request.getCookies();
        	  if (cookies != null) {
        	    for (Cookie cookie : cookies) {
        	      if (cookie.getName().equals("email")) {
        	        cookieValue = cookie.getValue();
        	        break;
        	      }
        	    }
        	  }
        	  
        }
        catch(Exception e)
        {
        	System.out.println(e);
        }
    
    	try {
			// Class.forName ("com.mysql.jdbc.Driver");
			Connection con = jdbcutil.getConnection();
			Statement stmt = con.createStatement();
		     ResultSet rs = stmt.executeQuery("SELECT * FROM student_details where email= "+cookieValue);
		     while(rs.next())
		     {
		    	 int sem=rs.getInt("sem");
		    		String croll=rs.getString("croll");
		    		String email=rs.getString("email");
		    		String dept=rs.getString("dept");
		    		int uroll=rs.getInt("uroll");
		    		details det=  new details(sem,croll,email,dept,uroll);
		    		detailsList.add(det);
		     }
    	}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
    }
}
		    		
		