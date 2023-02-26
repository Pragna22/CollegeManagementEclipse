package Servlets;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Database.jdbcutil;

/**
 * Servlet implementation class gallery_upload
 */
@WebServlet("/gallery_upload")
@MultipartConfig
public class gallery_upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gallery_upload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// Get the file data from the request
		Part filePart = request.getPart("file");
		InputStream fileInputStream = filePart.getInputStream();
		// Insert the file data into the database
		try {
		Connection con = jdbcutil.getConnection();

		PreparedStatement statement;
		
			statement = con.prepareStatement("INSERT INTO images (data) VALUES (?)");
			statement.setBinaryStream(1, fileInputStream);
			statement.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("galleryedit.jsp");
		rd.forward(request, response);
		
		

	}

}
