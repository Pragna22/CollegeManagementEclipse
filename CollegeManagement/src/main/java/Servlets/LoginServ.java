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
import javax.servlet.http.HttpSession;

import Database.jdbcutil;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter out;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServ() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			RequestDispatcher rd = null;
			Connection con = jdbcutil.getConnection();
			String user = request.getParameter("Uname");
			String pass = request.getParameter("Pass");
			String type = request.getParameter("type");
			//String uid = request.getParameter("uid");
			PreparedStatement ps = con
					.prepareStatement("select email,pass,type from users where email=? and pass=? and type=?");
			
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.setString(3, type);
			//ps.setString(4, uid);
			System.out.println(user);
			System.out.println(pass);
			System.out.println(type);
			
			ResultSet rs = ps.executeQuery();
			
			PreparedStatement disp = con
					.prepareStatement("select fname,lname from users where email=? and pass=? and type=?");
			disp.setString(1, user);
			disp.setString(2, pass);
			disp.setString(3, type);
			//disp.setString(4, uid);
			ResultSet disp_res = disp.executeQuery();
			
			if (rs.next() && disp_res.next()) {
				 String firstname = disp_res.getString("fname");
	                String lastname = disp_res.getString("lname");
	                
	                //HttpSession session = request.getSession();
	               // request.setAttribute("fname",firstname);
	                //request.setAttribute("lname",lastname);
	                
	                Cookie fname = new Cookie("fname", firstname);
	                Cookie lname = new Cookie("lname",lastname);
	                Cookie email = new Cookie("email",user);
	                
	                response.addCookie(fname);
	                response.addCookie(lname);
	                response.addCookie(email);
	                if(type.equalsIgnoreCase("student"))
	                {

				 rd = request.getRequestDispatcher("Student.jsp");
				//rd.forward(request, response);
               

			
			}
	                else if(type.equalsIgnoreCase("faculty"))
	                {
	                	 rd = request.getRequestDispatcher("faculty.jsp");
	    				//rd.forward(request, response);
	                   

	                }
	                else if(type.equalsIgnoreCase("admin"))
	                {
	                	 rd = request.getRequestDispatcher("admin.jsp");
	    				//rd.forward(request, response);
	                   

	                }
	                rd.forward(request, response);
	                    
			}
	                else {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Invalid Details! Try Again');");
				out.println("window.location.href = 'login.html';");

				out.println("</script>");

				// response.sendRedirect(type)

				// doGet(request, response);
			}
		} catch (Exception e2) {
			System.out.println(e2);
		}

	}
}
