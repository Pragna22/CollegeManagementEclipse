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
@WebServlet("/Stu_Details")
public class Stu_Details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Stu_Details() {
        super();
        // TODO Auto-generated constructor stub
    }


	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String sem = request.getParameter("sem");
		String croll = request.getParameter("croll");
		String uroll = request.getParameter("uroll");
		String email = request.getParameter("email");
		String dept = request.getParameter("dept");

		int i = 0;

		// HttpSession session = request.getSession ();
		// session.setAttribute ("email", email);
		try {
			// Class.forName ("com.mysql.jdbc.Driver");
			Connection con = jdbcutil.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into student_details values(?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, sem);
			ps.setString(3, croll);
			ps.setString(4, uroll);
			ps.setString(5, email);
			ps.setString(6, dept);
			
			if (!name.isEmpty() && !sem.isEmpty() && !croll.isEmpty() && !uroll.isEmpty() && !email.isEmpty()
					&& !dept.isEmpty()) {

				i = ps.executeUpdate();
			}

			if (i > 0) {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Details Added!');");
				out.println("window.location.href = 'Student.jsp';");

				out.println("</script>");

			}
			// request.getRequestDispatcher ("Welcome1").include (request, response);
			else {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Something Went Wrong! Try Again');");
				out.println("window.location.href = 'studentedit.html';");

				out.println("</script>");

			}
		} catch (Exception e2) {
			System.out.println(e2);
		}
		// out.close ();
	}
}
