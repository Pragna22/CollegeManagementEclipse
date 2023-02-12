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
 * Servlet implementation class ITServ
 */
@WebServlet("/IT")
public class IT extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IT() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String uroll = request.getParameter("uroll");
		String dms1 = request.getParameter("dms1");
		String dms2 = request.getParameter("dms2");
		String dms3 = request.getParameter("dms3");
		String dms4 = request.getParameter("dms4");
		String cn1 = request.getParameter("cn1");
		String cn2 = request.getParameter("cn2");
		String cn3 = request.getParameter("cn3");
		String cn4 = request.getParameter("cn4");
		String ds1 = request.getParameter("ds1");
		String ds2 = request.getParameter("ds2");
		String ds3 = request.getParameter("ds3");
		String ds4 = request.getParameter("ds4");
		String hcidm = request.getParameter("hcidm");
		String hcdm = request.getParameter("hcdm");
		String dm1 = request.getParameter("dm1");
		String dm2 = request.getParameter("dm2");
		String dm3 = request.getParameter("dm3");
		String dm4 = request.getParameter("dm4");
		String hrdnm = request.getParameter("hrdnm");
		String hrnm = request.getParameter("hrnm");
		String nm1 = request.getParameter("nm1");
		String nm2 = request.getParameter("nm2");
		String nm3 = request.getParameter("nm3");
		String nm4 = request.getParameter("nm4");
		String dmp1 = request.getParameter("dmp1");
		String dmp2 = request.getParameter("dmp2");
		String cnp1 = request.getParameter("cnp1");
		String cnp2 = request.getParameter("cnp2");
		
		int i = 0;

		// HttpSession session = request.getSession ();
		// session.setAttribute ("email", email);
		try {
			// Class.forName ("com.mysql.jdbc.Driver");
			Connection con = jdbcutil.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into marks values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, uroll);
			ps.setString(2, dms1);
			ps.setString(3, dms2);
			ps.setString(4, dms3);
			ps.setString(5, dms4);
			ps.setString(6, cn1);
			ps.setString(7, cn2);
			ps.setString(8, cn3);
			ps.setString(9, cn4);
			ps.setString(10, ds1);
			ps.setString(11, ds2);
			ps.setString(12, ds3);
			ps.setString(13, ds4);
			ps.setString(14, hcidm);
			ps.setString(15, hcdm);
			ps.setString(16, dm1);
			ps.setString(17, dm2);
			ps.setString(18, dm3);
			ps.setString(19, dm4);
			ps.setString(20, hrdnm);
			ps.setString(21, hrnm);
			ps.setString(22, nm1);
			ps.setString(23, nm2);
			ps.setString(24, nm3);
			ps.setString(25, nm4);
			ps.setString(26, dmp1);
			ps.setString(27, dmp2);
			ps.setString(28, cnp1);
			ps.setString(29, cnp2);
			
			
			if (!uroll.isEmpty() && !dms1.isEmpty() && !dms2.isEmpty() && !dms3.isEmpty() && !dms4.isEmpty() && !cn1.isEmpty()
					&& !cn2.isEmpty() && !cn3.isEmpty() && !cn4.isEmpty() && !ds1.isEmpty() 
					&& !ds2.isEmpty() && !ds3.isEmpty() && !ds4.isEmpty() && !hcidm.isEmpty() && !hcdm.isEmpty() 
					&& !dm1.isEmpty() && !dm2.isEmpty() && !dm3.isEmpty() && !dm4.isEmpty() && !hrdnm.isEmpty() 
					&& !hrnm.isEmpty() && !nm1.isEmpty() && !nm2.isEmpty()&& !nm3.isEmpty() && !nm4.isEmpty() 
					&& !dmp1.isEmpty() && !dmp2.isEmpty() && !cnp1.isEmpty() && !cnp2.isEmpty()) {

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
				out.println("window.location.href = 'marks.html';");

				out.println("</script>");

			}
		} catch (Exception e2) {
			System.out.println(e2);
		}
		// out.close ();
	}
}