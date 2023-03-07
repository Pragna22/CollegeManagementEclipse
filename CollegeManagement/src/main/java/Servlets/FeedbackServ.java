package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Database.jdbcutil;

/**
 * Servlet implementation class FeedbackServ
 */
@WebServlet("/FeedbackServ")
public class FeedbackServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServ() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		
		int i=0;
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mob = request.getParameter("mob");
		String student = request.getParameter("student");
		String Mytext = request.getParameter("Mytext");

		try {
			
			Connection con = jdbcutil.getConnection();
			
			System.out.println("name: " + name);
			System.out.println("email: " + email);
			System.out.println("mob: " + mob);
			System.out.println("student: " + student);
			System.out.println("MyText: " + Mytext);
			
			PreparedStatement ps = con.prepareStatement("insert into feedback values(?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, mob);
			ps.setString(4, student);
			ps.setString(5, Mytext);

			i= ps.executeUpdate();
			if (i>0) {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Thank you for your valuable feedback! We will take this into account to make the college better!');");
				out.println("window.location.href = 'index.html';");

				out.println("</script>");

			}
			// request.getRequestDispatcher ("Welcome1").include (request, response);
			else {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Something Went Wrong! Try Again');");
				out.println("window.location.href = 'index.html';");

				out.println("</script>");

			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
	







