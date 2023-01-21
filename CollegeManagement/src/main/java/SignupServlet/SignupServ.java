package SignupServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/SignupServ")
public class SignupServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstname=request.getParameter("fname");
		String lastname=request.getParameter("lname");
		String emailid=request.getParameter("email");
		String upass=request.getParameter("pass");
		PrintWriter out= response.getWriter();
		
			out.println("Welcome ");
			out.println(firstname);
			out.println(lastname);
			out.println(emailid);
			out.println(upass);
		
		//doGet(request, response);
	}

}
