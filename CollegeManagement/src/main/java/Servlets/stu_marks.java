package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.jdbcutil;

/**
 * Servlet implementation class stu_marks
 */
@WebServlet("/stu_marks")
public class stu_marks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stu_marks() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			RequestDispatcher rd = null;
			Connection con = jdbcutil.getConnection();
			String uid = request.getParameter("uid");
			String dept = request.getParameter("dept");
			PreparedStatement ps = con
					.prepareStatement("select uid,dept from student_details where uid=? and dept=? ");
			
			ps.setString(1, uid);
			ps.setString(2, dept);
			ResultSet rs = ps.executeQuery();
			
			PreparedStatement disp = con
					.prepareStatement("select uid,dept from student_details where uid=? and dept=? ");
			disp.setString(1, uid);
			disp.setString(2, dept);
			
			
			ResultSet disp_res = disp.executeQuery();
			
			if (rs.next() && disp_res.next()) {
				 String Makaut_roll_number = disp_res.getString("uid");
				 String Department = disp_res.getString("dept");
				 String uid_cookie = disp_res.getString("uid");
				 Cookie uid_value = new Cookie("uid", uid_cookie);
				 response.addCookie(uid_value);
	               
	                if(dept.equalsIgnoreCase("CSE"))
	                {

				 rd = request.getRequestDispatcher("s_cse.jsp");
				//rd.forward(request, response);
               

			
			}
	                else if(dept.equalsIgnoreCase("ECE"))
	                {
	                	 rd = request.getRequestDispatcher("s_ece.jsp");
	    				//rd.forward(request, response);
	                   

	                }
	                else if(dept.equalsIgnoreCase("IT"))
	                {
	                	 rd = request.getRequestDispatcher("s_it.jsp");
	    				//rd.forward(request, response);
	                   

	                }
	                
	                rd.forward(request, response);
	                
			}
	                else {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Invalid Details! Try Again');");
				out.println("window.location.href = 'Stu_marks.jsp';");

				out.println("</script>");

				// response.sendRedirect(type)

				// doGet(request, response);
			}
		} catch (Exception e2) {
			System.out.println(e2);
		}

	}
}