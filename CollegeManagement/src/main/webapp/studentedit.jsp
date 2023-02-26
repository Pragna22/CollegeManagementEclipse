<%@ page import="Database.jdbcutil" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit</title>
  <link rel="stylesheet" href="navbar.css">
  <style>
    .topnav,#home a{
                 background-color: #008b8b;
                 overflow: hidden;
                }
	h1{
		text-align: center;
	}
	body{
		background-color: lightpink;
		font-family: 'Arial';
		padding: 20px;
	}
  h4{
        text-decoration: underline;
       } 
       .det{
        text-align: center;
            background-color: lightgoldenrodyellow;
            color: black;
            padding: 5px 10px 10px 10px;
                margin: 20px 10px 0px 530px;
                text-align: center;
                width: 400px;
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
                  margin-left: 1.8cm;
                }
                .logo{
                  float: left;
                }
                table,th,td{
border: 1px solid black;
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
   <a href="#Notice">Notice Board</a>
   <!--<a href="#club" target="_blank">Extracurricular</a>-->
   
   <a href="courses.html" target="_blank">Streams</a>
   <a href="#gallery">Gallery</a>
   <a href="contact.html">Contact</a>
   <a href="About.html" class="hre">About</a> 
   </div><br>
   <%
   Connection conn = null;
   PreparedStatement ps = null;
   ResultSet rs = null;
 conn = jdbcutil.getConnection();
   String uid= request.getParameter("uid");
   String sql = "Select fname,lname,email from users where uid=?";
   ps=conn.prepareStatement(sql);
   ps.setString(1,uid);
  rs= ps.executeQuery();
  while(rs.next())
  {
	  pageContext.setAttribute("fname",  rs.getString("fname"));
	  pageContext.setAttribute("lname",  rs.getString("lname"));
	  pageContext.setAttribute("email",  rs.getString("email"));
	  
  }
   
   
   %>
   <div>
   
    <table class="table table-bordered">
        <tr>
          <th width="30%">Name </th>
          <td width="2">:<%= pageContext.getAttribute("fname")%> <%= pageContext.getAttribute("lname")%> </td>
          
          </tr>
           <tr>
          <th width="2%">Email </th>
          <td width="20%">:<%= pageContext.getAttribute("email") %></td>
          </tr>
           <tr>
          <th width="2%">UID </th>
          <td width="20%">: <%= request.getParameter("uid")%></td>
         
          </tr>
          </table><br><br>
          </div>
   <h1><b>ADD/EDIT DETAILS </b></h1>
   <div class="det">
    <form id="details" method="Post" action="Stu_Details">
        <div><label><b>Father's Name:</b></label>  
        <input type="text" name="fname" placeholder="Enter your name father's name"></div>
		<div><br>
		<label><b>Mother's Name:</b></label>  
        <input type="text" name="mname" placeholder="Enter your name mother's name">
		</div>
    <div><br>
      <label><b>Address :</b></label>  
      <input type="text" name="address" placeholder="Enter your address">
      </div>
      <div><br>
        <label><b>Blood Group :</b></label>  
        <input type="text" name="b_group" placeholder="Enter your blood group">
        </div>
        <div><br>
            <label><b>Email id :</b></label>  
            <input type="email" name="email" placeholder="Enter your Email id">
            </div>
            <div><br>
             <div><br>
            <label><b>Phone Number :</b></label>  
            <input type="text" name="phn" placeholder="Enter your Phone Number">
            </div>
            <div><br>
              <label for="type">Department:</label>
              <br>
              <select id="type" name="dept">
                  <option value="CSE">CSE</option>
                  <option value="ECE">ECE</option>
                  <option value="IT">IT</option>
           
              </select>  
              <br>
              </div>
		<br>
        <button type="submit">S U B M I T </button>
                    <button type="reset">R E S E T</button>
    </form>
    
   </div>

   <br>
   <script>
    let changePassword= confirm("Add or Edit some details ");
  </script>
</body>
</html>