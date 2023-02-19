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
		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
		String address = request.getParameter("address");
		String b_group = request.getParameter("b_group");
		String email = request.getParameter("email");
		String phn = request.getParameter("phn");
		String dept = request.getParameter("dept");
		//String uid = request.getParameter("uid");
		//String phone =request.getParameter(dept)

		int i = 0;

		// HttpSession session = request.getSession ();
		// session.setAttribute ("email", email);
		try {
			// Class.forName ("com.mysql.jdbc.Driver");
			Connection con = jdbcutil.getConnection();
			String sql="UPDATE student_details SET fname = ?, mname = ?, address = ?, b_group=?, email=?, phn=?,dept=? WHERE email = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, mname);
			ps.setString(3, address);
			ps.setString(4, b_group);
			ps.setString(5, email);
			ps.setString(7, dept);
			//ps.setString(9, uid);
			ps.setString(6, phn);
			ps.setString(8, email);
			
			
			
			//if (!name.isEmpty() && !sem.isEmpty() && !croll.isEmpty() && !uid.isEmpty() && !email.isEmpty()
					//&& !dept.isEmpty() && !phn.isEmpty()) {

				i = ps.executeUpdate();
				System.out.println(sql);
			//}

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
				out.println("window.location.href = 'studentedit.jsp';");

				out.println("</script>");

			}
		} catch (Exception e2) {
			System.out.println(e2);
		}
		// out.close ();
	}
}
