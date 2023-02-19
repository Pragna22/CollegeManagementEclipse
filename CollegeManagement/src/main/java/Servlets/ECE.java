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
 * Servlet implementation class ECEServ
 */
@WebServlet("/ECE")
public class ECE extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ECE() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String uid = request.getParameter("uid");
		String cs1 = request.getParameter("cs1");
		String cs2 = request.getParameter("cs2");
		String cs3 = request.getParameter("cs3");
		String cs4 = request.getParameter("cs4");
		String cn1 = request.getParameter("cn1");
		String cn2 = request.getParameter("cn2");
		String cn3 = request.getParameter("cn3");
		String cn4 = request.getParameter("cn4");
		String ds1 = request.getParameter("ds1");
		String ds2 = request.getParameter("ds2");
		String ds3 = request.getParameter("ds3");
		String ds4 = request.getParameter("ds4");
		String mb1 = request.getParameter("mb1");
		String mb2 = request.getParameter("mb2");
		String mb3 = request.getParameter("mb3");
		String mb4 = request.getParameter("mb4");
		String os1 = request.getParameter("os1");
		String os2 = request.getParameter("os2");
		String os3 = request.getParameter("os3");
		String os4 = request.getParameter("os4");
		String csp1 = request.getParameter("csp1");
		String csp2 = request.getParameter("csp2");
		String cnp1 = request.getParameter("cnp1");
		String cnp2 = request.getParameter("cnp2");

		int i = 0;

		// HttpSession session = request.getSession ();
		// session.setAttribute ("email", email);
		try {
			// Class.forName ("com.mysql.jdbc.Driver");
			Connection con = jdbcutil.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into marks2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, uid);
			ps.setString(2, cs1);
			ps.setString(3, cs2);
			ps.setString(4, cs3);
			ps.setString(5, cs4);
			ps.setString(6, cn1);
			ps.setString(7, cn2);
			ps.setString(8, cn3);
			ps.setString(9, cn4);
			ps.setString(10, ds1);
			ps.setString(11, ds2);
			ps.setString(12, ds3);
			ps.setString(13, ds4);
			ps.setString(14, mb1);
			ps.setString(15, mb2);
			ps.setString(16, mb3);
			ps.setString(17, mb4);
			ps.setString(18, os1);
			ps.setString(19, os2);
			ps.setString(20, os3);
			ps.setString(21, os4);
			ps.setString(22, csp1);
			ps.setString(23, csp2);
			ps.setString(24, cnp1);
			ps.setString(25, cnp2);
		
			
			if (!uid.isEmpty() && !cs1.isEmpty() && !cs2.isEmpty() && !cs3.isEmpty() && !cs4.isEmpty() && !cn1.isEmpty()
					&& !cn2.isEmpty() && !cn3.isEmpty() && !cn4.isEmpty() && !ds1.isEmpty() 
					&& !ds2.isEmpty() && !ds3.isEmpty() && !ds4.isEmpty() 
					&& !mb1.isEmpty() && !mb2.isEmpty() && !mb3.isEmpty() && !mb4.isEmpty()
					&& !os1.isEmpty() && !os2.isEmpty()&& !os3.isEmpty() && !os4.isEmpty() 
					&& !csp1.isEmpty() && !csp2.isEmpty() && !cnp1.isEmpty() && !cnp2.isEmpty()) {

				i = ps.executeUpdate();
			}

			if (i > 0) {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Details Added!');");
				out.println("window.location.href = 'faculty.jsp';");

				out.println("</script>");

			}
			// request.getRequestDispatcher ("Welcome1").include (request, response);
			else {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Something Went Wrong! Try Again');");
				out.println("window.location.href = 'marks.jsp';");

				out.println("</script>");

			}
		} catch (Exception e2) {
			System.out.println(e2);
		}
		// out.close ();
	}
}