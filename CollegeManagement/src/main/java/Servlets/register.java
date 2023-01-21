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
import javax.servlet.http.HttpSession;

import Database.jdbcutil;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter out;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public register() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String cpass = request.getParameter("cpass");
		String type = request.getParameter("type");

		int i = 0;

		// HttpSession session = request.getSession ();
		// session.setAttribute ("email", email);
		try {
			// Class.forName ("com.mysql.jdbc.Driver");
			Connection con = jdbcutil.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?)");
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, pass);
			ps.setString(5, type);

			if (!fname.isEmpty() && !lname.isEmpty() && !email.isEmpty() && !pass.isEmpty() && !cpass.isEmpty()
					&& !type.isEmpty() && pass.equals(cpass)) {

				i = ps.executeUpdate();
			}

			if (i > 0) {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Account Created Successfully!');");
				out.println("window.location.href = 'Signup.html';");

				out.println("</script>");

			}
			// request.getRequestDispatcher ("Welcome1").include (request, response);
			else {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Something Went Wrong! Try Again');");
				out.println("window.location.href = 'Signup.html';");

				out.println("</script>");

			}
		} catch (Exception e2) {
			System.out.println(e2);
		}
		// out.close ();
	}
}
