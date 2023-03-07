<%@ page import="java.sql.*" %>
<%@ page import="Database.jdbcutil" %>
<%@ page import=" gettersetter.Ece_Marks" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.servlet.http.Cookie" %>

  <%
//String email = "";
 String user_uid="";
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
	  response.sendRedirect("s_cse.jsp");
}
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
  ArrayList<Ece_Marks> ecemarks = new ArrayList<Ece_Marks>();
  //ArrayList<UID> detailsLists = new ArrayList<UID>();


  try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    //conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
    conn= jdbcutil.getConnection();
    statement = conn.prepareStatement("SELECT *  FROM marks2  where uid= "+user_uid);
    statement1 = conn.prepareStatement("SELECT uid FROM users where uid= "+user_uid);
	System.out.println("query 1 is "+statement);
	System.out.println("query 2 is "+statement1);
    resultSet = statement.executeQuery();
    resultSet1 = statement1.executeQuery();
    
	
    if (resultSet.next() && resultSet1.next()) {
       //Marks ob = new Marks();
	Ece_Marks ob = new Ece_Marks("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x","y");

	ob.setUid(resultSet.getString("uid"));
	ob.setCs1(resultSet.getString("cs1"));
	ob.setCs2(resultSet.getString("cs2"));
	ob.setCs3(resultSet.getString("cs3"));
	ob.setCs4(resultSet.getString("cs4"));
	ob.setCn1(resultSet.getString("cn1"));
	ob.setCn2(resultSet.getString("cn2"));
	ob.setCn3(resultSet.getString("cn3"));
	ob.setCn4(resultSet.getString("cn4"));
	ob.setDs1(resultSet.getString("ds1"));
	ob.setDs2(resultSet.getString("ds2"));
	ob.setDs3(resultSet.getString("ds3"));
	ob.setDs4(resultSet.getString("ds4"));
	ob.setMb1(resultSet.getString("mb1"));
	ob.setMb2(resultSet.getString("mb2"));
	ob.setMb3(resultSet.getString("mb3"));
	ob.setMb4(resultSet.getString("mb4"));
	ob.setOs1(resultSet.getString("os1"));
	ob.setOs2(resultSet.getString("os2"));
	ob.setOs3(resultSet.getString("os3"));
	ob.setOs4(resultSet.getString("os4"));
	ob.setCsp1(resultSet.getString("csp1"));
	ob.setCsp2(resultSet.getString("csp2"));
	ob.setCnp1(resultSet.getString("cnp1"));
	ob.setCnp2(resultSet.getString("cnp2"));

    	ecemarks.add(ob);
      
    
    }
    
    //System.out.println("uid is "+resultSet1.getString("uid"));
   request.setAttribute("ecemarks", ecemarks);
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
    <title>eced</title>
    <link rel="stylesheet" href="navbar.css">
</head>
<style>
    .topnav,#home a{
                 background-color: #008b8b;
                 overflow: hidden;
                }
    table, th, td {
      border:1px solid black;
    }
    h3{
        background-color: aqua;
        color: brown;
        width: 300px;
        margin: 0px 680px 0px 40px;
        padding-left: 10px;
    }
    body{
        background-color: lightpink;
    }
    .collapsible {
    color: darkblue;
    background-color: lightcoral;
  cursor: pointer;
  padding: 18px;
  width: 200px;
  border: none;
  text-align: center;
  outline: none;
  font-size: 15px;
  margin: 4px;
}
.content {
  padding: 0 0px;
  width: 650px;
  margin-right: 510px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
  text-align: center;
}
.logo{
        float: left;
    }
    
    </style>
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
    
    <button type="button" class="collapsible"><b>CA MARKS DETAILS</b></button>
	<div class="content">
    <table >
        <tr>
            <th>Paper Code(Unique Code)</th>
              <th>Paper Name</th>
              <th>CA 1</th>
              <th>CA 2</th>
              <th>CA 3</th>
              <th>CA 4</th>
        </tr>
        <br>
        <tr>
            <td>EC601(6277)</td>
            <td>Control System and Instrumentation</td>
              <td>   <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCs1() %>

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
              <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCs2() %>

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
              <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCs3() %>

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
              <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCs4() %>

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
            <td>EC602(6296)</td>
              <td>COMPUTER NETWORKS</td>
            <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCn1() %>

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
            <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCn2() %>

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
            <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCn3() %>

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
            <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCn4() %>

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
      </tr><br>
      <tr>
        <td>HS-HU 601(6570)</td>
              <td>DISTRIBUTED SYSTEMS</td>
        <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getDs1() %>

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
        <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getDs2() %>

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
        <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getDs3() %>

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
        <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getDs4() %>

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
  </tr><br>
  <tr>
    <td>PE-EC603B(6486)</td>
    <td>BIO-MEDICAL ELECTRONICS</td>
    <td><%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getMb1() %>

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
        <td> <%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getMb2() %>

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
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getMb3() %>

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
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getMb4() %>

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
  </tr><br>
  <tr>
    <td>OEC-EC604B(6593)</td>
    <td>OPERATING SYSTEMS</td>
    <td><%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getOs1() %>

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
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getOs2() %>

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
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getOs3() %>

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
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getOs4() %>

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
        </div><br><br>
        <button type="button" class="collapsible"><b>PCA MARKS DETAILS</b></button>
	<div class="content">
        <table>
            <tr>
            <th>Paper Code(Unique Code)</th>
              <th>Paper Name</th>
              <th>PCA 1</th>
              <th>PCA 2</th>
            </tr><br>
            <tr>
                <td>EC-691</td>
              <td>Control System and Instrumentation</td>
              <td><%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCsp1() %>

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
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCsp2() %>

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
                <td>EC-692</td>
              <td>COMPUTER NETWORKS</td>
              <td><%
    try {
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCnp1() %>

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
      for (Ece_Marks mar : ecemarks) {
  %>
 
   
  <%= mar.getCnp2() %>

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
    </div>
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
            </script>
</body>
</html>