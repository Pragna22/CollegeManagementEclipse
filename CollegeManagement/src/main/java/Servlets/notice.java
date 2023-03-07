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
 * Servlet implementation class notice
 */
@WebServlet("/notice")
public class notice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public notice() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		String notice = request.getParameter("notice");


		int i = 0;

		
		try {
			
			Connection con = jdbcutil.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into notice (message) values(?)");
			ps.setString(1, notice);
			
			
			i=ps.executeUpdate();
			if (i > 0) {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('notice Added!');");
				out.println("window.location.href = 'noticeedit.jsp';");

				out.println("</script>");

			}
			
			else {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Something Went Wrong! Try Again');");
				out.println("window.location.href = 'noticeedit.jsp';");

				out.println("</script>");

			}
		} catch (Exception e2) {
			System.out.println(e2);
		}
		// out.close ();
	}
}