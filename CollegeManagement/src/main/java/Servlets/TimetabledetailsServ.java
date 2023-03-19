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
 * Servlet implementation class CSEServ
 */
@WebServlet("/TimetabledetailsServ")
public class TimetabledetailsServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimetabledetailsServ() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String uid = request.getParameter("uid");
		String ms = request.getParameter("ms");
		String mt = request.getParameter("mt");
		String tus = request.getParameter("tus");
		String tut = request.getParameter("tut");
		String ws = request.getParameter("ws");
		String wt = request.getParameter("wt");
		String ths = request.getParameter("ths");
		String tht = request.getParameter("tht");
		String fs = request.getParameter("fs");
		String ft = request.getParameter("ft");
		int i = 0;

		// HttpSession session = request.getSession ();
		// session.setAttribute ("email", email);
		try {
			// Class.forName ("com.mysql.jdbc.Driver");
			Connection con =jdbcutil.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into timetable values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, uid);
			ps.setString(2, ms);
			ps.setString(3, mt);
			ps.setString(4, tus);
			ps.setString(5, tut);
			ps.setString(6, ws);
			ps.setString(7, wt);
			ps.setString(8, ths);
			ps.setString(9, tht);
			ps.setString(10, fs);
			ps.setString(11, ft);
		
			
			if (!uid.isEmpty()&& !ms.isEmpty()&& !mt.isEmpty() && !tus.isEmpty()&& !tut.isEmpty()
			&& !ws.isEmpty()&& !wt.isEmpty() && !ths.isEmpty()&& !tht.isEmpty()&& !fs.isEmpty()&& !ft.isEmpty()) {

				i = ps.executeUpdate();
			}

			if (i > 0) {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Details Added!');");
				out.println("window.location.href = 'admin.jsp';");

				out.println("</script>");

			}
			// request.getRequestDispatcher ("Welcome1").include (request, response);
			else {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Something Went Wrong! Try Again');");
				out.println("window.location.href = 'timetable.jsp';");

				out.println("</script>");

			}
		} catch (Exception e2) {
			System.out.println(e2);
		}
		// out.close ();
	}
}