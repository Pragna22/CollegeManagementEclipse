<!-- upload.jsp -->
<%@ page import="java.io.*, javax.servlet.http.*, javax.servlet.*" %>
<%@ page import="Database.jdbcutil" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    Object uid = pageContext.getAttribute("user_uid");
String uiser_uid=uid.toString();// Change this to the user's ID
    String fileName = "profile.jpg";
    Part filePart = request.getPart("picture");
    InputStream fileContent = filePart.getInputStream();

    try {
        // Load the database driver and connect to the database
       
        Connection con = jdbcutil.getConnection();

        // Check if the user already has a profile picture
        PreparedStatement checkStatement = con.prepareStatement("SELECT COUNT(*) FROM profile_pictures WHERE user_id = ?");
        checkStatement.setString(1, "user_uid");
        ResultSet checkResult = checkStatement.executeQuery();
        checkResult.next();
        int rowCount = checkResult.getInt(1);

        // Insert or update the profile picture
        if (rowCount > 0) {
            PreparedStatement updateStatement = con.prepareStatement("UPDATE profile_pictures SET picture = ? WHERE user_id = ?");
            updateStatement.setBinaryStream(1, fileContent);
            updateStatement.setString(2, "user_uid");
            updateStatement.executeUpdate();
        } else {
            PreparedStatement insertStatement = con.prepareStatement("INSERT INTO profile_pictures (user_id, picture) VALUES (?, ?)");
            insertStatement.setString(1, "user_uid");
            insertStatement.setBinaryStream(2, fileContent);
            insertStatement.executeUpdate();
        }

        // Close the database connection
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<meta http-equiv="refresh" content="0; URL=profile.jsp">
