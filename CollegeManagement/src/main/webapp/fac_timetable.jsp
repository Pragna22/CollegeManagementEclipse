<%@ page import="java.sql.*" %>
<%@ page import="Database.jdbcutil" %>
<%@ page import=" gettersetter.Timetable" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.servlet.http.Cookie" %>

<%

 /*String user_uid="";
Cookie[] cookies = request.getCookies();
if (cookies != null) {
  for (Cookie cookie : cookies) {
    if (cookie.getName().equals("uid")) {
    	user_uid = cookie.getValue();
      break;
      }
    
}
  user_uid = "\"" + user_uid + "\"";
  System.out.println("UID is "+user_uid);

}
else
{
	System.out.println("Cookie is null");
	  response.sendRedirect("fac_timetable.jsp");
}*/

String user_uid=request.getParameter("uid");

  Connection conn = null;
  PreparedStatement statement = null;
  ResultSet resultSet = null;
  Connection conn1 = null;
  PreparedStatement statement1 = null;
  ResultSet resultSet1 = null;
  //final String DRIVER = "com.mysql.cj.jdbc.Driver";
  //final String URL = "jdbc:mysql://127.0.0.1:3306/college_project";
   //final String USERNAME = "root";
   //final String PASSWORD = "Pragna@05";
  ArrayList<Timetable> facultytimetable = new ArrayList<Timetable>();
  //ArrayList<UID> detailsLists = new ArrayList<UID>();


  try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    //conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
    conn= jdbcutil.getConnection();
    statement = conn.prepareStatement("SELECT *  FROM timetable  where uid= "+user_uid);
    statement1 = conn.prepareStatement("SELECT uid FROM users where uid= "+user_uid);
	System.out.println("query 1 is "+statement);
	System.out.println("query 2 is "+statement1);
    resultSet = statement.executeQuery();
    resultSet1 = statement1.executeQuery();
    
	
    if (resultSet.next() && resultSet1.next()) {
       //Marks ob = new Marks();
	Timetable ob = new Timetable("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k");

       ob.setUid(resultSet.getString("uid"));
       ob.setMs(resultSet.getString("ms"));
       ob.setMt(resultSet.getString("mt"));
       ob.setTus(resultSet.getString("tus"));
       ob.setTut(resultSet.getString("tut"));
       ob.setWs(resultSet.getString("ws"));
       ob.setWt(resultSet.getString("wt"));
       ob.setThs(resultSet.getString("ths"));
       ob.setTht(resultSet.getString("tht"));
       ob.setFs(resultSet.getString("fs"));
       ob.setFt(resultSet.getString("ft"));
       

    	facultytimetable.add(ob);
      
    
    }
    
    //System.out.println("uid is "+resultSet1.getString("uid"));
   request.setAttribute("facultytimetable", facultytimetable);
	//request.setAttribute("detailsLists", detailsLists);
  }

  catch (Exception e) {
    e.printStackTrace();
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TIMETABLE</title>
  <link rel="stylesheet" href="navbar.css">
  <style>
    .topnav,#home a{
                 background-color: #008b8b;
                 overflow: hidden;
                }

	body{
		background-image: linear-gradient(to right, #c6ffdd, #fbd786, #f7797d);
		 background-attachment: fixed;
         background-repeat: no-repeat;
		font-family: 'Arial';
	}
 
       .det{
        text-align: center;  
            color: black;
            padding: 0px 10px 10px 100px;
                margin: 20px 10px 0px 190px;
                text-align: center;
                width: 1000px;
                border-radius: 10px;
       }
       button {
            text-align: center;
            box-sizing: border-box;
  			background-color: rgb(204, 38, 66);
  			color: white;
            width: 172px;
            margin: auto;
                padding: 10px;
                padding: 10px;
                padding-bottom: 10px;
                border-radius: 20px;
                text-emphasis: bold;
                font-size: 0.42cm;
                cursor: pointer;
        }
        h1{
                  text-align: center;
                  color: blue;
                  text-decoration: underline;
                  font-size: 1cm;
                  text-emphasis-style: none;
                  margin-left: 5px;
                }
                .logo{
                  float: left;
                }
                table, th, td {
  border:1px solid black;
  text-align: center;
}
table{
    width: 500px;
    text-align: center;
    margin-left: 190px;
}

  </style>
</head>
<body>
  <div id="logo">
		<img src="fiem.jpg">
	  </div><br>
    <div id="home">
      <a href="index.html">Home</a>
   </div>
  <div class="topnav">
 
   
   <a href="login.html" target="_blank">Logout</a>
   <div class="dropdown">
     <button class="dropbtn">Extracurricular
       <i class="fa fa-caret-down"></i>
     </button>
     <div class="dropdown-content">
       <a href="xplorica.html" target="_blank">Xplorica</a>
       <a href="culrav.html" target="_blank">Culrav</a>
       <a href="estrella-1.html" target="_blank">Estrella</a>
       <a href="sportivo.html" target="_blank">Sportivo</a>
     </div>
   </div>
   <a href="notice.jsp">Notice Board</a>
   <!--<a href="#club" target="_blank">Extracurricular</a>-->
   
   <a href="courses.html" target="_blank">Streams</a>
   <a href="gallery.jsp">Gallery</a>
   <a href="contact.html">Contact</a>
   <a href="About.html" class="hre">About</a> 
   </div><br>
   <h1><b>TIMETABLE</b></h1>
   <div class="det">
        <table >
        <tr>
            <th>Day</th>
              <th>Subject</th>
              <th>Time</th>
        </tr>
        <br>
        <tr>
              <td>Monday</td>
             
              <td>             <%
    try {
      for (Timetable time : facultytimetable) {
  %>
 
   
  <%= time.getMs() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %>
              </td>
              <td>  <%
    try {
      for (Timetable time : facultytimetable) {
  %>
 
   
  <%= time.getMt() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
              
        </tr>
        <br>
        <tr>
            <td>Tuesday</td>
            <td>  <%
    try {
      for (Timetable time : facultytimetable) {
  %>
 
   
  <%= time.getTus() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
            <td><%
    try {
      for (Timetable time : facultytimetable) {
  %>
 
   
  <%= time.getTut() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
            <br>
      <tr>
        <td>Wednesday</td>
        
        <td><%
    try {
      for (Timetable time : facultytimetable) {
  %>
 
   
  <%= time.getWs() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
        <td><%
    try {
      for (Timetable time : facultytimetable) {
  %>
 
   
  <%= time.getWt() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
        <br>
  <tr>
    <td>Thursday</td>
   
    <td><%
    try {
      for (Timetable time : facultytimetable) {
  %>
 
   
  <%= time.getThs() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
        <td><%
    try {
      for (Timetable time : facultytimetable) {
  %>
 
   
  <%= time.getTht() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
        <br>
  <tr>
    <td>Friday</td>
   
    <td><%
    try {
      for (Timetable time : facultytimetable) {
  %>
 
   
  <%= time.getFs() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
        <td><%
    try {
      for (Timetable time : facultytimetable) {
  %>
 
   
  <%= time.getFt() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
        
  </tr>
          </table>

</body>
</html>