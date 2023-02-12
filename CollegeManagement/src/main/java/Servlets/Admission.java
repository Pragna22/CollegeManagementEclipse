package Servlets;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
//import Dao.UploadFileDao;
import Database.jdbcutil;

/**
 * Servlet implementation class register
 */
@WebServlet("/Admission")
@MultipartConfig

public class Admission extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Admission UploadFileDao = null;
	private PrintWriter out;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admission() {
		super();
		// TODO Auto-generated constructor stub
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		
		int i=0;
		
		  	Part rankpdf = request.getPart("rankpdf");
	        //String fileName = filePart.getSubmittedFileName();
	        InputStream rankfileContent = rankpdf.getInputStream();
	        int rnk = rankfileContent.read();
	        
	        Part cardpdf = request.getPart("cardpdf");
	        //String fileName = filePart.getSubmittedFileName();
	        InputStream cardfileContent = cardpdf.getInputStream();
	        int crd=cardfileContent.read();
	        
	        Part markpdf = request.getPart("markpdf");
	        //String fileName = filePart.getSubmittedFileName();
	        InputStream markfileContent = markpdf.getInputStream();
	        int mrk=markfileContent.read();
		
		String uname = request.getParameter("uname");
		String gname = request.getParameter("gname");
		String mob = request.getParameter("mob");
		String email = request.getParameter("email");
		String ranks = request.getParameter("ranks");
		//Part rankpdf = request.getPart("rankpdf");
		String card = request.getParameter("card");
		//Part cardpdf = request.getPart("cardpdf");
		String dob = request.getParameter("dob");
		String MyGender = request.getParameter("MyGender");
		String Mycaste = request.getParameter("Mycaste");
		String mydisable = request.getParameter("mydisable");
		String math = request.getParameter("math");
		String physics = request.getParameter("physics");
		String chem = request.getParameter("chem");
		String comp = request.getParameter("comp");
		//Part markpdf = request.getPart("markpdf");
		String department = request.getParameter("department");
		String MyText = request.getParameter("MyText");

		try {
			
			Connection con = jdbcutil.getConnection();
			
			System.out.println("uname: " + uname);
			System.out.println("gname: " + gname);
			System.out.println("mob: " + mob);
			System.out.println("email: " + email);
			System.out.println("ranks: " + ranks);
			//System.out.println("rankpdf: " + rankpdf);
			System.out.println("card: " + card);
			//System.out.println("cardpdf: " + cardpdf);
			System.out.println("dob: " + dob);
			System.out.println("MyGender: " + MyGender);
			System.out.println("Mycaste: " + Mycaste);
			System.out.println("mydisable: " + mydisable);
			System.out.println("math: " + math);
			System.out.println("physics: " + physics);
			System.out.println("chem: " + chem);
			System.out.println("comp: " + comp);
			//System.out.println("markpdf: " + markpdf);
			System.out.println("department: " + department);
			System.out.println("MyText: " + MyText);
			/*try
			{
				 while (mrk != -1 && rnk != -1 && crd != -1 ) {
				        System.out.print((char) mrk);
				        System.out.print((char) rnk);
				        
				         crd=cardfileContent.read();
				        
				         rnk = rankfileContent.read();

				        
				         mrk=markfileContent.read();
				      }
			}
			catch (Exception e)
			{
				System.out.println(e);
			}*/

			
			PreparedStatement ps = con.prepareStatement("insert into admission values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, uname);
			ps.setString(2, gname);
			ps.setString(3, mob);
			ps.setString(4, email);
			ps.setString(5, ranks);
			ps.setBinaryStream(6, rankfileContent);
			ps.setString(7, card);
			ps.setBinaryStream(8, cardfileContent);
			ps.setString(9, dob);
			ps.setString(10, MyGender);
			ps.setString(11, Mycaste);
			ps.setString(12, mydisable);
			ps.setString(13, math);
			ps.setString(14, physics);
			ps.setString(15, chem);
			ps.setString(16, comp);
			ps.setBinaryStream(17, markfileContent);
			ps.setString(18, department);
			ps.setString(19, MyText);



		


			i= ps.executeUpdate();
			if (i>0) {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Thank you for showing your interest in Future Institue of Engineering and Management. We will notify you about your selection via an email. Please keep an eye on the provided email address');");
				out.println("window.location.href = 'index.html';");

				out.println("</script>");

			}
			// request.getRequestDispatcher ("Welcome1").include (request, response);
			else {

				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('Something Went Wrong! Try Again');");
				out.println("window.location.href = 'index.html';");

				out.println("</script>");

			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
	







