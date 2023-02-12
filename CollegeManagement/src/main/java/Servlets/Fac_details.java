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
 * Servlet implementation class Stu_Details
 */
@WebServlet("/Fac_details")
public class Fac_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fac_details() {
        super();
        // TODO Auto-generated constructor stub
    }


	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String qual = request.getParameter("qual");
		String yrs = request.getParameter("yrs");
		String phn_no = request.getParameter("phn_no");
		String email = request.getParameter("email");

		int i = 0;

		// HttpSession session = request.getSession ();
		// session.setAttribute ("email", email);
		try {
			// Class.forName ("com.mysql.jdbc.Driver");
			Connection con = jdbcutil.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into fac_details values(?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, qual);
			ps.setString(3, yrs);
			ps.setString(4, phn_no);
			ps.setString(5, email);
			
			if (!name.isEmpty() && !qual.isEmpty() && !yrs.isEmpty() && !phn_no.isEmpty() && !email.isEmpty()) {

				i = ps.executeUpdate();
			}

			if (i > 0) {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Details Added!');");
				out.println("window.location.href = 'faculty.html';");

				out.println("</script>");

			}
			// request.getRequestDispatcher ("Welcome1").include (request, response);
			else {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Something Went Wrong! Try Again');");
				out.println("window.location.href = 'facedit.html';");

				out.println("</script>");

			}
		} catch (Exception e2) {
			System.out.println(e2);
		}
		// out.close ();
	}
}
