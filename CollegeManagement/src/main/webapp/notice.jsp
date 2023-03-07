<%@ page import="Database.jdbcutil" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notice Board display</title>
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
        .not {
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
     <!-- < enctype="multipart/form-data"></enctype> -->
      </div> <br>
        <br>
   
        </div>
        <br>
        <h1>Notice board</h1>
        <br><br>
        <div class="not">
        
<marquee>
 <%
	try{
		// Connect to the database
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = jdbcutil.getConnection();

		// Create a statement
		Statement stmt = conn.createStatement();

		// Execute the query
		ResultSet rs = stmt.executeQuery("SELECT message FROM notice order by id desc");

		// Loop through the result set and display the data
		while(rs.next()){
			out.print(">>" + rs.getString("message") + "<br>");
		}

		// Close the result set, statement, and connection
		rs.close();
		stmt.close();
		conn.close();
	}
	catch(Exception e){
		out.println("Exception: " + e.getMessage());
	}
%>
 </marquee>
        <script>
            var coll = document.getElementsByClassName("collapsible");
            var i;
            
            for (i = 0; i < coll.length; i++) {
              coll[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var content = this.nextElementSibling;
                if (content.style.display === "block") {
                  content.style.display = "none";
                } else {
                  content.style.display = "block";
                }
              });
            }
           

            //  var loadFile = function (event) {
            //  var image = document.getElementById("output");
            //  image.src = URL.createObjectURL(event.target.files[0]);
            // };

            </script>
        
</body>
</html>
