package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
		String uid = request.getParameter("uid");
		int i =0;
		
		// HttpSession session = request.getSession ();
		// session.setAttribute ("email", email);
		try {
			// Class.forName ("com.mysql.jdbc.Driver");
			Connection con = jdbcutil.getConnection();
			PreparedStatement mailc = con.prepareStatement("Select email from users where email=?");
			PreparedStatement rollc = con.prepareStatement("Select uid FROM users where uid=?");
			mailc.setString(1, email);
			rollc.setString(1, uid);
		    ResultSet rs1 = mailc.executeQuery();
		    ResultSet rs2 = rollc.executeQuery();

		    if(rs1.next() || rs2.next())
		    {
		    	
		    		  response.setContentType("text/html");
						PrintWriter out = response.getWriter();
						out.println("<script type='text/javascript'>");
						out.println("alert('UserId/Email already exists');");
						out.println("window.location.href = 'Signup.html';");
						out.println("</script>");		    	  
		    	

		    }

		    else
		    {

				PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?,?)");
				
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, pass);
			ps.setString(5, type);
			ps.setString(6, uid);

			if (!fname.isEmpty() && !lname.isEmpty() && !email.isEmpty() && !pass.isEmpty() && !cpass.isEmpty()
					&& !type.isEmpty() && pass.equals(cpass)) {

				i = ps.executeUpdate();
			}

			if (i > 0) {
			if(type.equalsIgnoreCase("Student"))
			{
				PreparedStatement stu_detail= con.prepareStatement("insert into student_details(email,uid) values(?,?)");
				stu_detail.setString(1, email);
				stu_detail.setString(2, uid);
				stu_detail.executeUpdate();
			}
			if(type.equalsIgnoreCase("Faculty"))
			{
				PreparedStatement stu_detail= con.prepareStatement("insert into fac_details(email,uid) values(?,?)");
				stu_detail.setString(1, email);
				stu_detail.setString(2, uid);
				stu_detail.executeUpdate();
			}

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Account Created Successfully!');");
				out.println("window.location.href = 'login.html';");

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
		    
		}} catch (Exception e2) {
			System.out.println(e2);
		}
		// out.close ();
	}
}
