package Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.jdbcutil;

import java.sql.*;

/**
 * Servlet implementation class Library_detailsServ
 */
@WebServlet("/Library_detailsServ")
public class Library_detailsServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Library_detailsServ() {
        super();
        // TODO Auto-generated constructor stub
    }



      
      public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String uid = request.getParameter("uid");
        String book1 = request.getParameter("book1");
        String id1 = request.getParameter("id1");
        String issue1 = request.getParameter("issue1");
        String due1 = request.getParameter("due1");
        String book2 = request.getParameter("book2");
        String id2 = request.getParameter("id2");
        String issue2 = request.getParameter("issue2");
        String due2 = request.getParameter("due2");
        String book3 = request.getParameter("book3");
        String id3 = request.getParameter("id3");
        String issue3 = request.getParameter("issue3");
        String due3 = request.getParameter("due3");
        String book4 = request.getParameter("book4");
        String id4 = request.getParameter("id4");
        String issue4 = request.getParameter("issue4");
        String due4 = request.getParameter("due4");
        int i=0;
        
        try {
          // Establish a connection to the database
			Connection con = jdbcutil.getConnection();
          
          // Execute an SQL insert statement with the input values
          String sql = "INSERT INTO library(uid, book1, id1, issue1, due1, book2, id2, issue2, due2, book3, id3, issue3, due3, book4, id4, issue4, due4) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
          PreparedStatement statement = con.prepareStatement(sql);
          statement.setString(1, uid);
          statement.setString(2, book1);
          statement.setString(3, id1);
          statement.setString(4, issue1);
          statement.setString(5, due1);
          statement.setString(6, book2);
          statement.setString(7, id2);
          statement.setString(8, issue2);
          statement.setString(9, due2);
          statement.setString(10, book3);
          statement.setString(11, id3);
          statement.setString(12, issue3);
          statement.setString(13, due3);
          statement.setString(14, book4);
          statement.setString(15, id4);
          statement.setString(16, issue4);
          statement.setString(17, due4);
          
          if(!uid.isEmpty() && !book1.isEmpty() && !id1.isEmpty() && !issue1.isEmpty() && !due1.isEmpty() && !book2.isEmpty()
        		  && !id2.isEmpty() && !issue2.isEmpty() && !due2.isEmpty() && !book3.isEmpty() && !id3.isEmpty() && !issue3.isEmpty()
        		  && !due3.isEmpty() && !book4.isEmpty() && !id4.isEmpty() && !issue4.isEmpty() && !due4.isEmpty()) {
        

      				i = statement.executeUpdate();
      			}

      			if (i > 0) {

      				response.setContentType("text/html");
      				PrintWriter out = response.getWriter();
      				out.println("<script type='text/javascript'>");
      				out.println("alert('Details Added!');");
      				out.println("window.location.href = 'admin.jsp';");

      				out.println("</script>");

      			}
      			// request.getRequestDispatcher ("Welcome1").include (request, response);
      			else {

      				response.setContentType("text/html");
      				PrintWriter out = response.getWriter();
      				out.println("<script type='text/javascript'>");
      				out.println("alert('Something Went Wrong! Try Again');");
      				out.println("window.location.href = 'library_details.jsp';");

      				out.println("</script>");

      			}
      		} catch (Exception e2) {
      			System.out.println(e2);
      		}
      		// out.close ();
      	}
      }