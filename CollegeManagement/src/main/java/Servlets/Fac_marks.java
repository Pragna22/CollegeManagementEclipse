package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.jdbcutil;

/**
 * Servlet implementation class Fac_marks
 */
@WebServlet("/Fac_marks")
public class Fac_marks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fac_marks() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			RequestDispatcher rd = null;
			Connection con = jdbcutil.getConnection();
			String name = request.getParameter("name");
			String sem = request.getParameter("sem");
			String croll = request.getParameter("croll");
			String uroll = request.getParameter("uroll");
			String email = request.getParameter("email");
			String dept = request.getParameter("dept");
			PreparedStatement ps = con
					.prepareStatement("select name,sem,croll,uroll,email,dept from student_details where name=? and sem=? and croll=? and uroll=? and email=? and dept=?");
			
			ps.setString(1, name);
			ps.setString(2, sem);
			ps.setString(3, croll);
			ps.setString(4, uroll);
			ps.setString(5, email);
			ps.setString(6, dept);
			ResultSet rs = ps.executeQuery();
			
			PreparedStatement disp = con
					.prepareStatement("select name,sem,croll,uroll,email,dept from student_details where name=? and sem=? and croll=? and uroll=? and email=? and dept=?");
			disp.setString(1, name);
			disp.setString(2, sem);
			disp.setString(3, croll);
			disp.setString(4, uroll);
			disp.setString(5, email);
			disp.setString(6, dept);
			ResultSet disp_res = disp.executeQuery();
			
			if (rs.next() && disp_res.next()) {
				 String Name = disp_res.getString("name");
				 String Semester = disp_res.getString("sem");
				 String ClassRoll = disp_res.getString("croll");
				 String UniversityRoll = disp_res.getString("uroll");
				 String Emailid = disp_res.getString("email");
				 String Department = disp_res.getString("dept");
	                
	                //HttpSession session = request.getSession();
	               // request.setAttribute("fname",firstname);
	                //request.setAttribute("lname",lastname);
	                
	               // Cookie name = new Cookie("name", Name);
	                //Cookie sem = new Cookie("sem",Semester);
	               // Cookie croll = new Cookie("croll",ClassRoll);
	               // Cookie uroll = new Cookie("uroll",UniversityRoll);
	               // Cookie email = new Cookie("email",Emailid);
	               // Cookie dept = new Cookie("dept",Department);
	                //response.addCookie(name);
	               // response.addCookie(sem);
	                //response.addCookie(croll);
	                //response.addCookie(uroll);
	                //response.addCookie(email);
	                //response.addCookie(dept);
	                if(dept.equalsIgnoreCase("CSE"))
	                {

				 rd = request.getRequestDispatcher("CSE.html");
				//rd.forward(request, response);
               

			
			}
	                else if(dept.equalsIgnoreCase("ECE"))
	                {
	                	 rd = request.getRequestDispatcher("ECE.html");
	    				//rd.forward(request, response);
	                   

	                }
	                else if(dept.equalsIgnoreCase("IT"))
	                {
	                	 rd = request.getRequestDispatcher("IT.html");
	    				//rd.forward(request, response);
	                   

	                }
	               
	                rd.forward(request, response);
	                
			}
	                else {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Invalid Details! Try Again');");
				out.println("window.location.href = 'marks.html';");

				out.println("</script>");

				// response.sendRedirect(type)

				// doGet(request, response);
			}
		} catch (Exception e2) {
			System.out.println(e2);
		}

	}
}