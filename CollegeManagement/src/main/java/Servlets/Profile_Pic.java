package Servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Database.jdbcutil;

/**
 * Servlet implementation class Profile_Pic
 */
@WebServlet("/Profile_Pic")
public class Profile_Pic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile_Pic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		
		int i=0;
	        
	        Part pic = request.getPart("pic");
	        //String fileName = filePart.getSubmittedFileName();
	        InputStream picfileContent = pic.getInputStream();
	    	int p = picfileContent.read();


		try {
			
			Connection con = jdbcutil.getConnection();
			
			PreparedStatement ps = con.prepareStatement("insert into profile_pic value(?)");
			ps.setBinaryStream(1, picfileContent);
			
			i= ps.executeUpdate();
			if (i>0) {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Profile Photo updated successfully!);");
				out.println("window.location.href = 'Student.html';");

				out.println("</script>");

			}
			// request.getRequestDispatcher ("Welcome1").include (request, response);
			else {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Something Went Wrong! Try Again');");
				out.println("window.location.href = 'Student.html';");

				out.println("</script>");

			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
	







