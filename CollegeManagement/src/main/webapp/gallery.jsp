<%@ page import="Database.jdbcutil" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.util.Base64" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery display</title>
    <link rel="stylesheet" href="navbar.css">
    <style>
        
        h1{
            text-align: center;
            color: darkblue;
            background-color: lightgoldenrodyellow;
            box-sizing: border-box;
            width: 600px;  
    		margin: auto;  
            margin: 20 0 0 450px;  
            padding: 80px;    
   		    padding: 10px;  
   		    border-radius: 15px ;
        }
        h1:hover{
            color: green;
            background-color: rgb(67, 208, 187);
        }
        
       
        input[type=text]{
            color: darkblue;
        } 
        
        .topnav,#home a{
  background-color: #008b8b;
  overflow: hidden;
}
        body{
            background-color: lightgreen;
             font-family: 'Arial';
             
             /* text-align: center; */
        }
        .gal {
  box-sizing: border-box;
				padding: 12px 20px;
				width: 682px;
				background-color:#eb83d1;
                text-align: center;
                margin: auto;
                margin: 20 0 0 450px;
                padding: 80px;
                padding: 20px;
                border-radius: 20px;
}
.collapsible {
 
            text-align: center;
            box-sizing: border-box;
  			background-color: rgb(93, 54, 234);
  			color: white;
            width: 272px;
            margin: auto;
                padding: 20px;
                padding: 20px;
                padding-bottom: 20px;
                border-radius: 20px;
                text-emphasis: bold;
                font-size: 0.42cm;
}

collapsible:hover {
  background-color: #555;
}


h1{
            text-align: center;
            color: darkblue;
            background-color: lightgoldenrodyellow;
            box-sizing: border-box;
            width: 600px;  
    		margin: auto;  
            margin: 20 0 0 450px;  
            padding: 80px;    
   		    padding: 10px;  
   		    border-radius: 15px ;
        }
        
    </style>
</head>
<body>
    <div id="logo">
        <img src="fiem.jpg">
      </div>
      
      <div id="home">
         <a href="index.html">Home</a>
      </div>
     <div class="topnav">
    
      
      <a href="login.html" target="_blank">Login/Signup</a>
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
      <a href="About.html">About</a> 
      </div> <br>
        <br>
   
        </div>
        <br>
        <h1>Gallery</h1>
        <br><br>
<%
Connection connection = jdbcutil.getConnection();
PreparedStatement statement = connection.prepareStatement("SELECT data FROM images");
ResultSet resultSet = statement.executeQuery();

while (resultSet.next()) {
  // Get the binary data from the result set
  Blob blob = resultSet.getBlob("data");
  byte[] imageBytes = blob.getBytes(1, (int) blob.length());

  // Convert the binary data to a base64 string
  String base64Image = Base64.getEncoder().encodeToString(imageBytes);

  // Display the image
  %>
  <img src="data:image/jpeg;base64,<%= base64Image %>" style="width: 300px; height: 200px;" alt="Image">
  <%
}

resultSet.close();
statement.close();
connection.close();
%>

        
</body>
</html>
